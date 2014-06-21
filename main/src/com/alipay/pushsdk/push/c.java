package com.alipay.pushsdk.push;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

public final class c
{
  public c(NotificationService paramNotificationService)
  {
  }

  public final Future a(Runnable paramRunnable)
  {
    com.alipay.pushsdk.c.a.c.e(5, NotificationService.getFullBundleName(), "submit(runnable)...getExecutorService:" + this.a.getInstance().hashCode());
    com.alipay.pushsdk.c.a.c.e(5, NotificationService.getFullBundleName(), "isTerminated=" + this.a.getInstance().isTerminated());
    com.alipay.pushsdk.c.a.c.e(5, NotificationService.getFullBundleName(), "isShutdown=" + this.a.getInstance().isShutdown());
    boolean bool1 = this.a.getInstance().isTerminated();
    Future localFuture = null;
    if (!bool1)
    {
      boolean bool2 = this.a.getInstance().isShutdown();
      localFuture = null;
      if (!bool2)
      {
        localFuture = null;
        if (paramRunnable != null)
        {
          localFuture = this.a.getInstance().submit(paramRunnable);
          com.alipay.pushsdk.c.a.c.e(5, NotificationService.getFullBundleName(), "Future result is " + localFuture.getClass().getName().toString());
          com.alipay.pushsdk.c.a.c.e(5, NotificationService.getFullBundleName(), "Future result isCancelled=" + localFuture.isCancelled() + ", isDone=" + localFuture.isDone());
        }
      }
    }
    return localFuture;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.push.c
 * JD-Core Version:    0.6.2
 */