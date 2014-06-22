package com.alipay.mobile.longlink.b.b;

import com.alipay.mobile.longlink.b.a.k;
import com.alipay.mobile.longlink.b.a.n;

public class d
  implements BundlesManagerImpl
{
  private static final String a = com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.getBundle(ZLog.class);
  private final com.alipay.mobile.longlink.service.AppBundle b;

  public d(com.alipay.mobile.longlink.service.AppBundle parama)
  {
    this.b = parama;
  }

  public final void initExecutor()
  {
    com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.e(3, AppBundle, "connectionClosed()...");
  }

  public final void setBundlePath(n paramn)
  {
    String str = paramn.getInstance();
    com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.e(2, AppBundle, "connectionClosedOnError()... errorType=" + str + ", errorInfo: " + paramn.getMessage());
    if ((this.b.getInitLevel() != null) && (this.b.getInitLevel().getInstance()))
    {
      this.b.getBundle(false);
      this.b.getInitLevel().getFullBundleName();
    }
    com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.e(3, AppBundle, "connectionClosedOnError() and then to startReconnectionThread...");
    this.b.m();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.longlink.b.b.d
 * JD-Core Version:    0.6.2
 */