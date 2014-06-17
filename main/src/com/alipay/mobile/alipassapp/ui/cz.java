package com.alipay.mobile.alipassapp.ui;

import android.os.Handler;
import android.os.Message;

final class cz extends Handler
{
  cz(AlipassSchemeTransferActivity paramAlipassSchemeTransferActivity)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
      return;
    case 1:
    }
    AlipassSchemeTransferActivity.b(this.a);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.cz
 * JD-Core Version:    0.6.2
 */