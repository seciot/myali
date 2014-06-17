package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.KeyEventCompat;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewGroupCompat;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;

public class DrawerLayout extends ViewGroup
{
  private static final boolean ALLOW_EDGE_LOCK = false;
  private static final int DEFAULT_SCRIM_COLOR = -1728053248;
  private static final int[] LAYOUT_ATTRS = { 16842931 };
  public static final int LOCK_MODE_LOCKED_CLOSED = 1;
  public static final int LOCK_MODE_LOCKED_OPEN = 2;
  public static final int LOCK_MODE_UNLOCKED = 0;
  private static final int MIN_DRAWER_MARGIN = 64;
  private static final int MIN_FLING_VELOCITY = 400;
  private static final int PEEK_DELAY = 160;
  public static final int STATE_DRAGGING = 1;
  public static final int STATE_IDLE = 0;
  public static final int STATE_SETTLING = 2;
  private static final String TAG = "DrawerLayout";
  private boolean mChildrenCanceledTouch;
  private boolean mDisallowInterceptRequested;
  private int mDrawerState;
  private boolean mFirstLayout = true;
  private boolean mInLayout;
  private float mInitialMotionX;
  private float mInitialMotionY;
  private final DrawerLayout.ViewDragCallback mLeftCallback;
  private final ViewDragHelper mLeftDragger;
  private DrawerLayout.DrawerListener mListener;
  private int mLockModeLeft;
  private int mLockModeRight;
  private int mMinDrawerMargin;
  private final DrawerLayout.ViewDragCallback mRightCallback;
  private final ViewDragHelper mRightDragger;
  private int mScrimColor = -1728053248;
  private float mScrimOpacity;
  private Paint mScrimPaint = new Paint();
  private Drawable mShadowLeft;
  private Drawable mShadowRight;

  public DrawerLayout(Context paramContext)
  {
    this(paramContext, null);
  }

  public DrawerLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public DrawerLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    float f1 = getResources().getDisplayMetrics().density;
    this.mMinDrawerMargin = ((int)(0.5F + 64.0F * f1));
    float f2 = f1 * 400.0F;
    this.mLeftCallback = new DrawerLayout.ViewDragCallback(this, 3);
    this.mRightCallback = new DrawerLayout.ViewDragCallback(this, 5);
    this.mLeftDragger = ViewDragHelper.create(this, 0.5F, this.mLeftCallback);
    this.mLeftDragger.setEdgeTrackingEnabled(1);
    this.mLeftDragger.setMinVelocity(f2);
    this.mLeftCallback.setDragger(this.mLeftDragger);
    this.mRightDragger = ViewDragHelper.create(this, 0.5F, this.mRightCallback);
    this.mRightDragger.setEdgeTrackingEnabled(2);
    this.mRightDragger.setMinVelocity(f2);
    this.mRightCallback.setDragger(this.mRightDragger);
    setFocusableInTouchMode(true);
    ViewCompat.setAccessibilityDelegate(this, new DrawerLayout.AccessibilityDelegate(this));
    ViewGroupCompat.setMotionEventSplittingEnabled(this, false);
  }

  private View findVisibleDrawer()
  {
    int i = getChildCount();
    for (int j = 0; j < i; j++)
    {
      View localView = getChildAt(j);
      if ((isDrawerView(localView)) && (isDrawerVisible(localView)))
        return localView;
    }
    return null;
  }

  static String gravityToString(int paramInt)
  {
    if ((paramInt & 0x3) == 3)
      return "LEFT";
    if ((paramInt & 0x5) == 5)
      return "RIGHT";
    return Integer.toHexString(paramInt);
  }

  private static boolean hasOpaqueBackground(View paramView)
  {
    Drawable localDrawable = paramView.getBackground();
    boolean bool = false;
    if (localDrawable != null)
    {
      int i = localDrawable.getOpacity();
      bool = false;
      if (i == -1)
        bool = true;
    }
    return bool;
  }

  private boolean hasPeekingDrawer()
  {
    int i = getChildCount();
    for (int j = 0; j < i; j++)
      if (((DrawerLayout.LayoutParams)getChildAt(j).getLayoutParams()).isPeeking)
        return true;
    return false;
  }

  private boolean hasVisibleDrawer()
  {
    return findVisibleDrawer() != null;
  }

  void cancelChildViewTouch()
  {
    int i = 0;
    if (!this.mChildrenCanceledTouch)
    {
      long l = SystemClock.uptimeMillis();
      MotionEvent localMotionEvent = MotionEvent.obtain(l, l, 3, 0.0F, 0.0F, 0);
      int j = getChildCount();
      while (i < j)
      {
        getChildAt(i).dispatchTouchEvent(localMotionEvent);
        i++;
      }
      localMotionEvent.recycle();
      this.mChildrenCanceledTouch = true;
    }
  }

  boolean checkDrawerViewGravity(View paramView, int paramInt)
  {
    return (paramInt & getDrawerViewGravity(paramView)) == paramInt;
  }

  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return ((paramLayoutParams instanceof DrawerLayout.LayoutParams)) && (super.checkLayoutParams(paramLayoutParams));
  }

  public void closeDrawer(int paramInt)
  {
    int i = GravityCompat.getAbsoluteGravity(paramInt, ViewCompat.getLayoutDirection(this));
    View localView = findDrawerWithGravity(i);
    if (localView == null)
      throw new IllegalArgumentException("No drawer view found with absolute gravity " + gravityToString(i));
    closeDrawer(localView);
  }

  public void closeDrawer(View paramView)
  {
    if (!isDrawerView(paramView))
      throw new IllegalArgumentException("View " + paramView + " is not a sliding drawer");
    if (this.mFirstLayout)
    {
      DrawerLayout.LayoutParams localLayoutParams = (DrawerLayout.LayoutParams)paramView.getLayoutParams();
      localLayoutParams.onScreen = 0.0F;
      localLayoutParams.knownOpen = false;
    }
    while (true)
    {
      invalidate();
      return;
      if (checkDrawerViewGravity(paramView, 3))
        this.mLeftDragger.smoothSlideViewTo(paramView, -paramView.getWidth(), paramView.getTop());
      else
        this.mRightDragger.smoothSlideViewTo(paramView, getWidth(), paramView.getTop());
    }
  }

  public void closeDrawers()
  {
    closeDrawers(false);
  }

  void closeDrawers(boolean paramBoolean)
  {
    int i = getChildCount();
    int j = 0;
    boolean bool = false;
    if (j < i)
    {
      View localView = getChildAt(j);
      DrawerLayout.LayoutParams localLayoutParams = (DrawerLayout.LayoutParams)localView.getLayoutParams();
      if ((isDrawerView(localView)) && ((!paramBoolean) || (localLayoutParams.isPeeking)))
      {
        int k = localView.getWidth();
        if (!checkDrawerViewGravity(localView, 3))
          break label104;
        bool |= this.mLeftDragger.smoothSlideViewTo(localView, -k, localView.getTop());
      }
      while (true)
      {
        localLayoutParams.isPeeking = false;
        j++;
        break;
        label104: bool |= this.mRightDragger.smoothSlideViewTo(localView, getWidth(), localView.getTop());
      }
    }
    this.mLeftCallback.removeCallbacks();
    this.mRightCallback.removeCallbacks();
    if (bool)
      invalidate();
  }

  public void computeScroll()
  {
    int i = getChildCount();
    float f = 0.0F;
    for (int j = 0; j < i; j++)
      f = Math.max(f, ((DrawerLayout.LayoutParams)getChildAt(j).getLayoutParams()).onScreen);
    this.mScrimOpacity = f;
    if ((this.mLeftDragger.continueSettling(true) | this.mRightDragger.continueSettling(true)))
      ViewCompat.postInvalidateOnAnimation(this);
  }

  void dispatchOnDrawerClosed(View paramView)
  {
    DrawerLayout.LayoutParams localLayoutParams = (DrawerLayout.LayoutParams)paramView.getLayoutParams();
    if (localLayoutParams.knownOpen)
    {
      localLayoutParams.knownOpen = false;
      if (this.mListener != null)
        this.mListener.onDrawerClosed(paramView);
      sendAccessibilityEvent(32);
    }
  }

  void dispatchOnDrawerOpened(View paramView)
  {
    DrawerLayout.LayoutParams localLayoutParams = (DrawerLayout.LayoutParams)paramView.getLayoutParams();
    if (!localLayoutParams.knownOpen)
    {
      localLayoutParams.knownOpen = true;
      if (this.mListener != null)
        this.mListener.onDrawerOpened(paramView);
      paramView.sendAccessibilityEvent(32);
    }
  }

  void dispatchOnDrawerSlide(View paramView, float paramFloat)
  {
    if (this.mListener != null)
      this.mListener.onDrawerSlide(paramView, paramFloat);
  }

  protected boolean drawChild(Canvas paramCanvas, View paramView, long paramLong)
  {
    int i = getHeight();
    boolean bool1 = isContentView(paramView);
    int j = getWidth();
    int k = paramCanvas.save();
    int m = 0;
    int i10;
    View localView;
    int i12;
    if (bool1)
    {
      int i9 = getChildCount();
      i10 = 0;
      if (i10 < i9)
      {
        localView = getChildAt(i10);
        if ((localView != paramView) && (localView.getVisibility() == 0) && (hasOpaqueBackground(localView)) && (isDrawerView(localView)) && (localView.getHeight() >= i))
          if (checkDrawerViewGravity(localView, 3))
          {
            i12 = localView.getRight();
            if (i12 <= m)
              break label489;
          }
      }
    }
    while (true)
    {
      m = i12;
      int i11 = j;
      while (true)
      {
        i10++;
        j = i11;
        break;
        i11 = localView.getLeft();
        if (i11 >= j)
          i11 = j;
      }
      paramCanvas.clipRect(m, 0, j, getHeight());
      int n = j;
      boolean bool2 = super.drawChild(paramCanvas, paramView, paramLong);
      paramCanvas.restoreToCount(k);
      if ((this.mScrimOpacity > 0.0F) && (bool1))
      {
        int i8 = (int)(((0xFF000000 & this.mScrimColor) >>> 24) * this.mScrimOpacity) << 24 | 0xFFFFFF & this.mScrimColor;
        this.mScrimPaint.setColor(i8);
        paramCanvas.drawRect(m, 0.0F, n, getHeight(), this.mScrimPaint);
      }
      do
      {
        return bool2;
        if ((this.mShadowLeft != null) && (checkDrawerViewGravity(paramView, 3)))
        {
          int i5 = this.mShadowLeft.getIntrinsicWidth();
          int i6 = paramView.getRight();
          int i7 = this.mLeftDragger.getEdgeSize();
          float f2 = Math.max(0.0F, Math.min(i6 / i7, 1.0F));
          this.mShadowLeft.setBounds(i6, paramView.getTop(), i5 + i6, paramView.getBottom());
          this.mShadowLeft.setAlpha((int)(255.0F * f2));
          this.mShadowLeft.draw(paramCanvas);
          return bool2;
        }
      }
      while ((this.mShadowRight == null) || (!checkDrawerViewGravity(paramView, 5)));
      int i1 = this.mShadowRight.getIntrinsicWidth();
      int i2 = paramView.getLeft();
      int i3 = getWidth() - i2;
      int i4 = this.mRightDragger.getEdgeSize();
      float f1 = Math.max(0.0F, Math.min(i3 / i4, 1.0F));
      this.mShadowRight.setBounds(i2 - i1, paramView.getTop(), i2, paramView.getBottom());
      this.mShadowRight.setAlpha((int)(255.0F * f1));
      this.mShadowRight.draw(paramCanvas);
      return bool2;
      label489: i12 = m;
    }
  }

  View findDrawerWithGravity(int paramInt)
  {
    int i = getChildCount();
    for (int j = 0; j < i; j++)
    {
      View localView = getChildAt(j);
      if ((0x7 & getDrawerViewGravity(localView)) == (paramInt & 0x7))
        return localView;
    }
    return null;
  }

  View findOpenDrawer()
  {
    int i = getChildCount();
    for (int j = 0; j < i; j++)
    {
      View localView = getChildAt(j);
      if (((DrawerLayout.LayoutParams)localView.getLayoutParams()).knownOpen)
        return localView;
    }
    return null;
  }

  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new DrawerLayout.LayoutParams(-1, -1);
  }

  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new DrawerLayout.LayoutParams(getContext(), paramAttributeSet);
  }

  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof DrawerLayout.LayoutParams))
      return new DrawerLayout.LayoutParams((DrawerLayout.LayoutParams)paramLayoutParams);
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams))
      return new DrawerLayout.LayoutParams((ViewGroup.MarginLayoutParams)paramLayoutParams);
    return new DrawerLayout.LayoutParams(paramLayoutParams);
  }

  public int getDrawerLockMode(int paramInt)
  {
    int i = GravityCompat.getAbsoluteGravity(paramInt, ViewCompat.getLayoutDirection(this));
    if (i == 3)
      return this.mLockModeLeft;
    if (i == 5)
      return this.mLockModeRight;
    return 0;
  }

  public int getDrawerLockMode(View paramView)
  {
    int i = getDrawerViewGravity(paramView);
    if (i == 3)
      return this.mLockModeLeft;
    if (i == 5)
      return this.mLockModeRight;
    return 0;
  }

  int getDrawerViewGravity(View paramView)
  {
    return GravityCompat.getAbsoluteGravity(((DrawerLayout.LayoutParams)paramView.getLayoutParams()).gravity, ViewCompat.getLayoutDirection(paramView));
  }

  float getDrawerViewOffset(View paramView)
  {
    return ((DrawerLayout.LayoutParams)paramView.getLayoutParams()).onScreen;
  }

  boolean isContentView(View paramView)
  {
    return ((DrawerLayout.LayoutParams)paramView.getLayoutParams()).gravity == 0;
  }

  public boolean isDrawerOpen(int paramInt)
  {
    View localView = findDrawerWithGravity(paramInt);
    if (localView != null)
      return isDrawerOpen(localView);
    return false;
  }

  public boolean isDrawerOpen(View paramView)
  {
    if (!isDrawerView(paramView))
      throw new IllegalArgumentException("View " + paramView + " is not a drawer");
    return ((DrawerLayout.LayoutParams)paramView.getLayoutParams()).knownOpen;
  }

  boolean isDrawerView(View paramView)
  {
    return (0x7 & GravityCompat.getAbsoluteGravity(((DrawerLayout.LayoutParams)paramView.getLayoutParams()).gravity, ViewCompat.getLayoutDirection(paramView))) != 0;
  }

  public boolean isDrawerVisible(int paramInt)
  {
    View localView = findDrawerWithGravity(paramInt);
    if (localView != null)
      return isDrawerVisible(localView);
    return false;
  }

  public boolean isDrawerVisible(View paramView)
  {
    if (!isDrawerView(paramView))
      throw new IllegalArgumentException("View " + paramView + " is not a drawer");
    return ((DrawerLayout.LayoutParams)paramView.getLayoutParams()).onScreen > 0.0F;
  }

  void moveDrawerToOffset(View paramView, float paramFloat)
  {
    float f = getDrawerViewOffset(paramView);
    int i = paramView.getWidth();
    int j = (int)(f * i);
    int k = (int)(paramFloat * i) - j;
    if (checkDrawerViewGravity(paramView, 3));
    while (true)
    {
      paramView.offsetLeftAndRight(k);
      setDrawerViewOffset(paramView, paramFloat);
      return;
      k = -k;
    }
  }

  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    this.mFirstLayout = true;
  }

  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    this.mFirstLayout = true;
  }

  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = MotionEventCompat.getActionMasked(paramMotionEvent);
    boolean bool1 = this.mLeftDragger.shouldInterceptTouchEvent(paramMotionEvent) | this.mRightDragger.shouldInterceptTouchEvent(paramMotionEvent);
    switch (i)
    {
    default:
      j = 0;
      boolean bool2;
      if ((!bool1) && (j == 0) && (!hasPeekingDrawer()))
      {
        boolean bool3 = this.mChildrenCanceledTouch;
        bool2 = false;
        if (!bool3);
      }
      else
      {
        bool2 = true;
      }
      return bool2;
    case 0:
      label59: float f1 = paramMotionEvent.getX();
      float f2 = paramMotionEvent.getY();
      this.mInitialMotionX = f1;
      this.mInitialMotionY = f2;
      if ((this.mScrimOpacity <= 0.0F) || (!isContentView(this.mLeftDragger.findTopChildUnder((int)f1, (int)f2))))
        break;
    case 2:
    case 1:
    case 3:
    }
    for (int j = 1; ; j = 0)
    {
      this.mDisallowInterceptRequested = false;
      this.mChildrenCanceledTouch = false;
      break label59;
      if (!this.mLeftDragger.checkTouchSlop(3))
        break;
      this.mLeftCallback.removeCallbacks();
      this.mRightCallback.removeCallbacks();
      j = 0;
      break label59;
      closeDrawers(true);
      this.mDisallowInterceptRequested = false;
      this.mChildrenCanceledTouch = false;
      break;
    }
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (hasVisibleDrawer()))
    {
      KeyEventCompat.startTracking(paramKeyEvent);
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      View localView = findVisibleDrawer();
      if ((localView != null) && (getDrawerLockMode(localView) == 0))
        closeDrawers();
      return localView != null;
    }
    return super.onKeyUp(paramInt, paramKeyEvent);
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.mInLayout = true;
    int i = getChildCount();
    int j = 0;
    while (j < i)
    {
      View localView = getChildAt(j);
      DrawerLayout.LayoutParams localLayoutParams;
      if (localView.getVisibility() != 8)
      {
        localLayoutParams = (DrawerLayout.LayoutParams)localView.getLayoutParams();
        if (isContentView(localView))
          localView.layout(localLayoutParams.leftMargin, localLayoutParams.topMargin, localLayoutParams.leftMargin + localView.getMeasuredWidth(), localLayoutParams.topMargin + localView.getMeasuredHeight());
      }
      else
      {
        j++;
        continue;
      }
      int k = localView.getMeasuredWidth();
      int m = localView.getMeasuredHeight();
      int n;
      if (checkDrawerViewGravity(localView, 3))
        n = -k + (int)(k * localLayoutParams.onScreen);
      label141: switch (0x70 & localLayoutParams.gravity)
      {
      default:
        localView.layout(n, localLayoutParams.topMargin, k + n, m);
      case 80:
        while (localLayoutParams.onScreen == 0.0F)
        {
          localView.setVisibility(4);
          break;
          n = paramInt3 - paramInt1 - (int)(k * localLayoutParams.onScreen);
          break label141;
          int i3 = paramInt4 - paramInt2;
          localView.layout(n, i3 - localLayoutParams.bottomMargin - localView.getMeasuredHeight(), k + n, i3 - localLayoutParams.bottomMargin);
        }
      case 16:
      }
      int i1 = paramInt4 - paramInt2;
      int i2 = (i1 - m) / 2;
      if (i2 < localLayoutParams.topMargin)
        i2 = localLayoutParams.topMargin;
      while (true)
      {
        localView.layout(n, i2, k + n, m + i2);
        break;
        if (i2 + m > i1 - localLayoutParams.bottomMargin)
          i2 = i1 - localLayoutParams.bottomMargin - m;
      }
    }
    this.mInLayout = false;
    this.mFirstLayout = false;
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = View.MeasureSpec.getMode(paramInt1);
    int j = View.MeasureSpec.getMode(paramInt2);
    int k = View.MeasureSpec.getSize(paramInt1);
    int m = View.MeasureSpec.getSize(paramInt2);
    if ((i != 1073741824) || (j != 1073741824))
      throw new IllegalArgumentException("DrawerLayout must be measured with MeasureSpec.EXACTLY.");
    setMeasuredDimension(k, m);
    int n = getChildCount();
    int i1 = 0;
    if (i1 < n)
    {
      View localView = getChildAt(i1);
      DrawerLayout.LayoutParams localLayoutParams;
      if (localView.getVisibility() != 8)
      {
        localLayoutParams = (DrawerLayout.LayoutParams)localView.getLayoutParams();
        if (!isContentView(localView))
          break label161;
        localView.measure(View.MeasureSpec.makeMeasureSpec(k - localLayoutParams.leftMargin - localLayoutParams.rightMargin, 1073741824), View.MeasureSpec.makeMeasureSpec(m - localLayoutParams.topMargin - localLayoutParams.bottomMargin, 1073741824));
      }
      while (true)
      {
        i1++;
        break;
        label161: if (!isDrawerView(localView))
          break label276;
        int i2 = 0x7 & getDrawerViewGravity(localView);
        if ((i2 & 0x0) != 0)
          throw new IllegalStateException("Child drawer has absolute gravity " + gravityToString(i2) + " but this DrawerLayout already has a drawer view along that edge");
        localView.measure(getChildMeasureSpec(paramInt1, this.mMinDrawerMargin + localLayoutParams.leftMargin + localLayoutParams.rightMargin, localLayoutParams.width), getChildMeasureSpec(paramInt2, localLayoutParams.topMargin + localLayoutParams.bottomMargin, localLayoutParams.height));
      }
      label276: throw new IllegalStateException("Child " + localView + " at index " + i1 + " does not have a valid layout_gravity - must be Gravity.LEFT, Gravity.RIGHT or Gravity.NO_GRAVITY");
    }
  }

  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    DrawerLayout.SavedState localSavedState = (DrawerLayout.SavedState)paramParcelable;
    super.onRestoreInstanceState(localSavedState.getSuperState());
    if (localSavedState.openDrawerGravity != 0)
    {
      View localView = findDrawerWithGravity(localSavedState.openDrawerGravity);
      if (localView != null)
        openDrawer(localView);
    }
    setDrawerLockMode(localSavedState.lockModeLeft, 3);
    setDrawerLockMode(localSavedState.lockModeRight, 5);
  }

  protected Parcelable onSaveInstanceState()
  {
    DrawerLayout.SavedState localSavedState = new DrawerLayout.SavedState(super.onSaveInstanceState());
    int i = getChildCount();
    for (int j = 0; ; j++)
      if (j < i)
      {
        View localView = getChildAt(j);
        if (isDrawerView(localView))
        {
          DrawerLayout.LayoutParams localLayoutParams = (DrawerLayout.LayoutParams)localView.getLayoutParams();
          if (localLayoutParams.knownOpen)
            localSavedState.openDrawerGravity = localLayoutParams.gravity;
        }
      }
      else
      {
        localSavedState.lockModeLeft = this.mLockModeLeft;
        localSavedState.lockModeRight = this.mLockModeRight;
        return localSavedState;
      }
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    this.mLeftDragger.processTouchEvent(paramMotionEvent);
    this.mRightDragger.processTouchEvent(paramMotionEvent);
    boolean bool;
    switch (0xFF & paramMotionEvent.getAction())
    {
    case 2:
    default:
      return true;
    case 0:
      float f5 = paramMotionEvent.getX();
      float f6 = paramMotionEvent.getY();
      this.mInitialMotionX = f5;
      this.mInitialMotionY = f6;
      this.mDisallowInterceptRequested = false;
      this.mChildrenCanceledTouch = false;
      return true;
    case 1:
      float f1 = paramMotionEvent.getX();
      float f2 = paramMotionEvent.getY();
      View localView1 = this.mLeftDragger.findTopChildUnder((int)f1, (int)f2);
      if ((localView1 != null) && (isContentView(localView1)))
      {
        float f3 = f1 - this.mInitialMotionX;
        float f4 = f2 - this.mInitialMotionY;
        int i = this.mLeftDragger.getTouchSlop();
        if (f3 * f3 + f4 * f4 < i * i)
        {
          View localView2 = findOpenDrawer();
          if (localView2 != null)
            if (getDrawerLockMode(localView2) == 2)
              bool = true;
        }
      }
      break;
    case 3:
    }
    while (true)
    {
      closeDrawers(bool);
      this.mDisallowInterceptRequested = false;
      return true;
      bool = false;
      continue;
      closeDrawers(true);
      this.mDisallowInterceptRequested = false;
      this.mChildrenCanceledTouch = false;
      return true;
      bool = true;
    }
  }

  public void openDrawer(int paramInt)
  {
    int i = GravityCompat.getAbsoluteGravity(paramInt, ViewCompat.getLayoutDirection(this));
    View localView = findDrawerWithGravity(i);
    if (localView == null)
      throw new IllegalArgumentException("No drawer view found with absolute gravity " + gravityToString(i));
    openDrawer(localView);
  }

  public void openDrawer(View paramView)
  {
    if (!isDrawerView(paramView))
      throw new IllegalArgumentException("View " + paramView + " is not a sliding drawer");
    if (this.mFirstLayout)
    {
      DrawerLayout.LayoutParams localLayoutParams = (DrawerLayout.LayoutParams)paramView.getLayoutParams();
      localLayoutParams.onScreen = 1.0F;
      localLayoutParams.knownOpen = true;
    }
    while (true)
    {
      invalidate();
      return;
      if (checkDrawerViewGravity(paramView, 3))
        this.mLeftDragger.smoothSlideViewTo(paramView, 0, paramView.getTop());
      else
        this.mRightDragger.smoothSlideViewTo(paramView, getWidth() - paramView.getWidth(), paramView.getTop());
    }
  }

  public void requestDisallowInterceptTouchEvent(boolean paramBoolean)
  {
    if ((!this.mLeftDragger.isEdgeTouched(1)) && (!this.mRightDragger.isEdgeTouched(2)))
      super.requestDisallowInterceptTouchEvent(paramBoolean);
    this.mDisallowInterceptRequested = paramBoolean;
    if (paramBoolean)
      closeDrawers(true);
  }

  public void requestLayout()
  {
    if (!this.mInLayout)
      super.requestLayout();
  }

  public void setDrawerListener(DrawerLayout.DrawerListener paramDrawerListener)
  {
    this.mListener = paramDrawerListener;
  }

  public void setDrawerLockMode(int paramInt)
  {
    setDrawerLockMode(paramInt, 3);
    setDrawerLockMode(paramInt, 5);
  }

  public void setDrawerLockMode(int paramInt1, int paramInt2)
  {
    int i = GravityCompat.getAbsoluteGravity(paramInt2, ViewCompat.getLayoutDirection(this));
    ViewDragHelper localViewDragHelper;
    if (i == 3)
    {
      this.mLockModeLeft = paramInt1;
      if (paramInt1 != 0)
      {
        if (i != 3)
          break label78;
        localViewDragHelper = this.mLeftDragger;
        label34: localViewDragHelper.cancel();
      }
      switch (paramInt1)
      {
      default:
      case 2:
      case 1:
      }
    }
    label78: View localView1;
    do
    {
      View localView2;
      do
      {
        return;
        if (i != 5)
          break;
        this.mLockModeRight = paramInt1;
        break;
        localViewDragHelper = this.mRightDragger;
        break label34;
        localView2 = findDrawerWithGravity(i);
      }
      while (localView2 == null);
      openDrawer(localView2);
      return;
      localView1 = findDrawerWithGravity(i);
    }
    while (localView1 == null);
    closeDrawer(localView1);
  }

  public void setDrawerLockMode(int paramInt, View paramView)
  {
    if (!isDrawerView(paramView))
      throw new IllegalArgumentException("View " + paramView + " is not a drawer with appropriate layout_gravity");
    setDrawerLockMode(paramInt, getDrawerViewGravity(paramView));
  }

  public void setDrawerShadow(int paramInt1, int paramInt2)
  {
    setDrawerShadow(getResources().getDrawable(paramInt1), paramInt2);
  }

  public void setDrawerShadow(Drawable paramDrawable, int paramInt)
  {
    int i = GravityCompat.getAbsoluteGravity(paramInt, ViewCompat.getLayoutDirection(this));
    if ((i & 0x3) == 3)
    {
      this.mShadowLeft = paramDrawable;
      invalidate();
    }
    if ((i & 0x5) == 5)
    {
      this.mShadowRight = paramDrawable;
      invalidate();
    }
  }

  void setDrawerViewOffset(View paramView, float paramFloat)
  {
    DrawerLayout.LayoutParams localLayoutParams = (DrawerLayout.LayoutParams)paramView.getLayoutParams();
    if (paramFloat == localLayoutParams.onScreen)
      return;
    localLayoutParams.onScreen = paramFloat;
    dispatchOnDrawerSlide(paramView, paramFloat);
  }

  public void setScrimColor(int paramInt)
  {
    this.mScrimColor = paramInt;
    invalidate();
  }

  void updateDrawerState(int paramInt1, int paramInt2, View paramView)
  {
    int i = 1;
    int j = this.mLeftDragger.getViewDragState();
    int k = this.mRightDragger.getViewDragState();
    DrawerLayout.LayoutParams localLayoutParams;
    if ((j == i) || (k == i))
      if ((paramView != null) && (paramInt2 == 0))
      {
        localLayoutParams = (DrawerLayout.LayoutParams)paramView.getLayoutParams();
        if (localLayoutParams.onScreen != 0.0F)
          break label125;
        dispatchOnDrawerClosed(paramView);
      }
    while (true)
    {
      if (i != this.mDrawerState)
      {
        this.mDrawerState = i;
        if (this.mListener != null)
          this.mListener.onDrawerStateChanged(i);
      }
      return;
      if ((j == 2) || (k == 2))
      {
        i = 2;
        break;
      }
      i = 0;
      break;
      label125: if (localLayoutParams.onScreen == 1.0F)
        dispatchOnDrawerOpened(paramView);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.widget.DrawerLayout
 * JD-Core Version:    0.6.2
 */