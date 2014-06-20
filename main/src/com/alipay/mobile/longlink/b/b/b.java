package com.alipay.mobile.longlink.b.b;

import com.alipay.mobile.longlink.b.a.k;

public class b
  implements AppBundle
{
  private static final String b = com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.a(BundlesManager.class);
  com.alipay.mobile.longlink.service.AppBundle a;

  public b(com.alipay.mobile.longlink.service.AppBundle parama)
  {
    this.a = parama;
  }

  public final void a()
  {
    this.a.d().getBundleName();
    com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.a(5, BundlesManager, "getConnection=" + this.a.d().hashCode());
    com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.a(3, BundlesManager, "===== Connected onSuccess()=====");
    this.a.d().a(this.a.h());
    this.a.r();
  }

  public final void b()
  {
    com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.a(2, BundlesManager, "===== Connected onFail()=====");
    this.a.m();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.longlink.b.b.b
 * JD-Core Version:    0.6.2
 */