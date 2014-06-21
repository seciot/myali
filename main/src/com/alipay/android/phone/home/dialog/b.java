package com.alipay.android.phone.home.dialog;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import com.alipay.mobile.nfd.nfdbiz.ITopBoardStateCallBack;

final class b
  implements Animation.AnimationListener
{
  b(NfdPanelDialog paramNfdPanelDialog)
  {
  }

  public final void onAnimationEnd(Animation paramAnimation)
  {
    if (NfdPanelDialog.getBundle(this.a) != null)
      NfdPanelDialog.getBundle(this.a).onShowFinish();
  }

  public final void onAnimationRepeat(Animation paramAnimation)
  {
  }

  public final void onAnimationStart(Animation paramAnimation)
  {
    if (NfdPanelDialog.getBundle(this.a) != null)
      NfdPanelDialog.getBundle(this.a).onShowStart();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.dialog.b
 * JD-Core Version:    0.6.2
 */