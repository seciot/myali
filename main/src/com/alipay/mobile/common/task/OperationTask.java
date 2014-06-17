package com.alipay.mobile.common.task;

import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;

public abstract class OperationTask
{
  private int a;
  private FutureTask b;
  private TaskCallback c;
  private OperationExcutor d;

  public OperationTask(OperationExcutor paramOperationExcutor, TaskCallback paramTaskCallback)
  {
    this.d = paramOperationExcutor;
    this.c = paramTaskCallback;
  }

  public final boolean cancel(boolean paramBoolean)
  {
    return this.b.cancel(paramBoolean);
  }

  public final void execute()
  {
    this.b = new OperationTask.2(this, new OperationTask.1(this));
    this.d.excute(this.b);
  }

  public final Object get()
  {
    return this.b.get();
  }

  public final Object get(long paramLong, TimeUnit paramTimeUnit)
  {
    return this.b.get(paramLong, paramTimeUnit);
  }

  public final boolean isCancelled()
  {
    return this.b.isCancelled();
  }

  protected abstract Object operation();

  protected final void update(double paramDouble)
  {
    this.c.onProgressUpdate(this.a, paramDouble);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.task.OperationTask
 * JD-Core Version:    0.6.2
 */