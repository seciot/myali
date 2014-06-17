package com.alipay.mobile.longlink.service;

import com.alipay.mobile.longlink.b.a.k;
import com.alipay.mobile.longlink.b.c.c;

final class d
  implements Runnable
{
  final a a;

  private d(a parama)
  {
    this.a = parama;
  }

  public final void run()
  {
    com.alipay.mobile.longlink.c.a.a(4, a.x(), "===== HeartBeatTask() Runnable=====");
    if (this.a.p())
      try
      {
        com.alipay.mobile.longlink.b.c.a locala = c.a(a.i(this.b));
        locala.a(3);
        locala.b(0);
        locala.a("");
        com.alipay.mobile.longlink.c.a.a(4, a.x(), "HeartBeatTask() heartBeat will be sent! length=" + locala.c());
        this.a.d().a(locala);
        return;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return;
      }
    com.alipay.mobile.longlink.c.a.a(3, a.x(), "Account registered has not been done.");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.longlink.service.d
 * JD-Core Version:    0.6.2
 */