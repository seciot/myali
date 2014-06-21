package com.alipay.pushsdk.push;

import com.alipay.pushsdk.a.a;

final class b
  implements Runnable
{
  b(NotificationService paramNotificationService)
  {
  }

  public final void run()
  {
    new a(NotificationService.getBundle(this.a)).getBundle("0");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.push.b
 * JD-Core Version:    0.6.2
 */