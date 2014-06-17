package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.VelocityTrackerCompat;
import android.support.v4.view.ViewCompat;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import java.util.Arrays;

public class ViewDragHelper
{
  private static final int BASE_SETTLE_DURATION = 256;
  public static final int DIRECTION_ALL = 3;
  public static final int DIRECTION_HORIZONTAL = 1;
  public static final int DIRECTION_VERTICAL = 2;
  public static final int EDGE_ALL = 15;
  public static final int EDGE_BOTTOM = 8;
  public static final int EDGE_LEFT = 1;
  public static final int EDGE_RIGHT = 2;
  private static final int EDGE_SIZE = 20;
  public static final int EDGE_TOP = 4;
  public static final int INVALID_POINTER = -1;
  private static final int MAX_SETTLE_DURATION = 600;
  public static final int STATE_DRAGGING = 1;
  public static final int STATE_IDLE = 0;
  public static final int STATE_SETTLING = 2;
  private static final String TAG = "ViewDragHelper";
  private static final Interpolator sInterpolator = new ViewDragHelper.1();
  private int mActivePointerId = -1;
  private final ViewDragHelper.Callback mCallback;
  private View mCapturedView;
  private int mDragState;
  private int[] mEdgeDragsInProgress;
  private int[] mEdgeDragsLocked;
  private int mEdgeSize;
  private int[] mInitialEdgesTouched;
  private float[] mInitialMotionX;
  private float[] mInitialMotionY;
  private float[] mLastMotionX;
  private float[] mLastMotionY;
  private float mMaxVelocity;
  private float mMinVelocity;
  private final ViewGroup mParentView;
  private int mPointersDown;
  private boolean mReleaseInProgress;
  private ScrollerCompat mScroller;
  private final Runnable mSetIdleRunnable = new ViewDragHelper.2(this);
  private int mTouchSlop;
  private int mTrackingEdges;
  private VelocityTracker mVelocityTracker;

  private ViewDragHelper(Context paramContext, ViewGroup paramViewGroup, ViewDragHelper.Callback paramCallback)
  {
    if (paramViewGroup == null)
      throw new IllegalArgumentException("Parent view may not be null");
    if (paramCallback == null)
      throw new IllegalArgumentException("Callback may not be null");
    this.mParentView = paramViewGroup;
    this.mCallback = paramCallback;
    ViewConfiguration localViewConfiguration = ViewConfiguration.get(paramContext);
    this.mEdgeSize = ((int)(0.5F + 20.0F * paramContext.getResources().getDisplayMetrics().density));
    this.mTouchSlop = localViewConfiguration.getScaledTouchSlop();
    this.mMaxVelocity = localViewConfiguration.getScaledMaximumFlingVelocity();
    this.mMinVelocity = localViewConfiguration.getScaledMinimumFlingVelocity();
    this.mScroller = ScrollerCompat.create(paramContext, sInterpolator);
  }

  private boolean checkNewEdgeDrag(float paramFloat1, float paramFloat2, int paramInt1, int paramInt2)
  {
    float f1 = Math.abs(paramFloat1);
    float f2 = Math.abs(paramFloat2);
    if (((paramInt2 & this.mInitialEdgesTouched[paramInt1]) != paramInt2) || ((paramInt2 & this.mTrackingEdges) == 0) || ((paramInt2 & this.mEdgeDragsLocked[paramInt1]) == paramInt2) || ((paramInt2 & this.mEdgeDragsInProgress[paramInt1]) == paramInt2) || ((f1 <= this.mTouchSlop) && (f2 <= this.mTouchSlop)));
    do
    {
      return false;
      if ((f1 < f2 * 0.5F) && (this.mCallback.onEdgeLock(paramInt2)))
      {
        int[] arrayOfInt = this.mEdgeDragsLocked;
        arrayOfInt[paramInt1] = (paramInt2 | arrayOfInt[paramInt1]);
        return false;
      }
    }
    while (((paramInt2 & this.mEdgeDragsInProgress[paramInt1]) != 0) || (f1 <= this.mTouchSlop));
    return true;
  }

  private boolean checkTouchSlop(View paramView, float paramFloat1, float paramFloat2)
  {
    if (paramView == null);
    label20: int j;
    label73: label79: 
    do
    {
      do
      {
        return false;
        int i;
        if (this.mCallback.getViewHorizontalDragRange(paramView) > 0)
        {
          i = 1;
          if (this.mCallback.getViewVerticalDragRange(paramView) <= 0)
            break label73;
        }
        for (j = 1; ; j = 0)
        {
          if ((i == 0) || (j == 0))
            break label79;
          if (paramFloat1 * paramFloat1 + paramFloat2 * paramFloat2 <= this.mTouchSlop * this.mTouchSlop)
            break;
          return true;
          i = 0;
          break label20;
        }
        if (i == 0)
          break;
      }
      while (Math.abs(paramFloat1) <= this.mTouchSlop);
      return true;
    }
    while ((j == 0) || (Math.abs(paramFloat2) <= this.mTouchSlop));
    return true;
  }

  private float clampMag(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    float f = Math.abs(paramFloat1);
    if (f < paramFloat2)
      paramFloat3 = 0.0F;
    do
    {
      return paramFloat3;
      if (f <= paramFloat3)
        break;
    }
    while (paramFloat1 > 0.0F);
    return -paramFloat3;
    return paramFloat1;
  }

  private int clampMag(int paramInt1, int paramInt2, int paramInt3)
  {
    int i = Math.abs(paramInt1);
    if (i < paramInt2)
      paramInt3 = 0;
    do
    {
      return paramInt3;
      if (i <= paramInt3)
        break;
    }
    while (paramInt1 > 0);
    return -paramInt3;
    return paramInt1;
  }

  private void clearMotionHistory()
  {
    if (this.mInitialMotionX == null)
      return;
    Arrays.fill(this.mInitialMotionX, 0.0F);
    Arrays.fill(this.mInitialMotionY, 0.0F);
    Arrays.fill(this.mLastMotionX, 0.0F);
    Arrays.fill(this.mLastMotionY, 0.0F);
    Arrays.fill(this.mInitialEdgesTouched, 0);
    Arrays.fill(this.mEdgeDragsInProgress, 0);
    Arrays.fill(this.mEdgeDragsLocked, 0);
    this.mPointersDown = 0;
  }

  private void clearMotionHistory(int paramInt)
  {
    if (this.mInitialMotionX == null)
      return;
    this.mInitialMotionX[paramInt] = 0.0F;
    this.mInitialMotionY[paramInt] = 0.0F;
    this.mLastMotionX[paramInt] = 0.0F;
    this.mLastMotionY[paramInt] = 0.0F;
    this.mInitialEdgesTouched[paramInt] = 0;
    this.mEdgeDragsInProgress[paramInt] = 0;
    this.mEdgeDragsLocked[paramInt] = 0;
    this.mPointersDown &= (0xFFFFFFFF ^ 1 << paramInt);
  }

  private int computeAxisDuration(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt1 == 0)
      return 0;
    int i = this.mParentView.getWidth();
    int j = i / 2;
    float f1 = Math.min(1.0F, Math.abs(paramInt1) / i);
    float f2 = j + j * distanceInfluenceForSnapDuration(f1);
    int k = Math.abs(paramInt2);
    if (k > 0);
    for (int m = 4 * Math.round(1000.0F * Math.abs(f2 / k)); ; m = (int)(256.0F * (1.0F + Math.abs(paramInt1) / paramInt3)))
      return Math.min(m, 600);
  }

  private int computeSettleDuration(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = clampMag(paramInt3, (int)this.mMinVelocity, (int)this.mMaxVelocity);
    int j = clampMag(paramInt4, (int)this.mMinVelocity, (int)this.mMaxVelocity);
    int k = Math.abs(paramInt1);
    int m = Math.abs(paramInt2);
    int n = Math.abs(i);
    int i1 = Math.abs(j);
    int i2 = n + i1;
    int i3 = k + m;
    float f1;
    if (i != 0)
    {
      f1 = n / i2;
      if (j == 0)
        break label165;
    }
    label165: for (float f2 = i1 / i2; ; f2 = m / i3)
    {
      int i4 = computeAxisDuration(paramInt1, i, this.mCallback.getViewHorizontalDragRange(paramView));
      int i5 = computeAxisDuration(paramInt2, j, this.mCallback.getViewVerticalDragRange(paramView));
      return (int)(f1 * i4 + f2 * i5);
      f1 = k / i3;
      break;
    }
  }

  public static ViewDragHelper create(ViewGroup paramViewGroup, float paramFloat, ViewDragHelper.Callback paramCallback)
  {
    ViewDragHelper localViewDragHelper = create(paramViewGroup, paramCallback);
    localViewDragHelper.mTouchSlop = ((int)(localViewDragHelper.mTouchSlop * (1.0F / paramFloat)));
    return localViewDragHelper;
  }

  public static ViewDragHelper create(ViewGroup paramViewGroup, ViewDragHelper.Callback paramCallback)
  {
    return new ViewDragHelper(paramViewGroup.getContext(), paramViewGroup, paramCallback);
  }

  private void dispatchViewReleased(float paramFloat1, float paramFloat2)
  {
    this.mReleaseInProgress = true;
    this.mCallback.onViewReleased(this.mCapturedView, paramFloat1, paramFloat2);
    this.mReleaseInProgress = false;
    if (this.mDragState == 1)
      setDragState(0);
  }

  private float distanceInfluenceForSnapDuration(float paramFloat)
  {
    return (float)Math.sin((float)(0.47123891676382D * (paramFloat - 0.5F)));
  }

  private void dragTo(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = this.mCapturedView.getLeft();
    int j = this.mCapturedView.getTop();
    int k;
    if (paramInt3 != 0)
    {
      k = this.mCallback.clampViewPositionHorizontal(this.mCapturedView, paramInt1, paramInt3);
      this.mCapturedView.offsetLeftAndRight(k - i);
    }
    while (true)
    {
      int m;
      if (paramInt4 != 0)
      {
        m = this.mCallback.clampViewPositionVertical(this.mCapturedView, paramInt2, paramInt4);
        this.mCapturedView.offsetTopAndBottom(m - j);
      }
      while (true)
      {
        if ((paramInt3 != 0) || (paramInt4 != 0))
        {
          int n = k - i;
          int i1 = m - j;
          this.mCallback.onViewPositionChanged(this.mCapturedView, k, m, n, i1);
        }
        return;
        m = paramInt2;
      }
      k = paramInt1;
    }
  }

  private void ensureMotionHistorySizeForId(int paramInt)
  {
    if ((this.mInitialMotionX == null) || (this.mInitialMotionX.length <= paramInt))
    {
      float[] arrayOfFloat1 = new float[paramInt + 1];
      float[] arrayOfFloat2 = new float[paramInt + 1];
      float[] arrayOfFloat3 = new float[paramInt + 1];
      float[] arrayOfFloat4 = new float[paramInt + 1];
      int[] arrayOfInt1 = new int[paramInt + 1];
      int[] arrayOfInt2 = new int[paramInt + 1];
      int[] arrayOfInt3 = new int[paramInt + 1];
      if (this.mInitialMotionX != null)
      {
        System.arraycopy(this.mInitialMotionX, 0, arrayOfFloat1, 0, this.mInitialMotionX.length);
        System.arraycopy(this.mInitialMotionY, 0, arrayOfFloat2, 0, this.mInitialMotionY.length);
        System.arraycopy(this.mLastMotionX, 0, arrayOfFloat3, 0, this.mLastMotionX.length);
        System.arraycopy(this.mLastMotionY, 0, arrayOfFloat4, 0, this.mLastMotionY.length);
        System.arraycopy(this.mInitialEdgesTouched, 0, arrayOfInt1, 0, this.mInitialEdgesTouched.length);
        System.arraycopy(this.mEdgeDragsInProgress, 0, arrayOfInt2, 0, this.mEdgeDragsInProgress.length);
        System.arraycopy(this.mEdgeDragsLocked, 0, arrayOfInt3, 0, this.mEdgeDragsLocked.length);
      }
      this.mInitialMotionX = arrayOfFloat1;
      this.mInitialMotionY = arrayOfFloat2;
      this.mLastMotionX = arrayOfFloat3;
      this.mLastMotionY = arrayOfFloat4;
      this.mInitialEdgesTouched = arrayOfInt1;
      this.mEdgeDragsInProgress = arrayOfInt2;
      this.mEdgeDragsLocked = arrayOfInt3;
    }
  }

  private boolean forceSettleCapturedViewAt(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = this.mCapturedView.getLeft();
    int j = this.mCapturedView.getTop();
    int k = paramInt1 - i;
    int m = paramInt2 - j;
    if ((k == 0) && (m == 0))
    {
      this.mScroller.abortAnimation();
      setDragState(0);
      return false;
    }
    int n = computeSettleDuration(this.mCapturedView, k, m, paramInt3, paramInt4);
    this.mScroller.startScroll(i, j, k, m, n);
    setDragState(2);
    return true;
  }

  private int getEdgesTouched(int paramInt1, int paramInt2)
  {
    int i = this.mParentView.getLeft() + this.mEdgeSize;
    int j = 0;
    if (paramInt1 < i)
      j = 1;
    if (paramInt2 < this.mParentView.getTop() + this.mEdgeSize)
      j |= 4;
    if (paramInt1 > this.mParentView.getRight() - this.mEdgeSize)
      j |= 2;
    if (paramInt2 > this.mParentView.getBottom() - this.mEdgeSize)
      j |= 8;
    return j;
  }

  private void releaseViewForPointerUp()
  {
    this.mVelocityTracker.computeCurrentVelocity(1000, this.mMaxVelocity);
    dispatchViewReleased(clampMag(VelocityTrackerCompat.getXVelocity(this.mVelocityTracker, this.mActivePointerId), this.mMinVelocity, this.mMaxVelocity), clampMag(VelocityTrackerCompat.getYVelocity(this.mVelocityTracker, this.mActivePointerId), this.mMinVelocity, this.mMaxVelocity));
  }

  private void reportNewEdgeDrags(float paramFloat1, float paramFloat2, int paramInt)
  {
    int i = 1;
    if (checkNewEdgeDrag(paramFloat1, paramFloat2, paramInt, i));
    while (true)
    {
      if (checkNewEdgeDrag(paramFloat2, paramFloat1, paramInt, 4))
        i |= 4;
      if (checkNewEdgeDrag(paramFloat1, paramFloat2, paramInt, 2))
        i |= 2;
      if (checkNewEdgeDrag(paramFloat2, paramFloat1, paramInt, 8))
        i |= 8;
      if (i != 0)
      {
        int[] arrayOfInt = this.mEdgeDragsInProgress;
        arrayOfInt[paramInt] = (i | arrayOfInt[paramInt]);
        this.mCallback.onEdgeDragStarted(i, paramInt);
      }
      return;
      i = 0;
    }
  }

  private void saveInitialMotion(float paramFloat1, float paramFloat2, int paramInt)
  {
    ensureMotionHistorySizeForId(paramInt);
    float[] arrayOfFloat1 = this.mInitialMotionX;
    this.mLastMotionX[paramInt] = paramFloat1;
    arrayOfFloat1[paramInt] = paramFloat1;
    float[] arrayOfFloat2 = this.mInitialMotionY;
    this.mLastMotionY[paramInt] = paramFloat2;
    arrayOfFloat2[paramInt] = paramFloat2;
    this.mInitialEdgesTouched[paramInt] = getEdgesTouched((int)paramFloat1, (int)paramFloat2);
    this.mPointersDown |= 1 << paramInt;
  }

  private void saveLastMotion(MotionEvent paramMotionEvent)
  {
    int i = MotionEventCompat.getPointerCount(paramMotionEvent);
    for (int j = 0; j < i; j++)
    {
      int k = MotionEventCompat.getPointerId(paramMotionEvent, j);
      float f1 = MotionEventCompat.getX(paramMotionEvent, j);
      float f2 = MotionEventCompat.getY(paramMotionEvent, j);
      this.mLastMotionX[k] = f1;
      this.mLastMotionY[k] = f2;
    }
  }

  public void abort()
  {
    cancel();
    if (this.mDragState == 2)
    {
      int i = this.mScroller.getCurrX();
      int j = this.mScroller.getCurrY();
      this.mScroller.abortAnimation();
      int k = this.mScroller.getCurrX();
      int m = this.mScroller.getCurrY();
      this.mCallback.onViewPositionChanged(this.mCapturedView, k, m, k - i, m - j);
    }
    setDragState(0);
  }

  protected boolean canScroll(View paramView, boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((paramView instanceof ViewGroup))
    {
      ViewGroup localViewGroup = (ViewGroup)paramView;
      int i = paramView.getScrollX();
      int j = paramView.getScrollY();
      for (int k = -1 + localViewGroup.getChildCount(); k >= 0; k--)
      {
        View localView = localViewGroup.getChildAt(k);
        if ((paramInt3 + i >= localView.getLeft()) && (paramInt3 + i < localView.getRight()) && (paramInt4 + j >= localView.getTop()) && (paramInt4 + j < localView.getBottom()) && (canScroll(localView, true, paramInt1, paramInt2, paramInt3 + i - localView.getLeft(), paramInt4 + j - localView.getTop())))
          return true;
      }
    }
    return (paramBoolean) && ((ViewCompat.canScrollHorizontally(paramView, -paramInt1)) || (ViewCompat.canScrollVertically(paramView, -paramInt2)));
  }

  public void cancel()
  {
    this.mActivePointerId = -1;
    clearMotionHistory();
    if (this.mVelocityTracker != null)
    {
      this.mVelocityTracker.recycle();
      this.mVelocityTracker = null;
    }
  }

  public void captureChildView(View paramView, int paramInt)
  {
    if (paramView.getParent() != this.mParentView)
      throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + this.mParentView + ")");
    this.mCapturedView = paramView;
    this.mActivePointerId = paramInt;
    this.mCallback.onViewCaptured(paramView, paramInt);
    setDragState(1);
  }

  public boolean checkTouchSlop(int paramInt)
  {
    int i = this.mInitialMotionX.length;
    for (int j = 0; ; j++)
    {
      boolean bool = false;
      if (j < i)
      {
        if (checkTouchSlop(paramInt, j))
          bool = true;
      }
      else
        return bool;
    }
  }

  public boolean checkTouchSlop(int paramInt1, int paramInt2)
  {
    if (!isPointerDown(paramInt2));
    label19: int j;
    float f2;
    label100: label106: 
    do
    {
      float f1;
      do
      {
        return false;
        int i;
        if ((paramInt1 & 0x1) == 1)
        {
          i = 1;
          if ((paramInt1 & 0x2) != 2)
            break label100;
        }
        for (j = 1; ; j = 0)
        {
          f1 = this.mLastMotionX[paramInt2] - this.mInitialMotionX[paramInt2];
          f2 = this.mLastMotionY[paramInt2] - this.mInitialMotionY[paramInt2];
          if ((i == 0) || (j == 0))
            break label106;
          if (f1 * f1 + f2 * f2 <= this.mTouchSlop * this.mTouchSlop)
            break;
          return true;
          i = 0;
          break label19;
        }
        if (i == 0)
          break;
      }
      while (Math.abs(f1) <= this.mTouchSlop);
      return true;
    }
    while ((j == 0) || (Math.abs(f2) <= this.mTouchSlop));
    return true;
  }

  public boolean continueSettling(boolean paramBoolean)
  {
    boolean bool1;
    if (this.mDragState == 2)
    {
      bool1 = this.mScroller.computeScrollOffset();
      int i = this.mScroller.getCurrX();
      int j = this.mScroller.getCurrY();
      int k = i - this.mCapturedView.getLeft();
      int m = j - this.mCapturedView.getTop();
      if (k != 0)
        this.mCapturedView.offsetLeftAndRight(k);
      if (m != 0)
        this.mCapturedView.offsetTopAndBottom(m);
      if ((k != 0) || (m != 0))
        this.mCallback.onViewPositionChanged(this.mCapturedView, i, j, k, m);
      if ((!bool1) || (i != this.mScroller.getFinalX()) || (j != this.mScroller.getFinalY()))
        break label196;
      this.mScroller.abortAnimation();
    }
    label186: label196: for (boolean bool2 = this.mScroller.isFinished(); ; bool2 = bool1)
    {
      if (!bool2)
      {
        if (!paramBoolean)
          break label186;
        this.mParentView.post(this.mSetIdleRunnable);
      }
      while (this.mDragState == 2)
      {
        return true;
        setDragState(0);
      }
      return false;
    }
  }

  public View findTopChildUnder(int paramInt1, int paramInt2)
  {
    for (int i = -1 + this.mParentView.getChildCount(); i >= 0; i--)
    {
      View localView = this.mParentView.getChildAt(this.mCallback.getOrderedChildIndex(i));
      if ((paramInt1 >= localView.getLeft()) && (paramInt1 < localView.getRight()) && (paramInt2 >= localView.getTop()) && (paramInt2 < localView.getBottom()))
        return localView;
    }
    return null;
  }

  public void flingCapturedView(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (!this.mReleaseInProgress)
      throw new IllegalStateException("Cannot flingCapturedView outside of a call to Callback#onViewReleased");
    this.mScroller.fling(this.mCapturedView.getLeft(), this.mCapturedView.getTop(), (int)VelocityTrackerCompat.getXVelocity(this.mVelocityTracker, this.mActivePointerId), (int)VelocityTrackerCompat.getYVelocity(this.mVelocityTracker, this.mActivePointerId), paramInt1, paramInt3, paramInt2, paramInt4);
    setDragState(2);
  }

  public int getActivePointerId()
  {
    return this.mActivePointerId;
  }

  public View getCapturedView()
  {
    return this.mCapturedView;
  }

  public int getEdgeSize()
  {
    return this.mEdgeSize;
  }

  public float getMinVelocity()
  {
    return this.mMinVelocity;
  }

  public int getTouchSlop()
  {
    return this.mTouchSlop;
  }

  public int getViewDragState()
  {
    return this.mDragState;
  }

  public boolean isCapturedViewUnder(int paramInt1, int paramInt2)
  {
    return isViewUnder(this.mCapturedView, paramInt1, paramInt2);
  }

  public boolean isEdgeTouched(int paramInt)
  {
    int i = this.mInitialEdgesTouched.length;
    for (int j = 0; ; j++)
    {
      boolean bool = false;
      if (j < i)
      {
        if (isEdgeTouched(paramInt, j))
          bool = true;
      }
      else
        return bool;
    }
  }

  public boolean isEdgeTouched(int paramInt1, int paramInt2)
  {
    return (isPointerDown(paramInt2)) && ((paramInt1 & this.mInitialEdgesTouched[paramInt2]) != 0);
  }

  public boolean isPointerDown(int paramInt)
  {
    return (this.mPointersDown & 1 << paramInt) != 0;
  }

  public boolean isViewUnder(View paramView, int paramInt1, int paramInt2)
  {
    if (paramView == null);
    while ((paramInt1 < paramView.getLeft()) || (paramInt1 >= paramView.getRight()) || (paramInt2 < paramView.getTop()) || (paramInt2 >= paramView.getBottom()))
      return false;
    return true;
  }

  public void processTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = 0;
    int j = MotionEventCompat.getActionMasked(paramMotionEvent);
    int k = MotionEventCompat.getActionIndex(paramMotionEvent);
    if (j == 0)
      cancel();
    if (this.mVelocityTracker == null)
      this.mVelocityTracker = VelocityTracker.obtain();
    this.mVelocityTracker.addMovement(paramMotionEvent);
    int m;
    switch (j)
    {
    case 4:
    default:
    case 0:
    case 5:
      int i8;
      float f9;
      float f10;
      do
      {
        int i9;
        do
        {
          int i10;
          int i11;
          do
          {
            return;
            float f11 = paramMotionEvent.getX();
            float f12 = paramMotionEvent.getY();
            i10 = MotionEventCompat.getPointerId(paramMotionEvent, 0);
            View localView2 = findTopChildUnder((int)f11, (int)f12);
            saveInitialMotion(f11, f12, i10);
            tryCaptureViewForDrag(localView2, i10);
            i11 = this.mInitialEdgesTouched[i10];
          }
          while ((i11 & this.mTrackingEdges) == 0);
          this.mCallback.onEdgeTouched(i11 & this.mTrackingEdges, i10);
          return;
          i8 = MotionEventCompat.getPointerId(paramMotionEvent, k);
          f9 = MotionEventCompat.getX(paramMotionEvent, k);
          f10 = MotionEventCompat.getY(paramMotionEvent, k);
          saveInitialMotion(f9, f10, i8);
          if (this.mDragState != 0)
            break;
          tryCaptureViewForDrag(findTopChildUnder((int)f9, (int)f10), i8);
          i9 = this.mInitialEdgesTouched[i8];
        }
        while ((i9 & this.mTrackingEdges) == 0);
        this.mCallback.onEdgeTouched(i9 & this.mTrackingEdges, i8);
        return;
      }
      while (!isCapturedViewUnder((int)f9, (int)f10));
      tryCaptureViewForDrag(this.mCapturedView, i8);
      return;
    case 2:
      if (this.mDragState == 1)
      {
        int i5 = MotionEventCompat.findPointerIndex(paramMotionEvent, this.mActivePointerId);
        float f7 = MotionEventCompat.getX(paramMotionEvent, i5);
        float f8 = MotionEventCompat.getY(paramMotionEvent, i5);
        int i6 = (int)(f7 - this.mLastMotionX[this.mActivePointerId]);
        int i7 = (int)(f8 - this.mLastMotionY[this.mActivePointerId]);
        dragTo(i6 + this.mCapturedView.getLeft(), i7 + this.mCapturedView.getTop(), i6, i7);
        saveLastMotion(paramMotionEvent);
        return;
      }
      int i3 = MotionEventCompat.getPointerCount(paramMotionEvent);
      while (i < i3)
      {
        int i4 = MotionEventCompat.getPointerId(paramMotionEvent, i);
        float f3 = MotionEventCompat.getX(paramMotionEvent, i);
        float f4 = MotionEventCompat.getY(paramMotionEvent, i);
        float f5 = f3 - this.mInitialMotionX[i4];
        float f6 = f4 - this.mInitialMotionY[i4];
        reportNewEdgeDrags(f5, f6, i4);
        if (this.mDragState == 1)
          break;
        View localView1 = findTopChildUnder((int)f3, (int)f4);
        if ((checkTouchSlop(localView1, f5, f6)) && (tryCaptureViewForDrag(localView1, i4)))
          break;
        i++;
      }
      saveLastMotion(paramMotionEvent);
      return;
    case 6:
      m = MotionEventCompat.getPointerId(paramMotionEvent, k);
      if ((this.mDragState == 1) && (m == this.mActivePointerId))
      {
        int n = MotionEventCompat.getPointerCount(paramMotionEvent);
        if (i >= n)
          break label677;
        int i2 = MotionEventCompat.getPointerId(paramMotionEvent, i);
        if (i2 == this.mActivePointerId)
          break label635;
        float f1 = MotionEventCompat.getX(paramMotionEvent, i);
        float f2 = MotionEventCompat.getY(paramMotionEvent, i);
        if ((findTopChildUnder((int)f1, (int)f2) != this.mCapturedView) || (!tryCaptureViewForDrag(this.mCapturedView, i2)))
          break label635;
      }
      break;
    case 1:
    case 3:
    }
    label677: for (int i1 = this.mActivePointerId; ; i1 = -1)
    {
      if (i1 == -1)
        releaseViewForPointerUp();
      clearMotionHistory(m);
      return;
      label635: i++;
      break;
      if (this.mDragState == 1)
        releaseViewForPointerUp();
      cancel();
      return;
      if (this.mDragState == 1)
        dispatchViewReleased(0.0F, 0.0F);
      cancel();
      return;
    }
  }

  void setDragState(int paramInt)
  {
    if (this.mDragState != paramInt)
    {
      this.mDragState = paramInt;
      this.mCallback.onViewDragStateChanged(paramInt);
      if (paramInt == 0)
        this.mCapturedView = null;
    }
  }

  public void setEdgeTrackingEnabled(int paramInt)
  {
    this.mTrackingEdges = paramInt;
  }

  public void setMinVelocity(float paramFloat)
  {
    this.mMinVelocity = paramFloat;
  }

  public boolean settleCapturedViewAt(int paramInt1, int paramInt2)
  {
    if (!this.mReleaseInProgress)
      throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    return forceSettleCapturedViewAt(paramInt1, paramInt2, (int)VelocityTrackerCompat.getXVelocity(this.mVelocityTracker, this.mActivePointerId), (int)VelocityTrackerCompat.getYVelocity(this.mVelocityTracker, this.mActivePointerId));
  }

  public boolean shouldInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = MotionEventCompat.getActionMasked(paramMotionEvent);
    int j = MotionEventCompat.getActionIndex(paramMotionEvent);
    if (i == 0)
      cancel();
    if (this.mVelocityTracker == null)
      this.mVelocityTracker = VelocityTracker.obtain();
    this.mVelocityTracker.addMovement(paramMotionEvent);
    switch (i)
    {
    case 4:
    default:
    case 0:
    case 5:
    case 2:
    case 6:
    case 1:
    case 3:
    }
    while (this.mDragState == 1)
    {
      return true;
      float f7 = paramMotionEvent.getX();
      float f8 = paramMotionEvent.getY();
      int i3 = MotionEventCompat.getPointerId(paramMotionEvent, 0);
      saveInitialMotion(f7, f8, i3);
      View localView3 = findTopChildUnder((int)f7, (int)f8);
      if ((localView3 == this.mCapturedView) && (this.mDragState == 2))
        tryCaptureViewForDrag(localView3, i3);
      int i4 = this.mInitialEdgesTouched[i3];
      if ((i4 & this.mTrackingEdges) != 0)
      {
        this.mCallback.onEdgeTouched(i4 & this.mTrackingEdges, i3);
        continue;
        int i1 = MotionEventCompat.getPointerId(paramMotionEvent, j);
        float f5 = MotionEventCompat.getX(paramMotionEvent, j);
        float f6 = MotionEventCompat.getY(paramMotionEvent, j);
        saveInitialMotion(f5, f6, i1);
        if (this.mDragState == 0)
        {
          int i2 = this.mInitialEdgesTouched[i1];
          if ((i2 & this.mTrackingEdges) != 0)
            this.mCallback.onEdgeTouched(i2 & this.mTrackingEdges, i1);
        }
        else if (this.mDragState == 2)
        {
          View localView2 = findTopChildUnder((int)f5, (int)f6);
          if (localView2 == this.mCapturedView)
          {
            tryCaptureViewForDrag(localView2, i1);
            continue;
            int k = MotionEventCompat.getPointerCount(paramMotionEvent);
            for (int m = 0; m < k; m++)
            {
              int n = MotionEventCompat.getPointerId(paramMotionEvent, m);
              float f1 = MotionEventCompat.getX(paramMotionEvent, m);
              float f2 = MotionEventCompat.getY(paramMotionEvent, m);
              float f3 = f1 - this.mInitialMotionX[n];
              float f4 = f2 - this.mInitialMotionY[n];
              reportNewEdgeDrags(f3, f4, n);
              if (this.mDragState == 1)
                break;
              View localView1 = findTopChildUnder((int)f1, (int)f2);
              if ((localView1 != null) && (checkTouchSlop(localView1, f3, f4)) && (tryCaptureViewForDrag(localView1, n)))
                break;
            }
            saveLastMotion(paramMotionEvent);
            continue;
            clearMotionHistory(MotionEventCompat.getPointerId(paramMotionEvent, j));
            continue;
            cancel();
          }
        }
      }
    }
    return false;
  }

  public boolean smoothSlideViewTo(View paramView, int paramInt1, int paramInt2)
  {
    this.mCapturedView = paramView;
    this.mActivePointerId = -1;
    return forceSettleCapturedViewAt(paramInt1, paramInt2, 0, 0);
  }

  boolean tryCaptureViewForDrag(View paramView, int paramInt)
  {
    if ((paramView == this.mCapturedView) && (this.mActivePointerId == paramInt))
      return true;
    if ((paramView != null) && (this.mCallback.tryCaptureView(paramView, paramInt)))
    {
      this.mActivePointerId = paramInt;
      captureChildView(paramView, paramInt);
      return true;
    }
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.widget.ViewDragHelper
 * JD-Core Version:    0.6.2
 */