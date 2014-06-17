package com.alipay.mobile.alipassapp.ui.common;

import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;

final class ay extends GestureDetector.SimpleOnGestureListener
{
  ay(ViewPagerScrollView paramViewPagerScrollView)
  {
  }

  public final boolean onScroll(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    if (ViewPagerScrollView.access$000(this.a))
    {
      if (Math.abs(paramFloat2) < Math.abs(paramFloat1))
        break label40;
      ViewPagerScrollView.access$002(this.a, true);
    }
    while (true)
    {
      return ViewPagerScrollView.access$000(this.a);
      label40: ViewPagerScrollView.access$002(this.a, false);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.common.ay
 * JD-Core Version:    0.6.2
 */