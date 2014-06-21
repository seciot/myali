package com.alipay.pushsdk.push.b;

import com.alipay.pushsdk.c.a.c;
import com.alipay.pushsdk.c.a.d;
import com.alipay.pushsdk.c.a.e;
import com.alipay.pushsdk.push.a.m;
import com.alipay.pushsdk.push.a.o;
import com.alipay.pushsdk.push.j;

public class b
  implements AppBundle
{
  private static final String b = BundlesManagerImpl.getBundle(BundlesManager.class);
  j a;

  public b(j paramj)
  {
    this.a = paramj;
  }

  public final void a()
  {
    this.a.getInitLevel().getBundleName();
    BundlesManagerImpl.e(5, BundlesManager, "getConnection=" + this.a.getInitLevel().hashCode());
    ZLog.a(ZLog.r, ZLog.x, System.currentTimeMillis(), ZLog.y, 10000L + System.currentTimeMillis(), "ConnectInitListener_onSuccess:setConnected");
    BundlesManagerImpl.e(3, BundlesManager, "===== Connected onSuccess()=====");
    this.a.y();
    this.a.getInitLevel().getBundle(this.a.getBundleVersion());
    this.a.t();
    long l = System.currentTimeMillis();
    o.getBundle(l);
    this.a.b(l);
    BundlesManagerImpl.e(3, BundlesManager, "onSuccess setLastConnectedTime.");
    e.e("31", "01", "2");
  }

  public final void stop()
  {
    ZLog.a(ZLog.r, ZLog.A, System.currentTimeMillis(), ZLog.w, 10000L + System.currentTimeMillis(), "ConnectInitListener_onFail");
    BundlesManagerImpl.e(2, BundlesManager, "===== Connected onFail()=====");
    this.a.y();
    if ((this.a.w()) || (o.hasResource()))
    {
      BundlesManagerImpl.e(3, BundlesManager, "onFail() isFrontPolicy and then to startReconnectionThread...");
      this.a.p();
      e.e("50", "80", "8");
      return;
    }
    e.e("50", "81", "6");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.push.b.b
 * JD-Core Version:    0.6.2
 */