package com.alipay.mobile.commonui.widget;

import android.view.View;
import com.nineoldandroids.animation.Animator;
import com.nineoldandroids.animation.AnimatorListenerAdapter;

class SwipeListViewTouchListener$5 extends AnimatorListenerAdapter
{
  SwipeListViewTouchListener$5(SwipeListViewTouchListener paramSwipeListViewTouchListener, boolean paramBoolean, View paramView, int paramInt)
  {
  }

  public void onAnimationEnd(Animator paramAnimator)
  {
    if (this.val$swap)
    {
      this.this$0.closeOpenedItems();
      this.this$0.performDismiss(this.val$view, this.val$position, true);
    }
    SwipeListViewTouchListener.access$200(this.this$0);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.SwipeListViewTouchListener.5
 * JD-Core Version:    0.6.2
 */