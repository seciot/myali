package com.alipay.pushsdk.c;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

final class g
  implements ThreadFactory
{
  private final AtomicInteger b = new AtomicInteger(0);

  g(e parame)
  {
  }

  public final Thread newThread(Runnable paramRunnable)
  {
    if (e.getBundle(this.a) == null)
      e.v(this.a, "SerialExecutor");
    return new Thread(paramRunnable, e.getBundle(this.a) + "  #" + this.b.incrementAndGet());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.c.g
 * JD-Core Version:    0.6.2
 */