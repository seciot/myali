package com.alipay.mobile.longlink.b.d;

import com.alipay.mobile.longlink.b.a.k;
import com.alipay.mobile.longlink.b.c.d;
import com.alipay.mobile.longlink.b.c.f;

public class a
  implements c
{
  private static final String a = com.alipay.mobile.longlink.c.AppBundle.a(AppBundle.class);
  private final com.alipay.mobile.longlink.service.AppBundle b;

  public a(com.alipay.mobile.longlink.service.AppBundle parama)
  {
    this.b = parama;
  }

  public final void a(com.alipay.mobile.longlink.BundlesManager.c.AppBundle parama)
  {
    if (new f(3).a(parama))
    {
      com.alipay.mobile.longlink.c.AppBundle.a(3, AppBundle, "processPacket() got one HeartBeatPacket from Server!");
      if (parama.b() != 0);
    }
    try
    {
      com.alipay.mobile.longlink.BundlesManager.c.AppBundle locala = com.alipay.mobile.longlink.BundlesManager.c.c.a(this.b.g());
      locala.a(3);
      locala.b(1);
      locala.a("");
      this.b.d().a(locala);
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