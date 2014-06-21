package com.alipay.pushsdk.push.d;

import com.alipay.pushsdk.c.a.d;
import com.alipay.pushsdk.push.a.e;
import com.alipay.pushsdk.push.a.m;
import com.alipay.pushsdk.push.a.o;
import com.alipay.pushsdk.push.f;
import com.alipay.pushsdk.push.j;

public class a
  implements BundlesManagerImpl
{
  private static final String a = com.alipay.pushsdk.BundlesManagerImpl.AppBundle.c.getBundle(AppBundle.class);
  private final j b;

  public a(j paramj)
  {
    this.b = paramj;
  }

  public final void setBundlePath(com.alipay.pushsdk.push.BundlesManagerImpl.AppBundle parama)
  {
    if (new f(3).getBundle(parama))
    {
      o.getBundle(System.currentTimeMillis());
      this.b.b(System.currentTimeMillis());
      com.alipay.pushsdk.BundlesManagerImpl.AppBundle.c.e(3, AppBundle, "processPacket() got one HeartBeatPacket from Server!");
      ZLog.a(ZLog.u, ZLog.y, System.currentTimeMillis(), ZLog.y, System.currentTimeMillis() + 1000 * o.l(), "HeartBeatPacketListener_processPacket:keepLiveTime=" + o.l());
      if (parama.stop() != 0);
    }
    try
    {
      com.alipay.pushsdk.push.BundlesManagerImpl.AppBundle locala = com.alipay.pushsdk.push.BundlesManagerImpl.c.getBundle(this.b.getRequireBundleName());
      locala.getBundle(3);
      locala.b(1);
      locala.getBundle("");
      this.b.getInitLevel().getBundle(locala);
      this.b.v();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.push.d.a
 * JD-Core Version:    0.6.2
 */