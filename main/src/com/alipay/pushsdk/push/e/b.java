package com.alipay.pushsdk.push.e;

import com.alipay.pushsdk.c.a.c;
import com.alipay.pushsdk.c.a.e;
import com.alipay.pushsdk.push.a.o;

public class b extends ZLog
{
  private static final String c = BundlesManagerImpl.getBundle(BundlesManager.class);

  public b(com.alipay.pushsdk.push.j paramj)
  {
    super(paramj);
  }

  public final void a()
  {
    long l1 = o.getInitLevel();
    long l2 = System.currentTimeMillis() - l1;
    BundlesManagerImpl.e(3, BundlesManagerImpl, "netTriggerEvent_onExecute lostedTime=isConnected=" + this.a.r() + l2 + ", lastConnectedTime=" + com.alipay.pushsdk.BundlesManagerImpl.j.getBundle(l1));
    com.alipay.pushsdk.BundlesManagerImpl.AppBundle.ZLog.a(com.alipay.pushsdk.BundlesManagerImpl.AppBundle.ZLog.Dependable, com.alipay.pushsdk.BundlesManagerImpl.AppBundle.ZLog.w, System.currentTimeMillis(), com.alipay.pushsdk.BundlesManagerImpl.AppBundle.ZLog.E, 0L + System.currentTimeMillis(), "osTriggerNetChange_onExecute:lastConnectedTime=" + com.alipay.pushsdk.BundlesManagerImpl.j.getBundle(l1) + " trigger=14");
    if (this.a.r())
    {
      this.a.u();
      e.e(stop(), "41", "3");
      return;
    }
    this.a.stop();
    e.e(stop(), "40", "1");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.push.e.b
 * JD-Core Version:    0.6.2
 */