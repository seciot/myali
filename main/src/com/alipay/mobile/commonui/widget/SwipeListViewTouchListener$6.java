package com.alipay.mobile.commonui.widget;

import com.nineoldandroids.animation.Animator;
import com.nineoldandroids.animation.AnimatorListenerAdapter;
import java.util.List;

class SwipeListViewTouchListener$6 extends AnimatorListenerAdapter
{
  SwipeListViewTouchListener$6(SwipeListViewTouchListener paramSwipeListViewTouchListener, boolean paramBoolean1, int paramInt, boolean paramBoolean2)
  {
  }

  public void onAnimationEnd(Animator paramAnimator)
  {
    SwipeListViewTouchListener.access$100(this.this$0).resetScrolling();
    boolean bool;
    if (this.val$swap)
    {
      if (((Boolean)SwipeListViewTouchListener.access$300(this.this$0).get(this.val$position)).booleanValue())
        break label119;
      bool = true;
      SwipeListViewTouchListener.access$300(this.this$0).set(this.val$position, Boolean.valueOf(bool));
      if (!bool)
        break label124;
      SwipeListViewTouchListener.access$100(this.this$0).onOpened(this.val$position, this.val$swapRight);
      SwipeListViewTouchListener.access$400(this.this$0).set(this.val$position, Boolean.valueOf(this.val$swapRight));
    }
    while (true)
    {
      SwipeListViewTouchListener.access$200(this.this$0);
      return;
      label119: bool = false;
      break;
      label124: SwipeListViewTouchListener.access$100(this.this$0).onClosed(this.val$position, ((Boolean)SwipeListViewTouchListener.access$400(this.this$0).get(this.val$position)).booleanValue());
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.SwipeListViewTouchListener.6
 * JD-Core Version:    0.6.2
 */