package com.alipay.mobile.alipassapp.viewcontrol;

import android.os.Handler;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import com.alipay.mobile.commonui.widget.APTitleBar;

final class c
  implements Animation.AnimationListener
{
  c(a parama, boolean paramBoolean, APTitleBar paramAPTitleBar)
  {
  }

  public final void onAnimationEnd(Animation paramAnimation)
  {
    a.c(this.c).post(new d(this));
  }

  public final void onAnimationRepeat(Animation paramAnimation)
  {
  }

  public final void onAnimationStart(Animation paramAnimation)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.viewcontrol.c
 * JD-Core Version:    0.6.2
 */