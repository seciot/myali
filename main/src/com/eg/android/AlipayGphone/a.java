package com.eg.android.AlipayGphone;

import android.os.Handler;
import android.os.Message;

final class a extends Handler
{
  a(AlipayLogin paramAlipayLogin)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
      return;
    case 2:
    }
    AlipayLogin.getBundle(this.a);
    AlipayLogin.b(this.a);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.eg.android.AlipayGphone.a
 * JD-Core Version:    0.6.2
 */