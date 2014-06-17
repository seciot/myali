package com.alipay.mobile.common.task;

import com.alipay.mobile.common.utils.SerialExecutor;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor.CallerRunsPolicy;
import java.util.concurrent.TimeUnit;

public class TaskManager
{
  private static TaskManager a;
  private static final String d = TaskManager.class.getSimpleName();
  private static final ThreadFactory e = new TaskManager.1();
  private ThreadPoolExecutor b = new ThreadPoolExecutor(3, 10, 5L, TimeUnit.SECONDS, new ArrayBlockingQueue(128), e, new ThreadPoolExecutor.CallerRunsPolicy());
  private SerialExecutor c = new SerialExecutor(d);

  public static TaskManager getInstance()
  {
    try
    {
      if (a == null)
        a = new TaskManager();
      TaskManager localTaskManager = a;
      return localTaskManager;
    }
    finally
    {
    }
  }

  public void parallelExecute(Runnable paramRunnable)
  {
    this.b.execute(paramRunnable);
  }

  public void serialExecute(Runnable paramRunnable)
  {
    this.c.execute(paramRunnable);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.task.TaskManager
 * JD-Core Version:    0.6.2
 */