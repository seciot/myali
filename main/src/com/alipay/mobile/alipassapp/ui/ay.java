package com.alipay.mobile.alipassapp.ui;

import com.alipay.mobile.commonui.widget.APTitleBar;

final class ay
  implements Runnable
{
  ay(AlipassListActivity paramAlipassListActivity, boolean paramBoolean)
  {
  }

  public final void run()
  {
    if (this.b.a != null)
    {
      if (this.a)
        this.b.a.startProgressBar();
    }
    else
      return;
    this.b.a.stopProgressBar();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.ay
 * JD-Core Version:    0.6.2
 */