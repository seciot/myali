package com.alipay.mobile.alipassapp.ui.common;

import android.view.ViewTreeObserver.OnGlobalLayoutListener;

final class ap
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  ap(BoardingpassPrimaryFieldLayout paramBoardingpassPrimaryFieldLayout)
  {
  }

  public final void onGlobalLayout()
  {
    if (this.a.mIsFirstAjust)
    {
      BoardingpassPrimaryFieldLayout.access$200(this.a, BoardingpassPrimaryFieldLayout.access$000(this.a), BoardingpassPrimaryFieldLayout.access$100(this.a));
      BoardingpassPrimaryFieldLayout.access$200(this.a, BoardingpassPrimaryFieldLayout.access$300(this.a), BoardingpassPrimaryFieldLayout.access$400(this.a));
    }
    this.a.mIsFirstAjust = false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.common.ap
 * JD-Core Version:    0.6.2
 */