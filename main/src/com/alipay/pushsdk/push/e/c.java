package com.alipay.pushsdk.push.e;

import com.alipay.pushsdk.c.a.e;
import com.alipay.pushsdk.push.a.o;
import com.alipay.pushsdk.push.j;

public final class c extends ZLog
{
  public c(j paramj)
  {
    super(paramj);
  }

  public final void a()
  {
    if ((this.a.w()) || (o.hasResource()))
    {
      this.a.stop();
      e.e(stop(), "80", "1");
      return;
    }
    this.a.p();
    e.e(stop(), "81", "8");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.push.e.c
 * JD-Core Version:    0.6.2
 */