package com.alipay.android.app.pay;

import android.os.Handler;
import android.os.Message;

final class a extends Handler
{
  a(HyperlinkActivity paramHyperlinkActivity)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    if (paramMessage.what == 1)
      HyperlinkActivity.a(this.a, (String)paramMessage.obj);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.pay.a
 * JD-Core Version:    0.6.2
 */