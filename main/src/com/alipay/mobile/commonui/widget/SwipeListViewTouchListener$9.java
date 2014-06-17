package com.alipay.mobile.commonui.widget;

import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.nineoldandroids.animation.ValueAnimator;
import com.nineoldandroids.animation.ValueAnimator.AnimatorUpdateListener;

class SwipeListViewTouchListener$9
  implements ValueAnimator.AnimatorUpdateListener
{
  SwipeListViewTouchListener$9(SwipeListViewTouchListener paramSwipeListViewTouchListener, ViewGroup.LayoutParams paramLayoutParams, View paramView)
  {
  }

  public void onAnimationUpdate(ValueAnimator paramValueAnimator)
  {
    this.val$lp.height = ((Integer)paramValueAnimator.getAnimatedValue()).intValue();
    this.val$dismissView.setLayoutParams(this.val$lp);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.SwipeListViewTouchListener.9
 * JD-Core Version:    0.6.2
 */