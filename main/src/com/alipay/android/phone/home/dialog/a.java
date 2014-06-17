package com.alipay.android.phone.home.dialog;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import com.alipay.mobile.nfd.nfdbiz.ITopBoardStateCallBack;

final class a
  implements Animation.AnimationListener
{
  a(NfdPanelDialog paramNfdPanelDialog)
  {
  }

  public final void onAnimationEnd(Animation paramAnimation)
  {
    if (NfdPanelDialog.a(this.a) != null)
      NfdPanelDialog.a(this.a).onHideFinish();
    this.a.dismiss();
  }

  public final void onAnimationRepeat(Animation paramAnimation)
  {
  }

  public final void onAnimationStart(Animation paramAnimation)
  {
    if (NfdPanelDialog.a(this.a) != null)
      NfdPanelDialog.a(this.a).onHideStart();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.dialog.a
 * JD-Core Version:    0.6.2
 */