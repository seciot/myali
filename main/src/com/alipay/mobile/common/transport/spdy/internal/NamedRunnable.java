package com.alipay.mobile.common.transport.spdy.internal;

public abstract class NamedRunnable
  implements Runnable
{
  private final String a;

  public NamedRunnable(String paramString, Object[] paramArrayOfObject)
  {
    this.a = String.format(paramString, paramArrayOfObject);
  }

  protected abstract void execute();

  public final void run()
  {
    String str = Thread.currentThread().getName();
    Thread.currentThread().setName(this.a);
    try
    {
      execute();
      return;
    }
    finally
    {
      Thread.currentThread().setName(str);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.NamedRunnable
 * JD-Core Version:    0.6.2
 */