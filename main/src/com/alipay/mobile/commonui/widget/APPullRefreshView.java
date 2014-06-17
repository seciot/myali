package com.alipay.mobile.commonui.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.FrameLayout.LayoutParams;

public class APPullRefreshView extends APFrameLayout
  implements GestureDetector.OnGestureListener
{
  private byte a;
  private GestureDetector b;
  private APPullRefreshView.Flinger c;
  private APPullRefreshView.RefreshListener d;
  private int e;
  private boolean f = true;
  protected int mMaxMagin;
  protected APOverView mOverView;

  public APPullRefreshView(Context paramContext)
  {
    super(paramContext);
    a();
  }

  public APPullRefreshView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }

  public APPullRefreshView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a();
  }

  private void a()
  {
    this.b = new GestureDetector(this);
    this.c = new APPullRefreshView.Flinger(this);
  }

  private void a(int paramInt)
  {
    if ((this.d != null) && (paramInt > this.mMaxMagin))
    {
      this.a = 4;
      this.c.recover(paramInt - this.mMaxMagin);
      return;
    }
    this.a = 3;
    this.c.recover(paramInt);
  }

  private boolean a(int paramInt, boolean paramBoolean)
  {
    View localView1 = getChildAt(0);
    View localView2 = getChildAt(1);
    int i = paramInt + localView2.getTop();
    if ((this.mMaxMagin > 0) && (paramBoolean))
      this.mOverView.onPullto(i / this.mMaxMagin, this.a);
    if (i <= 0)
    {
      if (i < 0)
        paramInt = -localView2.getTop();
      localView1.offsetTopAndBottom(paramInt);
      localView2.offsetTopAndBottom(paramInt);
      if (this.a != 5)
        this.a = 0;
    }
    while (true)
    {
      invalidate();
      return true;
      if (i <= this.mMaxMagin)
      {
        if (this.mOverView.getState() != 1)
        {
          this.mOverView.onOpen();
          this.mOverView.setState((byte)1);
        }
        localView1.offsetTopAndBottom(paramInt);
        localView2.offsetTopAndBottom(paramInt);
        if ((paramBoolean) && (this.a != 5))
        {
          this.a = 1;
        }
        else if ((i <= this.mMaxMagin) && (this.a == 4) && (this.d != null))
        {
          this.a = 5;
          this.mOverView.onLoad();
          this.mOverView.setState((byte)3);
          this.d.onRefresh();
        }
      }
      else if (this.a != 5)
      {
        if (this.mOverView.getState() != 2)
        {
          this.mOverView.onOver();
          this.mOverView.setState((byte)2);
        }
        localView1.offsetTopAndBottom(paramInt);
        localView2.offsetTopAndBottom(paramInt);
        if (paramBoolean)
          this.a = 2;
      }
    }
  }

  public void autoRefresh()
  {
    this.a = 5;
    this.mOverView.onLoad();
    this.mOverView.setState((byte)3);
    requestLayout();
  }

  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool2;
    if (!this.f)
      bool2 = super.dispatchTouchEvent(paramMotionEvent);
    boolean bool1;
    do
    {
      return bool2;
      bool1 = this.c.isFinished();
      bool2 = false;
    }
    while (!bool1);
    View localView = getChildAt(0);
    if (((paramMotionEvent.getAction() == 1) || (paramMotionEvent.getAction() == 3) || (paramMotionEvent.getAction() == 262) || (paramMotionEvent.getAction() == 518)) && (localView.getBottom() > 0))
    {
      if ((this.a == 5) && (localView.getBottom() > this.mMaxMagin))
      {
        a(localView.getBottom() - this.mMaxMagin);
        return false;
      }
      if (this.a != 5)
      {
        a(localView.getBottom());
        return false;
      }
    }
    boolean bool3 = this.b.onTouchEvent(paramMotionEvent);
    if (((bool3) || ((this.a != 0) && (this.a != 5))) && (localView.getBottom() != 0))
    {
      paramMotionEvent.setAction(3);
      return super.dispatchTouchEvent(paramMotionEvent);
    }
    if (bool3)
      return true;
    return super.dispatchTouchEvent(paramMotionEvent);
  }

  public boolean onDown(MotionEvent paramMotionEvent)
  {
    return false;
  }

  public boolean onFling(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    return false;
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    View localView1 = getChildAt(0);
    View localView2 = getChildAt(1);
    int i = localView2.getTop();
    if (this.a == 5)
    {
      localView1.layout(0, this.mMaxMagin - localView1.getMeasuredHeight(), paramInt3, localView1.getMeasuredHeight());
      localView2.layout(0, this.mMaxMagin, paramInt3, this.mMaxMagin + localView2.getMeasuredHeight());
    }
    while (true)
    {
      for (int j = 2; j < getChildCount(); j++)
        getChildAt(j).layout(0, paramInt2, paramInt3, paramInt4);
      localView1.layout(0, i - localView1.getMeasuredHeight(), paramInt3, i);
      localView2.layout(0, i, paramInt3, i + localView2.getMeasuredHeight());
    }
  }

  public void onLongPress(MotionEvent paramMotionEvent)
  {
  }

  public boolean onScroll(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    if (Math.abs(paramFloat1) > Math.abs(paramFloat2))
      return false;
    if ((this.d != null) && (!this.d.canRefresh()))
      return false;
    View localView1 = getChildAt(0);
    View localView2 = getChildAt(1);
    View localView3;
    if (!(localView2 instanceof AdapterView))
    {
      localView3 = ((ViewGroup)getChildAt(1)).getChildAt(0);
      if (!(localView3 instanceof AdapterView));
    }
    while (true)
    {
      if ((localView3 instanceof AdapterView))
      {
        if ((((AdapterView)localView3).getFirstVisiblePosition() != 0) || ((((AdapterView)localView3).getFirstVisiblePosition() == 0) && (((AdapterView)localView3).getChildAt(0) != null) && (((AdapterView)localView3).getChildAt(0).getTop() < 0)))
          return false;
      }
      else if (localView3.getScrollY() > 0)
        return false;
      if (((this.a == 5) && (localView1.getTop() > 0) && (paramFloat2 > 0.0F)) || ((getChildAt(1).getTop() <= 0) && (paramFloat2 > 0.0F)))
        return false;
      if ((this.a == 3) || (this.a == 4) || (this.a == 6))
        return false;
      int i = this.e;
      if (localView1.getTop() >= 0)
        i = this.e / 2;
      a(i, true);
      this.e = ((int)-paramFloat2);
      return true;
      localView3 = localView2;
    }
  }

  public void onShowPress(MotionEvent paramMotionEvent)
  {
  }

  public boolean onSingleTapUp(MotionEvent paramMotionEvent)
  {
    return false;
  }

  public void refreshFinished()
  {
    View localView = getChildAt(0);
    this.mOverView.onFinish();
    this.mOverView.setState((byte)4);
    if (localView.getBottom() > 0)
    {
      this.a = 6;
      a(localView.getBottom());
      return;
    }
    this.a = 0;
  }

  public void setEnablePull(boolean paramBoolean)
  {
    this.f = paramBoolean;
  }

  public void setRefreshListener(APPullRefreshView.RefreshListener paramRefreshListener)
  {
    if (this.mOverView != null)
      removeView(this.mOverView);
    this.d = paramRefreshListener;
    this.mOverView = this.d.getOverView();
    FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-1, -2);
    addView(this.mOverView, 0, localLayoutParams);
    getViewTreeObserver().addOnGlobalLayoutListener(new APPullRefreshView.1(this));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APPullRefreshView
 * JD-Core Version:    0.6.2
 */