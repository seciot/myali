package com.alipay.mobile.longlink.service;

import com.alipay.mobile.longlink.b.a.k;
import com.alipay.mobile.longlink.b.b.b;

final class c
  implements Runnable
{
  final a a;
  private com.alipay.mobile.longlink.b.b.a c;

  private c(a parama, b paramb)
  {
    this.a = parama;
    this.c = paramb;
  }

  public final void run()
  {
    com.alipay.mobile.longlink.c.a.e(3, a.x(), "===== ConnectTask.run()=====");
    com.alipay.mobile.longlink.c.a.e(5, a.x(), "===== ConnectTask connManager=" + this.a.hashCode());
    if (!this.a.o())
    {
      a.dexopt(this.b);
      a.getBundleByComponentName(this.b);
      com.alipay.mobile.longlink.b.a.a.c localc;
      com.alipay.mobile.longlink.b.a.c localc1;
      if ((a.d(this.b) != null) && (a.d(this.b).length() > 0) && (a.removeBundle(this.b) != 0))
      {
        localc = new com.alipay.mobile.longlink.b.a.a.c(com.alipay.mobile.longlink.b.a.a.d.c, a.d(this.b), a.removeBundle(this.b));
        localc1 = new com.alipay.mobile.longlink.b.a.c(a.f(this.b), a.g(this.b), localc);
        if ((a.h(this.b) == null) || (!a.h(this.b).equals("1")))
          break label244;
        localc1.getBundle(com.alipay.mobile.longlink.b.a.d.a);
      }
      while (true)
      {
        localc1.getFullBundleName();
        k localk = new k(localc1);
        this.a.a(localk);
        this.a.d().getBundle(a.i(this.b));
        this.a.d().getBundle(this.c);
        return;
        localc = new com.alipay.mobile.longlink.b.a.a.c(com.alipay.mobile.longlink.b.a.a.d.a, null, 0);
        break;
        label244: localc1.getBundle(com.alipay.mobile.longlink.b.a.d.c);
      }
    }
    com.alipay.mobile.longlink.c.a.e(3, a.x(), "The connManager is connected now.");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.longlink.service.c
 * JD-Core Version:    0.6.2
 */