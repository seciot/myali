package com.alipay.pushsdk.push.e;

import com.alipay.pushsdk.c.a.c;
import com.alipay.pushsdk.c.a.e;
import com.alipay.pushsdk.push.a.o;
import com.alipay.pushsdk.push.p;

public class a extends ZLog
{
  private static final String c = BundlesManagerImpl.getBundle(AppBundle.class);

  public a(com.alipay.pushsdk.push.j paramj)
  {
    super(paramj);
  }

  public final void a()
  {
    long l1 = this.a.hasResource();
    long l2 = o.getInitLevel();
    long l3 = System.currentTimeMillis() - l2;
    BundlesManagerImpl.e(3, BundlesManagerImpl, "osTriggerEvent_onExecute isConnected=" + this.a.r() + ", lostedTime=" + l3 + ", lastConnectedTime=" + com.alipay.pushsdk.BundlesManagerImpl.j.getBundle(l2) + ", lastCreateConnectTime=" + com.alipay.pushsdk.BundlesManagerImpl.j.getBundle(l1));
    com.alipay.pushsdk.BundlesManagerImpl.AppBundle.ZLog.a(com.alipay.pushsdk.BundlesManagerImpl.AppBundle.ZLog.Dependable, com.alipay.pushsdk.BundlesManagerImpl.AppBundle.ZLog.w, System.currentTimeMillis(), com.alipay.pushsdk.BundlesManagerImpl.AppBundle.ZLog.E, 0L + System.currentTimeMillis(), "osTriggerEvent_onExecute:lastConnectedTime=" + com.alipay.pushsdk.BundlesManagerImpl.j.getBundle(l2) + " trigger=" + stop());
    if (l1 == 0L)
    {
      this.a.stop();
      e.e(stop(), "01", "1");
      return;
    }
    if (this.a.r())
    {
      this.a.u();
      e.e(stop(), "41", "3");
      return;
    }
    if (p.a() < 0)
    {
      this.a.p();
      e.e(stop(), "70", "8");
      return;
    }
    e.e(stop(), "71", "6");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.push.e.a
 * JD-Core Version:    0.6.2
 */