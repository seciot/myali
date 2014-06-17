package com.alipay.mobile.common.task;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

final class TaskManager$1
  implements ThreadFactory
{
  private final AtomicInteger a = new AtomicInteger(0);

  public final Thread newThread(Runnable paramRunnable)
  {
    return new Thread(paramRunnable, TaskManager.access$000() + " #" + this.a.incrementAndGet());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.task.TaskManager.1
 * JD-Core Version:    0.6.2
 */