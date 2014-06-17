package com.alipay.mobile.alipassapp.ui;

import com.alipay.mobile.commonui.widget.APLinearLayout;

final class ax
  implements Runnable
{
  ax(AlipassListActivity paramAlipassListActivity)
  {
  }

  public final void run()
  {
    if (AlipassListActivity.j(this.a) != null)
      AlipassListActivity.j(this.a).setVisibility(8);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.ax
 * JD-Core Version:    0.6.2
 */