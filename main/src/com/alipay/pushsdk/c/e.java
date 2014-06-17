package com.alipay.pushsdk.c;

import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

public final class e
  implements Executor
{
  private String a;
  private ExecutorService b = Executors.newSingleThreadExecutor(this.e);
  private BlockingQueue c = new ArrayBlockingQueue(128);
  private Runnable d;
  private final ThreadFactory e = new g(this);

  public e()
  {
  }

  public e(String paramString)
  {
    this();
    this.a = paramString;
  }

  protected final void a()
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

  public final void execute(Runnable paramRunnable)
  {
    this.c.offer(new f(this, paramRunnable));
    if (this.d == null)
      a();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.c.e
 * JD-Core Version:    0.6.2
 */