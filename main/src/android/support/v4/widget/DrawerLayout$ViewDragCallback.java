package android.support.v4.widget;

import android.view.View;

class DrawerLayout$ViewDragCallback extends ViewDragHelper.Callback
{
  private ViewDragHelper mDragger;
  private final int mGravity;
  private final Runnable mPeekRunnable = new DrawerLayout.ViewDragCallback.1(this);

  public DrawerLayout$ViewDragCallback(DrawerLayout paramDrawerLayout, int paramInt)
  {
    this.mGravity = paramInt;
  }

  private void closeOtherDrawer()
  {
    int i = 3;
    if (this.mGravity == i)
      i = 5;
    View localView = this.this$0.findDrawerWithGravity(i);
    if (localView != null)
      this.this$0.closeDrawer(localView);
  }

  private void peekDrawer()
  {
    int i = this.mDragger.getEdgeSize();
    int j;
    int i1;
    Object localObject;
    if (this.mGravity == 3)
    {
      j = 1;
      if (j == 0)
        break label164;
      View localView2 = this.this$0.findDrawerWithGravity(3);
      int n = 0;
      if (localView2 != null)
        n = -localView2.getWidth();
      i1 = n + i;
      localObject = localView2;
    }
    label164: int k;
    for (int m = i1; ; m = k)
    {
      if ((localObject != null) && (((j != 0) && (((View)localObject).getLeft() < m)) || ((j == 0) && (((View)localObject).getLeft() > m) && (this.this$0.getDrawerLockMode((View)localObject) == 0))))
      {
        DrawerLayout.LayoutParams localLayoutParams = (DrawerLayout.LayoutParams)((View)localObject).getLayoutParams();
        this.mDragger.smoothSlideViewTo((View)localObject, m, ((View)localObject).getTop());
        localLayoutParams.isPeeking = true;
        this.this$0.invalidate();
        closeOtherDrawer();
        this.this$0.cancelChildViewTouch();
      }
      return;
      j = 0;
      break;
      View localView1 = this.this$0.findDrawerWithGravity(5);
      k = this.this$0.getWidth() - i;
      localObject = localView1;
    }
  }

  public int clampViewPositionHorizontal(View paramView, int paramInt1, int paramInt2)
  {
    if (this.this$0.checkDrawerViewGravity(paramView, 3))
      return Math.max(-paramView.getWidth(), Math.min(paramInt1, 0));
    int i = this.this$0.getWidth();
    return Math.max(i - paramView.getWidth(), Math.min(paramInt1, i));
  }

  public int clampViewPositionVertical(View paramView, int paramInt1, int paramInt2)
  {
    return paramView.getTop();
  }

  public int getViewHorizontalDragRange(View paramView)
  {
    return paramView.getWidth();
  }

  public void onEdgeDragStarted(int paramInt1, int paramInt2)
  {
    if ((paramInt1 & 0x1) == 1);
    for (View localView = this.this$0.findDrawerWithGravity(3); ; localView = this.this$0.findDrawerWithGravity(5))
    {
      if ((localView != null) && (this.this$0.getDrawerLockMode(localView) == 0))
        this.mDragger.captureChildView(localView, paramInt2);
      return;
    }
  }

  public boolean onEdgeLock(int paramInt)
  {
    return false;
  }

  public void onEdgeTouched(int paramInt1, int paramInt2)
  {
    this.this$0.postDelayed(this.mPeekRunnable, 160L);
  }

  public void onViewCaptured(View paramView, int paramInt)
  {
    ((DrawerLayout.LayoutParams)paramView.getLayoutParams()).isPeeking = false;
    closeOtherDrawer();
  }

  public void onViewDragStateChanged(int paramInt)
  {
    this.this$0.updateDrawerState(this.mGravity, paramInt, this.mDragger.getCapturedView());
  }

  public void onViewPositionChanged(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = paramView.getWidth();
    float f;
    if (this.this$0.checkDrawerViewGravity(paramView, 3))
    {
      f = (i + paramInt1) / i;
      this.this$0.setDrawerViewOffset(paramView, f);
      if (f != 0.0F)
        break label82;
    }
    label82: for (int j = 4; ; j = 0)
    {
      paramView.setVisibility(j);
      this.this$0.invalidate();
      return;
      f = (this.this$0.getWidth() - paramInt1) / i;
      break;
    }
  }

  public void onViewReleased(View paramView, float paramFloat1, float paramFloat2)
  {
    float f = this.this$0.getDrawerViewOffset(paramView);
    int i = paramView.getWidth();
    int j;
    if (this.this$0.checkDrawerViewGravity(paramView, 3))
      if ((paramFloat1 > 0.0F) || ((paramFloat1 == 0.0F) && (f > 0.5F)))
        j = 0;
    while (true)
    {
      this.mDragger.settleCapturedViewAt(j, paramView.getTop());
      this.this$0.invalidate();
      return;
      j = -i;
      continue;
      j = this.this$0.getWidth();
      if ((paramFloat1 < 0.0F) || ((paramFloat1 == 0.0F) && (f < 0.5F)))
        j -= i;
    }
  }

  public void removeCallbacks()
  {
    this.this$0.removeCallbacks(this.mPeekRunnable);
  }

  public void setDragger(ViewDragHelper paramViewDragHelper)
  {
    this.mDragger = paramViewDragHelper;
  }

  public boolean tryCaptureView(View paramView, int paramInt)
  {
    return (this.this$0.isDrawerView(paramView)) && (this.this$0.checkDrawerViewGravity(paramView, this.mGravity)) && (this.this$0.getDrawerLockMode(paramView) == 0);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.widget.DrawerLayout.ViewDragCallback
 * JD-Core Version:    0.6.2
 */