package com.alipay.mobile.longlink.service;

import com.alipay.mobile.longlink.b.a.k;

final class g
  implements Runnable
{
  final a a;

  private g(a parama)
  {
    this.a = parama;
  }

  public final void run()
  {
    com.alipay.mobile.longlink.c.a.a(4, a.x(), "===== ReconnectTask() Runnable=====");
    synchronized (this.b)
    {
      if (this.a.d() != null)
        this.b.d().f();
      this.a.w();
      this.a.u();
      this.a.a(false);
      if (this.a.q())
      {
        com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.a(3, AppBundle.x(), "ReconnectTask() return because of flag(forcestopped).");
        return;
      }
    }
    if ((this.a.e() != null) && (this.a.e().length() > 0))
    {
      com.alipay.mobile.longlink.c.a.a(4, a.x(), "ReconnectTask() getUsername=" + this.a.e());
      try
      {
        Thread.sleep(100L);
        this.a.v();
        return;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return;
      }
    }
    com.alipay.mobile.longlink.c.a.a(3, a.x(), "ReconnectTask() there isn't valind user and give up connecting.");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.longlink.service.g
 * JD-Core Version:    0.6.2
 */