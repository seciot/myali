package com.alipay.mobile.longlink.b.b;

import com.alipay.mobile.longlink.b.a.k;
import com.alipay.mobile.longlink.b.a.n;

public class d
  implements c
{
  private static final String a = com.alipay.mobile.longlink.c.AppBundle.a(d.class);
  private final com.alipay.mobile.longlink.service.AppBundle b;

  public d(com.alipay.mobile.longlink.service.AppBundle parama)
  {
    this.b = parama;
  }

  public final void a()
  {
    com.alipay.mobile.longlink.c.AppBundle.a(3, AppBundle, "connectionClosed()...");
  }

  public final void a(n paramn)
  {
    String str = paramn.a();
    com.alipay.mobile.longlink.c.AppBundle.a(2, AppBundle, "connectionClosedOnError()... errorType=" + str + ", errorInfo: " + paramn.getMessage());
    if ((this.b.d() != null) && (this.b.d().a()))
    {
      this.b.a(false);
      this.b.d().e();
    }
    com.alipay.mobile.longlink.c.AppBundle.a(3, AppBundle, "connectionClosedOnError() and then to startReconnectionThread...");
    this.b.m();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.longlink.b.b.d
 * JD-Core Version:    0.6.2
 */