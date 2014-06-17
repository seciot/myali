package com.alipay.mobile.alipassapp.viewcontrol;

import android.os.Handler;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

final class e
  implements Animation.AnimationListener
{
  e(a parama)
  {
  }

  public final void onAnimationEnd(Animation paramAnimation)
  {
    a.c(this.a).post(new g(this));
  }

  public final void onAnimationRepeat(Animation paramAnimation)
  {
  }

  public final void onAnimationStart(Animation paramAnimation)
  {
    a.c(this.a).post(new f(this));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.viewcontrol.e
 * JD-Core Version:    0.6.2
 */