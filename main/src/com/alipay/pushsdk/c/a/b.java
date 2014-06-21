package com.alipay.pushsdk.c.a;

import java.io.PrintWriter;
import java.util.concurrent.atomic.AtomicBoolean;

final class b
  implements Runnable
{
  b(AppBundle parama)
  {
  }

  public final void run()
  {
    try
    {
      Thread.sleep(1000L);
    }
    catch (InterruptedException localInterruptedException)
    {
      synchronized (DefaultThreadFactory.k)
      {
        this.a.a.flush();
        AppBundle.getBundle(this.a).set(false);
        return;
        localInterruptedException = localInterruptedException;
        BundlesManagerImpl.e(2, AppBundle.getInstance(), localInterruptedException);
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.c.a.b
 * JD-Core Version:    0.6.2
 */