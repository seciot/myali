package com.alipay.pushsdk.c.a;

import java.io.PrintWriter;
import java.util.concurrent.atomic.AtomicBoolean;

final class b
  implements Runnable
{
  b(a parama)
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
      synchronized (f.k)
      {
        this.a.a.flush();
        a.a(this.a).set(false);
        return;
        localInterruptedException = localInterruptedException;
        c.a(2, a.a(), localInterruptedException);
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.c.a.b
 * JD-Core Version:    0.6.2
 */