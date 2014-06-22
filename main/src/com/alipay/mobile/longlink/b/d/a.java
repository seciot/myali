package com.alipay.mobile.longlink.b.d;

import com.alipay.mobile.longlink.b.a.k;
import com.alipay.mobile.longlink.b.c.d;
import com.alipay.mobile.longlink.b.c.f;

public class a
  implements BundlesManagerImpl
{
  private static final String a = com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.getBundle(AppBundle.class);
  private final com.alipay.mobile.longlink.service.AppBundle b;

  public a(com.alipay.mobile.longlink.service.AppBundle parama)
  {
    this.b = parama;
  }

  public final void setBundlePath(com.alipay.mobile.longlink.BundlesManager.BundlesManagerImpl.AppBundle parama)
  {
    if (new DefaultThreadFactory(3).getBundle(parama))
    {
      com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.e(3, AppBundle, "processPacket() got one HeartBeatPacket from Server!");
      if (parama.stop() != 0);
    }
    try
    {
      com.alipay.mobile.longlink.BundlesManager.BundlesManagerImpl.AppBundle locala = com.alipay.mobile.longlink.BundlesManager.BundlesManagerImpl.FileUtil.getBundle(this.b.g());
      locala.getBundle(3);
      locala.dexopt(1);
      locala.getBundle("");
      this.b.getInitLevel().getBundle(locala);
      this.b.t();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.longlink.b.d.a
 * JD-Core Version:    0.6.2
 */