package com.alipay.mobile.longlink.service;

import com.alipay.mobile.longlink.ILongLinkPacketNotifer;
import com.alipay.mobile.longlink.ILongLinkService.Stub;

class n extends ILongLinkService.Stub
{
  private n(LongLinkService paramLongLinkService)
  {
  }

  public void a()
  {
    q.b();
    LongLinkService.a.b(false);
    LongLinkService.a.m();
  }

  public void a(ILongLinkPacketNotifer paramILongLinkPacketNotifer)
  {
    LongLinkService.a.a(paramILongLinkPacketNotifer);
  }

  public void a(String paramString)
  {
    LongLinkService.a.b(paramString);
  }

  public void a(String paramString1, int paramInt, String paramString2)
  {
    k localk = new k(paramString1, paramInt, paramString2);
    LongLinkService.a.a(localk);
  }

  public void a(String paramString1, String paramString2, String paramString3)
  {
    l locall = l.a();
    locall.a(paramString1);
    locall.b(paramString2);
    locall.c(paramString3);
    com.alipay.mobile.longlink.c.a.a(3, LongLinkService.e(), "setAppUserInfo() userId=" + paramString1 + ", loginTime=" + paramString3);
    LongLinkService.a.a(locall.c());
    LongLinkService.a.b(false);
    q.b();
    LongLinkService.a.m();
  }

  public void b()
  {
    LongLinkService.a.b(true);
    LongLinkService.a.c();
  }

  public boolean c()
  {
    return LongLinkService.a.o();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.longlink.service.n
 * JD-Core Version:    0.6.2
 */