package com.alipay.mobile.commonui.widget;

import com.nineoldandroids.animation.Animator;
import com.nineoldandroids.animation.AnimatorListenerAdapter;

class SwipeListViewTouchListener$8 extends AnimatorListenerAdapter
{
  SwipeListViewTouchListener$8(SwipeListViewTouchListener paramSwipeListViewTouchListener, int paramInt)
  {
  }

  public void onAnimationEnd(Animator paramAnimator)
  {
    SwipeListViewTouchListener.access$706(this.this$0);
    if (SwipeListViewTouchListener.access$700(this.this$0) == 0)
      SwipeListViewTouchListener.access$800(this.this$0, this.val$originalHeight);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.SwipeListViewTouchListener.8
 * JD-Core Version:    0.6.2
 */