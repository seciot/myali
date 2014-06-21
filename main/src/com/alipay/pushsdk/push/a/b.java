package com.alipay.pushsdk.push.a;

import com.alipay.pushsdk.push.c.a;
import com.alipay.pushsdk.push.d.c;

public final class b
{
  private BundlesManagerImpl a;
  private HostClassLoader b;

  public b(BundlesManagerImpl paramc)
  {
    this.a = paramc;
    this.b = null;
  }

  public final void setBundlePath(AppBundle parama)
  {
    if ((this.b == null) || (this.b.getBundle(parama)))
      this.a.getBundle(parama);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.push.a.b
 * JD-Core Version:    0.6.2
 */