package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import java.util.ArrayList;

public class SlidingPaneLayout extends ViewGroup
{
  private static final int DEFAULT_FADE_COLOR = -858993460;
  private static final int DEFAULT_OVERHANG_SIZE = 32;
  static final SlidingPaneLayout.SlidingPanelLayoutImpl IMPL = new SlidingPaneLayout.SlidingPanelLayoutImplBase();
  private static final int MIN_FLING_VELOCITY = 400;
  private static final String TAG = "SlidingPaneLayout";
  private boolean mCanSlide;
  private int mCoveredFadeColor;
  private final ViewDragHelper mDragHelper;
  private boolean mFirstLayout = true;
  private float mInitialMotionX;
  private float mInitialMotionY;
  private boolean mIsUnableToDrag;
  private final int mOverhangSize;
  private SlidingPaneLayout.PanelSlideListener mPanelSlideListener;
  private int mParallaxBy;
  private float mParallaxOffset;
  private final ArrayList<SlidingPaneLayout.DisableLayerRunnable> mPostedRunnables = new ArrayList();
  private boolean mPreservedOpenState;
  private Drawable mShadowDrawable;
  private float mSlideOffset;
  private int mSlideRange;
  private View mSlideableView;
  private int mSliderFadeColor = -858993460;
  private final Rect mTmpRect = new Rect();

  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 17)
    {
      IMPL = new SlidingPaneLayout.SlidingPanelLayoutImplJBMR1();
      return;
    }
    if (i >= 16)
    {
      IMPL = new SlidingPaneLayout.SlidingPanelLayoutImplJB();
      return;
    }
  }

  public SlidingPaneLayout(Context paramContext)
  {
    this(paramContext, null);
  }

  public SlidingPaneLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public SlidingPaneLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    float f = paramContext.getResources().getDisplayMetrics().density;
    this.mOverhangSize = ((int)(0.5F + 32.0F * f));
    ViewConfiguration.get(paramContext);
    setWillNotDraw(false);
    ViewCompat.setAccessibilityDelegate(this, new SlidingPaneLayout.AccessibilityDelegate(this));
    ViewCompat.setImportantForAccessibility(this, 1);
    this.mDragHelper = ViewDragHelper.create(this, 0.5F, new SlidingPaneLayout.DragHelperCallback(this, null));
    this.mDragHelper.setEdgeTrackingEnabled(1);
    this.mDragHelper.setMinVelocity(f * 400.0F);
  }

  private boolean closePane(View paramView, int paramInt)
  {
    boolean bool1;
    if (!this.mFirstLayout)
    {
      boolean bool2 = smoothSlideTo(0.0F, paramInt);
      bool1 = false;
      if (!bool2);
    }
    else
    {
      this.mPreservedOpenState = false;
      bool1 = true;
    }
    return bool1;
  }

  private void dimChildView(View paramView, float paramFloat, int paramInt)
  {
    SlidingPaneLayout.LayoutParams localLayoutParams = (SlidingPaneLayout.LayoutParams)paramView.getLayoutParams();
    if ((paramFloat > 0.0F) && (paramInt != 0))
    {
      i = (int)(paramFloat * ((0xFF000000 & paramInt) >>> 24)) << 24 | 0xFFFFFF & paramInt;
      if (localLayoutParams.dimPaint == null)
        localLayoutParams.dimPaint = new Paint();
      localLayoutParams.dimPaint.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_OVER));
      if (ViewCompat.getLayerType(paramView) != 2)
        ViewCompat.setLayerType(paramView, 2, localLayoutParams.dimPaint);
      invalidateChildRegion(paramView);
    }
    while (ViewCompat.getLayerType(paramView) == 0)
    {
      int i;
      return;
    }
    if (localLayoutParams.dimPaint != null)
      localLayoutParams.dimPaint.setColorFilter(null);
    SlidingPaneLayout.DisableLayerRunnable localDisableLayerRunnable = new SlidingPaneLayout.DisableLayerRunnable(this, paramView);
    this.mPostedRunnables.add(localDisableLayerRunnable);
    ViewCompat.postOnAnimation(this, localDisableLayerRunnable);
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

  private void invalidateChildRegion(View paramView)
  {
    IMPL.invalidateChildRegion(this, paramView);
  }

  private void onPanelDragged(int paramInt)
  {
    SlidingPaneLayout.LayoutParams localLayoutParams = (SlidingPaneLayout.LayoutParams)this.mSlideableView.getLayoutParams();
    this.mSlideOffset = ((paramInt - (getPaddingLeft() + localLayoutParams.leftMargin)) / this.mSlideRange);
    if (this.mParallaxBy != 0)
      parallaxOtherViews(this.mSlideOffset);
    if (localLayoutParams.dimWhenOffset)
      dimChildView(this.mSlideableView, this.mSlideOffset, this.mSliderFadeColor);
    dispatchOnPanelSlide(this.mSlideableView);
  }

  private boolean openPane(View paramView, int paramInt)
  {
    if ((this.mFirstLayout) || (smoothSlideTo(1.0F, paramInt)))
    {
      this.mPreservedOpenState = true;
      return true;
    }
    return false;
  }

  private void parallaxOtherViews(float paramFloat)
  {
    int i = 0;
    SlidingPaneLayout.LayoutParams localLayoutParams = (SlidingPaneLayout.LayoutParams)this.mSlideableView.getLayoutParams();
    if ((localLayoutParams.dimWhenOffset) && (localLayoutParams.leftMargin <= 0));
    for (int j = 1; ; j = 0)
    {
      int k = getChildCount();
      while (i < k)
      {
        View localView = getChildAt(i);
        if (localView != this.mSlideableView)
        {
          int m = (int)((1.0F - this.mParallaxOffset) * this.mParallaxBy);
          this.mParallaxOffset = paramFloat;
          localView.offsetLeftAndRight(m - (int)((1.0F - paramFloat) * this.mParallaxBy));
          if (j != 0)
            dimChildView(localView, 1.0F - this.mParallaxOffset, this.mCoveredFadeColor);
        }
        i++;
      }
    }
  }

  protected boolean canScroll(View paramView, boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3)
  {
    int k;
    if ((paramView instanceof ViewGroup))
    {
      ViewGroup localViewGroup = (ViewGroup)paramView;
      int i = paramView.getScrollX();
      int j = paramView.getScrollY();
      k = -1 + localViewGroup.getChildCount();
      if (k >= 0)
      {
        localView = localViewGroup.getChildAt(k);
        if ((paramInt2 + i < localView.getLeft()) || (paramInt2 + i >= localView.getRight()) || (paramInt3 + j < localView.getTop()) || (paramInt3 + j >= localView.getBottom()) || (!canScroll(localView, true, paramInt1, paramInt2 + i - localView.getLeft(), paramInt3 + j - localView.getTop())));
      }
    }
    while ((paramBoolean) && (ViewCompat.canScrollHorizontally(paramView, -paramInt1)))
    {
      View localView;
      return true;
      k--;
      break;
    }
    return false;
  }

  @Deprecated
  public boolean canSlide()
  {
    return this.mCanSlide;
  }

  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return ((paramLayoutParams instanceof SlidingPaneLayout.LayoutParams)) && (super.checkLayoutParams(paramLayoutParams));
  }

  public boolean closePane()
  {
    return closePane(this.mSlideableView, 0);
  }

  public void computeScroll()
  {
    if (this.mDragHelper.continueSettling(true))
    {
      if (!this.mCanSlide)
        this.mDragHelper.abort();
    }
    else
      return;
    ViewCompat.postInvalidateOnAnimation(this);
  }

  void dispatchOnPanelClosed(View paramView)
  {
    if (this.mPanelSlideListener != null)
      this.mPanelSlideListener.onPanelClosed(paramView);
    sendAccessibilityEvent(32);
  }

  void dispatchOnPanelOpened(View paramView)
  {
    if (this.mPanelSlideListener != null)
      this.mPanelSlideListener.onPanelOpened(paramView);
    sendAccessibilityEvent(32);
  }

  void dispatchOnPanelSlide(View paramView)
  {
    if (this.mPanelSlideListener != null)
      this.mPanelSlideListener.onPanelSlide(paramView, this.mSlideOffset);
  }

  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    if (getChildCount() > 1);
    for (View localView = getChildAt(1); (localView == null) || (this.mShadowDrawable == null); localView = null)
      return;
    int i = this.mShadowDrawable.getIntrinsicWidth();
    int j = localView.getLeft();
    int k = localView.getTop();
    int m = localView.getBottom();
    int n = j - i;
    this.mShadowDrawable.setBounds(n, k, j, m);
    this.mShadowDrawable.draw(paramCanvas);
  }

  protected boolean drawChild(Canvas paramCanvas, View paramView, long paramLong)
  {
    SlidingPaneLayout.LayoutParams localLayoutParams = (SlidingPaneLayout.LayoutParams)paramView.getLayoutParams();
    int i = paramCanvas.save(2);
    if ((this.mCanSlide) && (!localLayoutParams.slideable) && (this.mSlideableView != null))
    {
      paramCanvas.getClipBounds(this.mTmpRect);
      this.mTmpRect.right = Math.min(this.mTmpRect.right, this.mSlideableView.getLeft());
      paramCanvas.clipRect(this.mTmpRect);
    }
    boolean bool;
    if (Build.VERSION.SDK_INT < 11)
    {
      if ((!localLayoutParams.dimWhenOffset) || (this.mSlideOffset <= 0.0F))
        break label202;
      if (!paramView.isDrawingCacheEnabled())
        paramView.setDrawingCacheEnabled(true);
      Bitmap localBitmap = paramView.getDrawingCache();
      if (localBitmap != null)
      {
        paramCanvas.drawBitmap(localBitmap, paramView.getLeft(), paramView.getTop(), localLayoutParams.dimPaint);
        bool = false;
        paramCanvas.restoreToCount(i);
        return bool;
      }
      Log.e("SlidingPaneLayout", "drawChild: child view " + paramView + " returned null drawing cache");
    }
    while (true)
    {
      bool = super.drawChild(paramCanvas, paramView, paramLong);
      break;
      label202: if (paramView.isDrawingCacheEnabled())
        paramView.setDrawingCacheEnabled(false);
    }
  }

  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new SlidingPaneLayout.LayoutParams();
  }

  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new SlidingPaneLayout.LayoutParams(getContext(), paramAttributeSet);
  }

  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams))
      return new SlidingPaneLayout.LayoutParams((ViewGroup.MarginLayoutParams)paramLayoutParams);
    return new SlidingPaneLayout.LayoutParams(paramLayoutParams);
  }

  public int getCoveredFadeColor()
  {
    return this.mCoveredFadeColor;
  }

  public int getParallaxDistance()
  {
    return this.mParallaxBy;
  }

  public int getSliderFadeColor()
  {
    return this.mSliderFadeColor;
  }

  boolean isDimmed(View paramView)
  {
    if (paramView == null)
      return false;
    SlidingPaneLayout.LayoutParams localLayoutParams = (SlidingPaneLayout.LayoutParams)paramView.getLayoutParams();
    return (this.mCanSlide) && (localLayoutParams.dimWhenOffset) && (this.mSlideOffset > 0.0F);
  }

  public boolean isOpen()
  {
    return (!this.mCanSlide) || (this.mSlideOffset == 1.0F);
  }

  public boolean isSlideable()
  {
    return this.mCanSlide;
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
    int i = this.mPostedRunnables.size();
    for (int j = 0; j < i; j++)
      ((SlidingPaneLayout.DisableLayerRunnable)this.mPostedRunnables.get(j)).run();
    this.mPostedRunnables.clear();
  }

  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = MotionEventCompat.getActionMasked(paramMotionEvent);
    if ((!this.mCanSlide) && (i == 0) && (getChildCount() > 1))
    {
      View localView = getChildAt(1);
      if (localView != null)
        if (this.mDragHelper.isViewUnder(localView, (int)paramMotionEvent.getX(), (int)paramMotionEvent.getY()))
          break label100;
    }
    boolean bool1;
    label100: for (boolean bool2 = true; ; bool2 = false)
    {
      this.mPreservedOpenState = bool2;
      if ((this.mCanSlide) && ((!this.mIsUnableToDrag) || (i == 0)))
        break;
      this.mDragHelper.cancel();
      bool1 = super.onInterceptTouchEvent(paramMotionEvent);
      return bool1;
    }
    if ((i == 3) || (i == 1))
    {
      this.mDragHelper.cancel();
      return false;
    }
    switch (i)
    {
    case 1:
    default:
    case 0:
    case 2:
    }
    label152: float f3;
    float f4;
    do
    {
      for (int j = 0; ; j = 1)
      {
        if (!this.mDragHelper.shouldInterceptTouchEvent(paramMotionEvent))
        {
          bool1 = false;
          if (j == 0)
            break;
        }
        return true;
        this.mIsUnableToDrag = false;
        float f5 = paramMotionEvent.getX();
        float f6 = paramMotionEvent.getY();
        this.mInitialMotionX = f5;
        this.mInitialMotionY = f6;
        if ((!this.mDragHelper.isViewUnder(this.mSlideableView, (int)f5, (int)f6)) || (!isDimmed(this.mSlideableView)))
          break label152;
      }
      float f1 = paramMotionEvent.getX();
      float f2 = paramMotionEvent.getY();
      f3 = Math.abs(f1 - this.mInitialMotionX);
      f4 = Math.abs(f2 - this.mInitialMotionY);
    }
    while ((f3 <= this.mDragHelper.getTouchSlop()) || (f4 <= f3));
    this.mDragHelper.cancel();
    this.mIsUnableToDrag = true;
    return false;
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = paramInt3 - paramInt1;
    int j = getPaddingLeft();
    int k = getPaddingRight();
    int m = getPaddingTop();
    int n = getChildCount();
    float f;
    int i1;
    int i2;
    label67: int i6;
    boolean bool;
    label189: int i4;
    if (this.mFirstLayout)
    {
      if ((this.mCanSlide) && (this.mPreservedOpenState))
      {
        f = 1.0F;
        this.mSlideOffset = f;
      }
    }
    else
    {
      i1 = 0;
      i2 = j;
      if (i1 >= n)
        break label317;
      View localView = getChildAt(i1);
      if (localView.getVisibility() == 8)
        break label429;
      SlidingPaneLayout.LayoutParams localLayoutParams = (SlidingPaneLayout.LayoutParams)localView.getLayoutParams();
      int i5 = localView.getMeasuredWidth();
      i6 = 0;
      if (!localLayoutParams.slideable)
        break label277;
      int i9 = localLayoutParams.leftMargin + localLayoutParams.rightMargin;
      int i10 = Math.min(i2, i - k - this.mOverhangSize) - j - i9;
      this.mSlideRange = i10;
      if (i10 + (j + localLayoutParams.leftMargin) + i5 / 2 <= i - k)
        break label271;
      bool = true;
      localLayoutParams.dimWhenOffset = bool;
      i4 = j + ((int)(i10 * this.mSlideOffset) + localLayoutParams.leftMargin);
      int i8 = i4 - i6;
      localView.layout(i8, m, i8 + i5, m + localView.getMeasuredHeight());
      i2 += localView.getWidth();
    }
    while (true)
    {
      i1++;
      j = i4;
      break label67;
      f = 0.0F;
      break;
      label271: bool = false;
      break label189;
      label277: if ((this.mCanSlide) && (this.mParallaxBy != 0));
      for (int i7 = (int)((1.0F - this.mSlideOffset) * this.mParallaxBy); ; i7 = 0)
      {
        i6 = i7;
        i4 = i2;
        break;
        label317: if (this.mFirstLayout)
        {
          if (!this.mCanSlide)
            break label392;
          if (this.mParallaxBy != 0)
            parallaxOtherViews(this.mSlideOffset);
          if (((SlidingPaneLayout.LayoutParams)this.mSlideableView.getLayoutParams()).dimWhenOffset)
            dimChildView(this.mSlideableView, this.mSlideOffset, this.mSliderFadeColor);
        }
        while (true)
        {
          updateObscuredViewsVisibility(this.mSlideableView);
          this.mFirstLayout = false;
          return;
          label392: for (int i3 = 0; i3 < n; i3++)
            dimChildView(getChildAt(i3), 0.0F, this.mSliderFadeColor);
        }
      }
      label429: i4 = j;
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = View.MeasureSpec.getMode(paramInt1);
    int j = View.MeasureSpec.getSize(paramInt1);
    int k = View.MeasureSpec.getMode(paramInt2);
    int m = View.MeasureSpec.getSize(paramInt2);
    if (i != 1073741824)
      throw new IllegalStateException("Width must have an exact value or MATCH_PARENT");
    if (k == 0)
      throw new IllegalStateException("Height must not be UNSPECIFIED");
    int i1;
    int n;
    boolean bool1;
    int i2;
    int i3;
    int i4;
    int i5;
    float f1;
    label143: View localView2;
    SlidingPaneLayout.LayoutParams localLayoutParams2;
    int i21;
    int i22;
    float f2;
    boolean bool4;
    switch (k)
    {
    default:
      i1 = 0;
      n = -1;
      bool1 = false;
      i2 = j - getPaddingLeft() - getPaddingRight();
      i3 = getChildCount();
      if (i3 > 2)
        Log.e("SlidingPaneLayout", "onMeasure: More than two child views are not supported.");
      this.mSlideableView = null;
      i4 = 0;
      i5 = i1;
      f1 = 0.0F;
      if (i4 < i3)
      {
        localView2 = getChildAt(i4);
        localLayoutParams2 = (SlidingPaneLayout.LayoutParams)localView2.getLayoutParams();
        if (localView2.getVisibility() == 8)
        {
          localLayoutParams2.dimWhenOffset = false;
          i21 = i2;
          i22 = i5;
          f2 = f1;
          bool4 = bool1;
        }
      }
      break;
    case 1073741824:
    case -2147483648:
    }
    while (true)
    {
      i4++;
      bool1 = bool4;
      i5 = i22;
      i2 = i21;
      f1 = f2;
      break label143;
      i1 = m - getPaddingTop() - getPaddingBottom();
      n = i1;
      break;
      n = m - getPaddingTop() - getPaddingBottom();
      i1 = 0;
      break;
      if (localLayoutParams2.weight > 0.0F)
      {
        f1 += localLayoutParams2.weight;
        if (localLayoutParams2.width == 0);
      }
      else
      {
        int i15 = localLayoutParams2.leftMargin + localLayoutParams2.rightMargin;
        int i16;
        label327: int i17;
        label347: int i20;
        if (localLayoutParams2.width == -2)
        {
          i16 = View.MeasureSpec.makeMeasureSpec(j - i15, -2147483648);
          if (localLayoutParams2.height != -2)
            break label497;
          i17 = View.MeasureSpec.makeMeasureSpec(n, -2147483648);
          localView2.measure(i16, i17);
          int i18 = localView2.getMeasuredWidth();
          int i19 = localView2.getMeasuredHeight();
          if ((k == -2147483648) && (i19 > i5))
            i5 = Math.min(i19, n);
          i20 = i2 - i18;
          if (i20 >= 0)
            break label535;
        }
        label535: for (boolean bool2 = true; ; bool2 = false)
        {
          localLayoutParams2.slideable = bool2;
          boolean bool3 = bool2 | bool1;
          if (localLayoutParams2.slideable)
            this.mSlideableView = localView2;
          i21 = i20;
          f2 = f1;
          bool4 = bool3;
          i22 = i5;
          break;
          if (localLayoutParams2.width == -1)
          {
            i16 = View.MeasureSpec.makeMeasureSpec(j - i15, 1073741824);
            break label327;
          }
          i16 = View.MeasureSpec.makeMeasureSpec(localLayoutParams2.width, 1073741824);
          break label327;
          label497: if (localLayoutParams2.height == -1)
          {
            i17 = View.MeasureSpec.makeMeasureSpec(n, 1073741824);
            break label347;
          }
          i17 = View.MeasureSpec.makeMeasureSpec(localLayoutParams2.height, 1073741824);
          break label347;
        }
        if ((bool1) || (f1 > 0.0F))
        {
          int i6 = j - this.mOverhangSize;
          int i7 = 0;
          if (i7 < i3)
          {
            View localView1 = getChildAt(i7);
            SlidingPaneLayout.LayoutParams localLayoutParams1;
            int i8;
            label621: int i9;
            label629: int i14;
            if (localView1.getVisibility() != 8)
            {
              localLayoutParams1 = (SlidingPaneLayout.LayoutParams)localView1.getLayoutParams();
              if ((localLayoutParams1.width != 0) || (localLayoutParams1.weight <= 0.0F))
                break label714;
              i8 = 1;
              if (i8 == 0)
                break label720;
              i9 = 0;
              if ((!bool1) || (localView1 == this.mSlideableView))
                break label784;
              if ((localLayoutParams1.width < 0) && ((i9 > i6) || (localLayoutParams1.weight > 0.0F)))
              {
                if (i8 == 0)
                  break label768;
                if (localLayoutParams1.height != -2)
                  break label730;
                i14 = View.MeasureSpec.makeMeasureSpec(n, -2147483648);
                label693: localView1.measure(View.MeasureSpec.makeMeasureSpec(i6, 1073741824), i14);
              }
            }
            while (true)
            {
              i7++;
              break;
              label714: i8 = 0;
              break label621;
              label720: i9 = localView1.getMeasuredWidth();
              break label629;
              label730: if (localLayoutParams1.height == -1)
              {
                i14 = View.MeasureSpec.makeMeasureSpec(n, 1073741824);
                break label693;
              }
              i14 = View.MeasureSpec.makeMeasureSpec(localLayoutParams1.height, 1073741824);
              break label693;
              label768: i14 = View.MeasureSpec.makeMeasureSpec(localView1.getMeasuredHeight(), 1073741824);
              break label693;
              label784: if (localLayoutParams1.weight > 0.0F)
              {
                int i10;
                if (localLayoutParams1.width == 0)
                  if (localLayoutParams1.height == -2)
                    i10 = View.MeasureSpec.makeMeasureSpec(n, -2147483648);
                while (true)
                {
                  if (!bool1)
                    break label926;
                  int i12 = j - (localLayoutParams1.leftMargin + localLayoutParams1.rightMargin);
                  int i13 = View.MeasureSpec.makeMeasureSpec(i12, 1073741824);
                  if (i9 == i12)
                    break;
                  localView1.measure(i13, i10);
                  break;
                  if (localLayoutParams1.height == -1)
                  {
                    i10 = View.MeasureSpec.makeMeasureSpec(n, 1073741824);
                  }
                  else
                  {
                    i10 = View.MeasureSpec.makeMeasureSpec(localLayoutParams1.height, 1073741824);
                    continue;
                    i10 = View.MeasureSpec.makeMeasureSpec(localView1.getMeasuredHeight(), 1073741824);
                  }
                }
                label926: int i11 = Math.max(0, i2);
                localView1.measure(View.MeasureSpec.makeMeasureSpec(i9 + (int)(localLayoutParams1.weight * i11 / f1), 1073741824), i10);
              }
            }
          }
        }
        setMeasuredDimension(j, i5);
        this.mCanSlide = bool1;
        if ((this.mDragHelper.getViewDragState() != 0) && (!bool1))
          this.mDragHelper.abort();
        return;
      }
      i21 = i2;
      i22 = i5;
      f2 = f1;
      bool4 = bool1;
    }
  }

  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    SlidingPaneLayout.SavedState localSavedState = (SlidingPaneLayout.SavedState)paramParcelable;
    super.onRestoreInstanceState(localSavedState.getSuperState());
    if (localSavedState.isOpen)
      openPane();
    while (true)
    {
      this.mPreservedOpenState = localSavedState.isOpen;
      return;
      closePane();
    }
  }

  protected Parcelable onSaveInstanceState()
  {
    SlidingPaneLayout.SavedState localSavedState = new SlidingPaneLayout.SavedState(super.onSaveInstanceState());
    if (isSlideable());
    for (boolean bool = isOpen(); ; bool = this.mPreservedOpenState)
    {
      localSavedState.isOpen = bool;
      return localSavedState;
    }
  }

  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (paramInt1 != paramInt3)
      this.mFirstLayout = true;
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (!this.mCanSlide)
      return super.onTouchEvent(paramMotionEvent);
    this.mDragHelper.processTouchEvent(paramMotionEvent);
    switch (0xFF & paramMotionEvent.getAction())
    {
    default:
    case 0:
    case 1:
    }
    while (true)
    {
      return true;
      float f5 = paramMotionEvent.getX();
      float f6 = paramMotionEvent.getY();
      this.mInitialMotionX = f5;
      this.mInitialMotionY = f6;
      continue;
      if (isDimmed(this.mSlideableView))
      {
        float f1 = paramMotionEvent.getX();
        float f2 = paramMotionEvent.getY();
        float f3 = f1 - this.mInitialMotionX;
        float f4 = f2 - this.mInitialMotionY;
        int i = this.mDragHelper.getTouchSlop();
        if ((f3 * f3 + f4 * f4 < i * i) && (this.mDragHelper.isViewUnder(this.mSlideableView, (int)f1, (int)f2)))
          closePane(this.mSlideableView, 0);
      }
    }
  }

  public boolean openPane()
  {
    return openPane(this.mSlideableView, 0);
  }

  public void requestChildFocus(View paramView1, View paramView2)
  {
    super.requestChildFocus(paramView1, paramView2);
    if ((!isInTouchMode()) && (!this.mCanSlide))
      if (paramView1 != this.mSlideableView)
        break label36;
    label36: for (boolean bool = true; ; bool = false)
    {
      this.mPreservedOpenState = bool;
      return;
    }
  }

  void setAllChildrenVisible()
  {
    int i = getChildCount();
    for (int j = 0; j < i; j++)
    {
      View localView = getChildAt(j);
      if (localView.getVisibility() == 4)
        localView.setVisibility(0);
    }
  }

  public void setCoveredFadeColor(int paramInt)
  {
    this.mCoveredFadeColor = paramInt;
  }

  public void setPanelSlideListener(SlidingPaneLayout.PanelSlideListener paramPanelSlideListener)
  {
    this.mPanelSlideListener = paramPanelSlideListener;
  }

  public void setParallaxDistance(int paramInt)
  {
    this.mParallaxBy = paramInt;
    requestLayout();
  }

  public void setShadowDrawable(Drawable paramDrawable)
  {
    this.mShadowDrawable = paramDrawable;
  }

  public void setShadowResource(int paramInt)
  {
    setShadowDrawable(getResources().getDrawable(paramInt));
  }

  public void setSliderFadeColor(int paramInt)
  {
    this.mSliderFadeColor = paramInt;
  }

  @Deprecated
  public void smoothSlideClosed()
  {
    closePane();
  }

  @Deprecated
  public void smoothSlideOpen()
  {
    openPane();
  }

  boolean smoothSlideTo(float paramFloat, int paramInt)
  {
    if (!this.mCanSlide)
      return false;
    SlidingPaneLayout.LayoutParams localLayoutParams = (SlidingPaneLayout.LayoutParams)this.mSlideableView.getLayoutParams();
    int i = (int)(getPaddingLeft() + localLayoutParams.leftMargin + paramFloat * this.mSlideRange);
    if (this.mDragHelper.smoothSlideViewTo(this.mSlideableView, i, this.mSlideableView.getTop()))
    {
      setAllChildrenVisible();
      ViewCompat.postInvalidateOnAnimation(this);
      return true;
    }
    return false;
  }

  void updateObscuredViewsVisibility(View paramView)
  {
    int i = getPaddingLeft();
    int j = getWidth() - getPaddingRight();
    int k = getPaddingTop();
    int m = getHeight() - getPaddingBottom();
    int i3;
    int i2;
    int i1;
    int n;
    int i5;
    label76: View localView;
    if ((paramView != null) && (hasOpaqueBackground(paramView)))
    {
      i3 = paramView.getLeft();
      i2 = paramView.getRight();
      i1 = paramView.getTop();
      n = paramView.getBottom();
      int i4 = getChildCount();
      i5 = 0;
      if (i5 >= i4)
        return;
      localView = getChildAt(i5);
      if (localView == paramView)
        return;
      int i6 = Math.max(i, localView.getLeft());
      int i7 = Math.max(k, localView.getTop());
      int i8 = Math.min(j, localView.getRight());
      int i9 = Math.min(m, localView.getBottom());
      if ((i6 < i3) || (i7 < i1) || (i8 > i2) || (i9 > n))
        break label202;
    }
    label202: for (int i10 = 4; ; i10 = 0)
    {
      localView.setVisibility(i10);
      i5++;
      break label76;
      n = 0;
      i1 = 0;
      i2 = 0;
      i3 = 0;
      break;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.widget.SlidingPaneLayout
 * JD-Core Version:    0.6.2
 */