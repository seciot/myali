package com.alipay.mobile.longlink.b.a;

import com.alipay.mobile.longlink.b.c.a;
import com.alipay.mobile.longlink.b.c.d;
import com.alipay.mobile.longlink.b.d.c;

public final class b
{
  private BundlesManagerImpl a;
  private d b;

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
 * Qualified Name:     com.alipay.mobile.longlink.b.a.b
 * JD-Core Version:    0.6.2
 */