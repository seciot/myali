package com.alipay.mobile.quinox.classloader;

import com.alipay.mobile.quinox.bundle.BundlesManager;
import java.util.concurrent.ExecutorService;

final class c
  implements Runnable
{
  c(BootstrapClassLoader parama, ExecutorService paramExecutorService)
  {
  }

  public final void run()
  {
    try
    {
      Thread.sleep(10000L);
      BootstrapClassLoader.getBundle(this.b).getFullBundleName();
      this.a.shutdown();
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      while (true)
        localInterruptedException.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.quinox.classloader.c
 * JD-Core Version:    0.6.2
 */