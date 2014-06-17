package com.alipay.pushsdk.push.b;

import com.alipay.pushsdk.c.a.c;
import com.alipay.pushsdk.c.a.d;
import com.alipay.pushsdk.c.a.e;
import com.alipay.pushsdk.push.a.m;
import com.alipay.pushsdk.push.a.o;
import com.alipay.pushsdk.push.j;

public class b
  implements a
{
  private static final String b = c.a(b.class);
  j a;

  public b(j paramj)
  {
    this.a = paramj;
  }

  public final void a()
  {
    this.a.d().c();
    c.a(5, b, "getConnection=" + this.a.d().hashCode());
    d.a(d.r, d.x, System.currentTimeMillis(), d.y, 10000L + System.currentTimeMillis(), "ConnectInitListener_onSuccess:setConnected");
    c.a(3, b, "===== Connected onSuccess()=====");
    this.a.y();
    this.a.d().a(this.a.k());
    this.a.t();
    long l = System.currentTimeMillis();
    o.a(l);
    this.a.b(l);
    c.a(3, b, "onSuccess setLastConnectedTime.");
    e.a("31", "01", "2");
  }

  public final void b()
  {
    d.a(d.r, d.A, System.currentTimeMillis(), d.w, 10000L + System.currentTimeMillis(), "ConnectInitListener_onFail");
    c.a(2, b, "===== Connected onFail()=====");
    this.a.y();
    if ((this.a.w()) || (o.h()))
    {
      c.a(3, b, "onFail() isFrontPolicy and then to startReconnectionThread...");
      this.a.p();
      e.a("50", "80", "8");
      return;
    }
    e.a("50", "81", "6");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.push.b.b
 * JD-Core Version:    0.6.2
 */