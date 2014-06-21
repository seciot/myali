package com.alipay.mobile.longlink.service;

import com.alipay.mobile.longlink.b.a.k;

final class b
  implements Runnable
{
  final a a = this.b;

  b(a parama)
  {
  }

  public final void run()
  {
    com.alipay.mobile.longlink.c.a.e(5, a.x(), "terminatePersistentConnection()... called. connection:" + a.getBundle(this.b).hashCode());
    if (this.b.o())
    {
      com.alipay.mobile.longlink.c.a.e(4, a.x(), "terminatePersistentConnection()... run()");
      this.a.d().b(this.a.i());
      this.a.d().b(this.a.j());
      this.a.d().b(this.a.j());
      this.a.d().b(this.a.l());
      this.b.getInitLevel().getFullBundleName();
      com.alipay.mobile.longlink.c.a.e(4, a.x(), "terminatePersistentConnection()...Done!");
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.longlink.service.b
 * JD-Core Version:    0.6.2
 */