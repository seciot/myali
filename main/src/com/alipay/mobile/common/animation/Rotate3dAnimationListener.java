package com.alipay.mobile.common.animation;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

public final class Rotate3dAnimationListener
  implements Animation.AnimationListener
{
  private boolean a;
  private View b;
  private RotateAnimationListener c;

  public Rotate3dAnimationListener(boolean paramBoolean, View paramView)
  {
    this.a = paramBoolean;
    this.b = paramView;
  }

  public final RotateAnimationListener getmRotateAnimationListener()
  {
    return this.c;
  }

  public final void onAnimationEnd(Animation paramAnimation)
  {
    this.b.post(new Rotate3dAnimationListener.SwapView(this, this.a));
  }

  public final void onAnimationRepeat(Animation paramAnimation)
  {
  }

  public final void onAnimationStart(Animation paramAnimation)
  {
  }

  public final void setmRotateAnimationListener(RotateAnimationListener paramRotateAnimationListener)
  {
    this.c = paramRotateAnimationListener;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.animation.Rotate3dAnimationListener
 * JD-Core Version:    0.6.2
 */