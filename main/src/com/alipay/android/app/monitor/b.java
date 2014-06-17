package com.alipay.android.app.monitor;

final class b
  implements Runnable
{
  b(MonitorThread paramMonitorThread, StringBuilder paramStringBuilder)
  {
  }

  public final void run()
  {
    try
    {
      new c(MonitorEnum.f, this.a.toString()).b();
      System.exit(0);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.monitor.b
 * JD-Core Version:    0.6.2
 */