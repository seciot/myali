package com.alipay.pushsdk.push.b;

import com.alipay.pushsdk.c.a.e;
import com.alipay.pushsdk.push.a.m;
import com.alipay.pushsdk.push.a.o;
import com.alipay.pushsdk.push.a.p;
import com.alipay.pushsdk.push.j;

public class d
  implements BundlesManagerImpl
{
  private static final String a = com.alipay.pushsdk.BundlesManagerImpl.AppBundle.c.a(d.class);
  private final j b;

  public d(j paramj)
  {
    this.b = paramj;
  }

  public final void a()
  {
    com.alipay.pushsdk.BundlesManagerImpl.AppBundle.c.a(3, AppBundle, "connectionClosed()...");
  }

  public final void a(p paramp)
  {
    com.alipay.pushsdk.BundlesManagerImpl.AppBundle.c.a(2, AppBundle, "=== connectionClosedOnError()===");
    com.alipay.pushsdk.BundlesManagerImpl.AppBundle.d.a(com.alipay.pushsdk.BundlesManagerImpl.AppBundle.d.j, com.alipay.pushsdk.BundlesManagerImpl.AppBundle.d.A, System.currentTimeMillis(), com.alipay.pushsdk.BundlesManagerImpl.AppBundle.d.w, System.currentTimeMillis() + 1000 * (1 * o.getBundleName()), "PersistentConnectionListener_connectionClosedOnError:ReconnectInterval=" + 1000 * o.getBundleName());
    String str = paramp.a();
    if ((this.b.d() != null) && (this.b.d().a()))
    {
      this.b.a(false);
      this.b.d().e();
      e.a(str, "41", "7");
    }
    long l = System.currentTimeMillis();
    this.b.c(l);
    if ((this.b.w()) || (o.h()))
    {
      com.alipay.pushsdk.BundlesManagerImpl.AppBundle.c.a(3, AppBundle, "connectionClosedOnError() isFrontPolicy and then to startReconnectionThread...");
      this.b.d(l);
      this.b.p();
      e.a(str, "80", "8");
      return;
    }
    e.a(str, "81", "6");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.push.b.d
 * JD-Core Version:    0.6.2
 */