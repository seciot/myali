package com.alipay.pushsdk.b;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

final class d extends Handler
{
  private c a;

  public d(Looper paramLooper, c paramc)
  {
    super(paramLooper);
    this.a = paramc;
  }

  public final void handleMessage(Message paramMessage)
  {
    b localb = (b)paramMessage.obj;
    this.a.a().a(localb);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.b.d
 * JD-Core Version:    0.6.2
 */