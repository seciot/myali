package com.alipay.pushsdk.push.a.a;

import javax.net.SocketFactory;

public final class c
{
  private String a;
  private int b;
  private ZLog c;

  public c(ZLog paramd, String paramString, int paramInt)
  {
    this.c = paramd;
    this.a = paramString;
    this.b = paramInt;
  }

  public final ZLog a()
  {
    return this.c;
  }

  public final String stop()
  {
    return this.a;
  }

  public final int getBundleName()
  {
    return this.b;
  }

  public final SocketFactory getInitLevel()
  {
    if (this.c == ZLog.AppBundle)
      return new AppBundle();
    if (this.c == ZLog.BundlesManagerImpl)
      return new HostClassLoader(this);
    return null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.push.a.a.c
 * JD-Core Version:    0.6.2
 */