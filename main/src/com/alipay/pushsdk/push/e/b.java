package com.alipay.pushsdk.push.e;

import com.alipay.pushsdk.c.a.c;
import com.alipay.pushsdk.c.a.e;
import com.alipay.pushsdk.push.a.o;

public class b extends d
{
  private static final String c = c.a(b.class);

  public b(com.alipay.pushsdk.push.j paramj)
  {
    super(paramj);
  }

  public final void a()
  {
    long l1 = o.d();
    long l2 = System.currentTimeMillis() - l1;
    c.a(3, c, "netTriggerEvent_onExecute lostedTime=isConnected=" + this.a.r() + l2 + ", lastConnectedTime=" + com.alipay.pushsdk.c.j.a(l1));
    com.alipay.pushsdk.c.a.d.a(com.alipay.pushsdk.c.a.d.h, com.alipay.pushsdk.c.a.d.w, System.currentTimeMillis(), com.alipay.pushsdk.c.a.d.E, 0L + System.currentTimeMillis(), "osTriggerNetChange_onExecute:lastConnectedTime=" + com.alipay.pushsdk.c.j.a(l1) + " trigger=14");
    if (this.a.r())
    {
      this.a.u();
      e.a(b(), "41", "3");
      return;
    }
    this.a.b();
    e.a(b(), "40", "1");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.push.e.b
 * JD-Core Version:    0.6.2
 */