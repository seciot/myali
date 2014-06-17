package com.alipay.android.phone.home.ui;

import android.view.View;
import com.alipay.mobile.nfd.nfdbiz.ITopBoardStateCallBack;

final class l
  implements ITopBoardStateCallBack
{
  l(HeaderAreaLayout paramHeaderAreaLayout)
  {
  }

  public final void onHideFinish()
  {
    HeaderAreaLayout.j(this.a).setVisibility(0);
  }

  public final void onHideStart()
  {
  }

  public final void onShowFinish()
  {
  }

  public final void onShowStart()
  {
    HeaderAreaLayout.j(this.a).setVisibility(4);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.ui.l
 * JD-Core Version:    0.6.2
 */