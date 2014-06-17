package com.alipay.pushsdk.push;

import com.alipay.pushsdk.push.c.a;

final class m
  implements Runnable
{
  final j a;

  private m(j paramj)
  {
    this.a = paramj;
  }

  public final void run()
  {
    com.alipay.pushsdk.c.a.c.a(4, j.z(), "===== HeartBeatTask() Runnable=====");
    if (this.a.s())
      try
      {
        a locala = com.alipay.pushsdk.push.c.c.a(j.j(this.b));
        locala.a(3);
        locala.b(0);
        locala.a("");
        com.alipay.pushsdk.c.a.c.a(4, j.z(), "HeartBeatTask() heartBeat will be sent! length=" + locala.g());
        this.a.d().a(locala);
        return;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return;
      }
    com.alipay.pushsdk.c.a.c.a(3, j.z(), "Account registered has not been done.");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.push.m
 * JD-Core Version:    0.6.2
 */