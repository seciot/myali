package com.nineoldandroids.view;

import android.animation.Animator;

class ViewPropertyAnimatorICS$1
  implements android.animation.Animator.AnimatorListener
{
  ViewPropertyAnimatorICS$1(ViewPropertyAnimatorICS paramViewPropertyAnimatorICS, com.nineoldandroids.animation.Animator.AnimatorListener paramAnimatorListener)
  {
  }

  public void onAnimationCancel(Animator paramAnimator)
  {
    this.val$listener.onAnimationCancel(null);
  }

  public void onAnimationEnd(Animator paramAnimator)
  {
    this.val$listener.onAnimationEnd(null);
  }

  public void onAnimationRepeat(Animator paramAnimator)
  {
    this.val$listener.onAnimationRepeat(null);
  }

  public void onAnimationStart(Animator paramAnimator)
  {
    this.val$listener.onAnimationStart(null);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.nineoldandroids.view.ViewPropertyAnimatorICS.1
 * JD-Core Version:    0.6.2
 */