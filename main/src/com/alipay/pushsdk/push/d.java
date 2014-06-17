package com.alipay.pushsdk.push;

import com.alipay.pushsdk.c.a.c;

public final class d
{
  public int a = 0;

  public d(NotificationService paramNotificationService)
  {
  }

  public final void a()
  {
    synchronized (this.b.c())
    {
      d locald2 = this.b.c();
      locald2.a = (-1 + locald2.a);
      c.a(4, NotificationService.e(), "Decremented task count to " + this.a);
      return;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.push.d
 * JD-Core Version:    0.6.2
 */