package com.alipay.pushsdk.push;

import com.alipay.pushsdk.c.a.c;
import com.alipay.pushsdk.push.a.m;

final class k
  implements Runnable
{
  final j a = this.b;

  k(j paramj)
  {
  }

  public final void run()
  {
    c.a(5, j.z(), "terminatePersistentConnection()... called. connection:" + j.a(this.b).hashCode());
    if (this.b.r())
    {
      c.a(4, j.z(), "terminatePersistentConnection()... run()");
      this.a.d().b(this.a.l());
      this.a.d().b(this.a.m());
      this.a.d().b(this.a.m());
      this.a.d().b(this.a.o());
      this.b.d().e();
      c.a(4, j.z(), "terminatePersistentConnection()...Done!");
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.push.k
 * JD-Core Version:    0.6.2
 */