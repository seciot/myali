package com.alipay.mobile.commonui.widget;

import com.nineoldandroids.animation.Animator;
import com.nineoldandroids.animation.AnimatorListenerAdapter;

class SwipeListViewTouchListener$4 extends AnimatorListenerAdapter
{
  SwipeListViewTouchListener$4(SwipeListViewTouchListener paramSwipeListViewTouchListener)
  {
  }

  public void onAnimationEnd(Animator paramAnimator)
  {
    SwipeListViewTouchListener.access$100(this.this$0).resetScrolling();
    SwipeListViewTouchListener.access$200(this.this$0);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.SwipeListViewTouchListener.4
 * JD-Core Version:    0.6.2
 */