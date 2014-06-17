package com.alipay.mobile.common.misc;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View.OnTouchListener;
import android.widget.ScrollView;

public class ScrollViewExtend extends ScrollView
{
  private boolean a = true;
  private GestureDetector b = new GestureDetector(new ScrollViewExtend.YScrollDetector(this));
  View.OnTouchListener mGestureListener;

  public ScrollViewExtend(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 1)
      this.a = true;
    return (super.onInterceptTouchEvent(paramMotionEvent)) && (this.b.onTouchEvent(paramMotionEvent));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.misc.ScrollViewExtend
 * JD-Core Version:    0.6.2
 */