package com.alipay.mobile.longlink.b.b;

import com.alipay.mobile.longlink.b.a.k;
import com.alipay.mobile.longlink.b.a.n;

public class d
  implements c
{
  private static final String a = com.alipay.mobile.longlink.c.a.a(d.class);
  private final com.alipay.mobile.longlink.service.a b;

  public d(com.alipay.mobile.longlink.service.a parama)
  {
    this.b = parama;
  }

  public final void a()
  {
    com.alipay.mobile.longlink.c.a.a(3, a, "connectionClosed()...");
  }

  public final void a(n paramn)
  {
    String str = paramn.a();
    com.alipay.mobile.longlink.c.a.a(2, a, "connectionClosedOnError()... errorType=" + str + ", errorInfo: " + paramn.getMessage());
    if ((this.b.d() != null) && (this.b.d().a()))
    {
      this.b.a(false);
      this.b.d().e();
    }
    com.alipay.mobile.longlink.c.a.a(3, a, "connectionClosedOnError() and then to startReconnectionThread...");
    this.b.m();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.longlink.b.b.d
 * JD-Core Version:    0.6.2
 */