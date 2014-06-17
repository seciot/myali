package com.alipay.mobile.longlink.service;

import com.alipay.mobile.longlink.c.a;

public final class p
{
  public int a = 0;

  public p(LongLinkService paramLongLinkService)
  {
  }

  public final void a()
  {
    synchronized (this.b.c())
    {
      p localp2 = this.b.c();
      localp2.a = (-1 + localp2.a);
      a.a(4, LongLinkService.e(), "Decremented task count to " + this.a);
      return;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.longlink.service.p
 * JD-Core Version:    0.6.2
 */