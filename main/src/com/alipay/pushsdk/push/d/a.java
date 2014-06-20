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
  private static final String a = com.alipay.pushsdk.BundlesManagerImpl.AppBundle.c.a(AppBundle.class);
  private final j b;

  public a(j paramj)
  {
    this.b = paramj;
  }

  public final void a(com.alipay.pushsdk.push.BundlesManagerImpl.AppBundle parama)
  {
    if (new f(3).a(parama))
    {
      o.a(System.currentTimeMillis());
      this.b.b(System.currentTimeMillis());
      com.alipay.pushsdk.BundlesManagerImpl.AppBundle.c.a(3, AppBundle, "processPacket() got one HeartBeatPacket from Server!");
      d.a(d.u, d.y, System.currentTimeMillis(), d.y, System.currentTimeMillis() + 1000 * o.l(), "HeartBeatPacketListener_processPacket:keepLiveTime=" + o.l());
      if (parama.b() != 0);
    }
    try
    {
      com.alipay.pushsdk.push.BundlesManagerImpl.AppBundle locala = com.alipay.pushsdk.push.BundlesManagerImpl.c.a(this.b.j());
      locala.a(3);
      locala.b(1);
      locala.a("");
      this.b.d().a(locala);
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