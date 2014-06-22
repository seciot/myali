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
    com.alipay.mobile.longlink.c.a.e(4, a.x(), "===== HeartBeatTask() Runnable=====");
    if (this.a.p())
      try
      {
        com.alipay.mobile.longlink.b.c.a locala = c.getBundle(a.i(this.b));
        locala.getBundle(3);
        locala.dexopt(0);
        locala.getBundle("");
        com.alipay.mobile.longlink.c.a.e(4, a.x(), "HeartBeatTask() heartBeat will be sent! length=" + locala.getBundleName());
        this.a.d().getBundle(locala);
        return;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return;
      }
    com.alipay.mobile.longlink.c.a.e(3, a.x(), "Account registered has not been done.");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.longlink.service.d
 * JD-Core Version:    0.6.2
 */