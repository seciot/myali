package com.alipay.mobile.alipassapp.viewcontrol;

import android.os.Handler;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

final class h
  implements Animation.AnimationListener
{
  h(a parama)
  {
  }

  public final void onAnimationEnd(Animation paramAnimation)
  {
    a.c(this.a).post(new j(this));
  }

  public final void onAnimationRepeat(Animation paramAnimation)
  {
  }

  public final void onAnimationStart(Animation paramAnimation)
  {
    a.c(this.a).post(new i(this));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.viewcontrol.h
 * JD-Core Version:    0.6.2
 */