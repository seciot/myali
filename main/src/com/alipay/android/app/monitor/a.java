package com.alipay.android.app.monitor;

final class a
  implements Thread.UncaughtExceptionHandler
{
  public static void a()
  {
    a locala = new a();
    Thread.currentThread().setUncaughtExceptionHandler(locala);
  }

  public final void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.monitor.a
 * JD-Core Version:    0.6.2
 */