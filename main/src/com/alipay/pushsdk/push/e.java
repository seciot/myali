package com.alipay.pushsdk.push;

import com.alipay.pushsdk.push.e.d;

final class e
  implements Runnable
{
  private String b;

  public e(NotificationService paramNotificationService, String paramString)
  {
    this.b = paramString;
  }

  public final void run()
  {
    try
    {
      d locald = com.alipay.pushsdk.push.e.e.a(NotificationService.b(this.a), this.b);
      if (locald != null)
        locald.getBundleName();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.push.e
 * JD-Core Version:    0.6.2
 */