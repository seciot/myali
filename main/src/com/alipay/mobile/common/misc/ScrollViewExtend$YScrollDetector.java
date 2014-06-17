package com.alipay.mobile.common.misc;

import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;

class ScrollViewExtend$YScrollDetector extends GestureDetector.SimpleOnGestureListener
{
  ScrollViewExtend$YScrollDetector(ScrollViewExtend paramScrollViewExtend)
  {
  }

  public boolean onScroll(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    if (ScrollViewExtend.access$000(this.this$0))
    {
      if (Math.abs(paramFloat2) < Math.abs(paramFloat1))
        break label40;
      ScrollViewExtend.access$002(this.this$0, true);
    }
    while (true)
    {
      return ScrollViewExtend.access$000(this.this$0);
      label40: ScrollViewExtend.access$002(this.this$0, false);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.misc.ScrollViewExtend.YScrollDetector
 * JD-Core Version:    0.6.2
 */