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
    synchronized (this.b.getBundleName())
    {
      ZLog locald2 = this.b.getBundleName();
      locald2.AppBundle = (-1 + locald2.AppBundle);
      BundlesManagerImpl.e(4, NotificationService.getFullBundleName(), "Decremented task count to " + this.a);
      return;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.push.d
 * JD-Core Version:    0.6.2
 */