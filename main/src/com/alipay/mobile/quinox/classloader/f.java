package com.alipay.mobile.quinox.classloader;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

final class f
  implements ThreadFactory
{
  private final AtomicInteger a = new AtomicInteger(0);

  public final Thread newThread(Runnable paramRunnable)
  {
    return new Thread(paramRunnable, "InitExecutor #" + this.a.incrementAndGet());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.quinox.classloader.f
 * JD-Core Version:    0.6.2
 */