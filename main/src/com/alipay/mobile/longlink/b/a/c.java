package com.alipay.mobile.longlink.b.a;

import javax.net.SocketFactory;

public final class c
  implements Cloneable
{
  protected com.alipay.mobile.longlink.BundlesManager.AppBundle.ExceptionHandler.BundlesManagerImpl a;
  private String b;
  private int c;
  private boolean d = false;
  private ZLog e = ZLog.BundlesManager;
  private SocketFactory f;

  public c(String paramString, int paramInt, com.alipay.mobile.longlink.BundlesManager.AppBundle.ExceptionHandler.BundlesManagerImpl paramc)
  {
    this.b = paramString;
    this.c = paramInt;
    this.a = paramc;
    this.f = paramc.getInitLevel();
  }

  public final String a()
  {
    return this.b;
  }

  public final void setBundlePath(ZLog paramd)
  {
    this.e = paramd;
  }

  public final int stop()
  {
    return this.c;
  }

  public final com.alipay.mobile.longlink.BundlesManager.AppBundle.ExceptionHandler.BundlesManagerImpl getBundleName()
  {
    return this.a;
  }

  public final ZLog getInitLevel()
  {
    return this.e;
  }

  public final void getFullBundleName()
  {
    this.d = false;
  }

  public final SocketFactory getBundlePath()
  {
    return this.f;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.longlink.b.a.c
 * JD-Core Version:    0.6.2
 */