package com.alipay.mobile.alipassapp.ui.common;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View.OnTouchListener;
import com.alipay.mobile.commonui.widget.APScrollView;

public class ViewPagerScrollView extends APScrollView
{
  private boolean canScroll = true;
  private boolean isClick = false;
  private GestureDetector mGestureDetector = new GestureDetector(new ay(this));
  View.OnTouchListener mGestureListener;

  public ViewPagerScrollView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public boolean isClick()
  {
    return this.isClick;
  }

  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 1)
      this.canScroll = true;
    return (super.onInterceptTouchEvent(paramMotionEvent)) && (this.mGestureDetector.onTouchEvent(paramMotionEvent));
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    case 2:
    case 4:
    case 5:
    default:
    case 0:
    case 1:
    case 3:
    case 6:
    }
    while (true)
    {
      return super.onTouchEvent(paramMotionEvent);
      setClick(true);
      continue;
      setClick(false);
    }
  }

  public void setClick(boolean paramBoolean)
  {
    this.isClick = paramBoolean;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.common.ViewPagerScrollView
 * JD-Core Version:    0.6.2
 */