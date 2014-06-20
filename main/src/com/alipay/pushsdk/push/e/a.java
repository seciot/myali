package com.alipay.pushsdk.push.e;

import com.alipay.pushsdk.c.a.c;
import com.alipay.pushsdk.c.a.e;
import com.alipay.pushsdk.push.a.o;
import com.alipay.pushsdk.push.p;

public class a extends d
{
  private static final String c = c.a(AppBundle.class);

  public a(com.alipay.pushsdk.push.j paramj)
  {
    super(paramj);
  }

  public final void a()
  {
    long l1 = this.a.h();
    long l2 = o.d();
    long l3 = System.currentTimeMillis() - l2;
    c.a(3, c, "osTriggerEvent_onExecute isConnected=" + this.a.r() + ", lostedTime=" + l3 + ", lastConnectedTime=" + com.alipay.pushsdk.c.j.a(l2) + ", lastCreateConnectTime=" + com.alipay.pushsdk.c.j.a(l1));
    com.alipay.pushsdk.c.AppBundle.d.a(com.alipay.pushsdk.c.AppBundle.d.h, com.alipay.pushsdk.c.AppBundle.d.w, System.currentTimeMillis(), com.alipay.pushsdk.c.AppBundle.d.E, 0L + System.currentTimeMillis(), "osTriggerEvent_onExecute:lastConnectedTime=" + com.alipay.pushsdk.c.j.a(l2) + " trigger=" + b());
    if (l1 == 0L)
    {
      this.a.b();
      e.a(b(), "01", "1");
      return;
    }
    if (this.a.r())
    {
      this.a.u();
      e.a(b(), "41", "3");
      return;
    }
    if (p.a() < 0)
    {
      this.a.p();
      e.a(b(), "70", "8");
      return;
    }
    e.a(b(), "71", "6");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.push.e.a
 * JD-Core Version:    0.6.2
 */