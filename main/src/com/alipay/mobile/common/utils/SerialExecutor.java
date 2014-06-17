package com.alipay.mobile.common.utils;

import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

public class SerialExecutor
  implements Executor
{
  public static final String TAG = "SerialExecutor";
  private String a;
  private ExecutorService b = Executors.newSingleThreadExecutor(this.e);
  private BlockingQueue c = new ArrayBlockingQueue(128);
  private Runnable d;
  private final ThreadFactory e = new SerialExecutor.2(this);

  public SerialExecutor()
  {
  }

  public SerialExecutor(String paramString)
  {
    this();
    this.a = paramString;
  }

  public void execute(Runnable paramRunnable)
  {
    this.c.offer(new SerialExecutor.1(this, paramRunnable));
    if (this.d == null)
      scheduleNext();
  }

  protected void scheduleNext()
  {
    try
    {
      Runnable localRunnable = (Runnable)this.c.poll();
      this.d = localRunnable;
      if (localRunnable != null)
        this.b.execute(this.d);
      return;
    }
    finally
    {
    }
  }

  public void stop()
  {
    if (this.b != null)
      this.b.shutdown();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.utils.SerialExecutor
 * JD-Core Version:    0.6.2
 */