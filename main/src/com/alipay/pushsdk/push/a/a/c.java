package com.alipay.pushsdk.push.a.a;

import javax.net.SocketFactory;

public final class c
{
  private String a;
  private int b;
  private d c;

  public c(d paramd, String paramString, int paramInt)
  {
    this.c = paramd;
    this.a = paramString;
    this.b = paramInt;
  }

  public final d a()
  {
    return this.c;
  }

  public final String b()
  {
    return this.a;
  }

  public final int getBundleName()
  {
    return this.b;
  }

  public final SocketFactory getInitLevel()
  {
    if (this.c == d.AppBundle)
      return new AppBundle();
    if (this.c == d.BundlesManagerImpl)
      return new e(this);
    return null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.push.a.a.c
 * JD-Core Version:    0.6.2
 */