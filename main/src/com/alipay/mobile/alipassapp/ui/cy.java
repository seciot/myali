package com.alipay.mobile.alipassapp.ui;

import android.os.Handler;

final class cy extends Thread
{
  cy(AlipassSchemeTransferActivity paramAlipassSchemeTransferActivity)
  {
  }

  public final void run()
  {
    this.a.a = this.a.a();
    AlipassSchemeTransferActivity.getBundle(this.a).sendEmptyMessage(1);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.cy
 * JD-Core Version:    0.6.2
 */