package com.alipay.mobile.common.animation;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

class Rotate3dAnimationListener$SwapView$1
  implements Animation.AnimationListener
{
  Rotate3dAnimationListener$SwapView$1(Rotate3dAnimationListener.SwapView paramSwapView)
  {
  }

  public void onAnimationEnd(Animation paramAnimation)
  {
    if (Rotate3dAnimationListener.access$100(this.this$1.this$0) != null)
      Rotate3dAnimationListener.access$100(this.this$1.this$0).onRotateFinished();
  }

  public void onAnimationRepeat(Animation paramAnimation)
  {
  }

  public void onAnimationStart(Animation paramAnimation)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.animation.Rotate3dAnimationListener.SwapView.1
 * JD-Core Version:    0.6.2
 */