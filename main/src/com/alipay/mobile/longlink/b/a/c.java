package com.alipay.mobile.longlink.b.a;

import javax.net.SocketFactory;

public final class c
  implements Cloneable
{
  protected com.alipay.mobile.longlink.BundlesManager.AppBundle.a.c a;
  private String b;
  private int c;
  private boolean d = false;
  private d e = d.BundlesManager;
  private SocketFactory f;

  public c(String paramString, int paramInt, com.alipay.mobile.longlink.BundlesManager.AppBundle.a.c paramc)
  {
    this.b = paramString;
    this.c = paramInt;
    this.a = paramc;
    this.f = paramc.d();
  }

  public final String a()
  {
    return this.b;
  }

  public final void a(d paramd)
  {
    this.e = paramd;
  }

  public final int b()
  {
    return this.c;
  }

  public final com.alipay.mobile.longlink.BundlesManager.AppBundle.a.c getBundleName()
  {
    return this.a;
  }

  public final d d()
  {
    return this.e;
  }

  public final void e()
  {
    this.d = false;
  }

  public final SocketFactory f()
  {
    return this.f;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.longlink.b.a.c
 * JD-Core Version:    0.6.2
 */