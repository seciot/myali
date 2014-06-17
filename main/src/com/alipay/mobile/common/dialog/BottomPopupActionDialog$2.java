package com.alipay.mobile.common.dialog;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

class BottomPopupActionDialog$2
  implements Animation.AnimationListener
{
  BottomPopupActionDialog$2(BottomPopupActionDialog paramBottomPopupActionDialog)
  {
  }

  public void onAnimationEnd(Animation paramAnimation)
  {
    this.this$0.realDismiss();
  }

  public void onAnimationRepeat(Animation paramAnimation)
  {
  }

  public void onAnimationStart(Animation paramAnimation)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.dialog.BottomPopupActionDialog.2
 * JD-Core Version:    0.6.2
 */