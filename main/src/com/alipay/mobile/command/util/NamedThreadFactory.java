package com.alipay.mobile.command.util;

import android.text.TextUtils;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

public class NamedThreadFactory
  implements ThreadFactory
{
  private final ThreadGroup a;
  private final AtomicInteger b = new AtomicInteger(1);
  private final String c;
  private final String d;

  public NamedThreadFactory(String paramString)
  {
    SecurityManager localSecurityManager = System.getSecurityManager();
    ThreadGroup localThreadGroup;
    if (localSecurityManager != null)
    {
      localThreadGroup = localSecurityManager.getThreadGroup();
      this.a = localThreadGroup;
      if (!TextUtils.isEmpty(paramString))
        break label84;
    }
    label84: for (this.d = "ThreadPool"; ; this.d = paramString.trim())
    {
      this.c = (this.d + "-");
      return;
      localThreadGroup = Thread.currentThread().getThreadGroup();
      break;
    }
  }

  public Thread newThread(Runnable paramRunnable)
  {
    Thread localThread = new Thread(this.a, paramRunnable, this.c + this.b.getAndIncrement(), 0L);
    if (localThread.isDaemon())
      localThread.setDaemon(false);
    if (localThread.getPriority() != 5)
      localThread.setPriority(5);
    return localThread;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.util.NamedThreadFactory
 * JD-Core Version:    0.6.2
 */