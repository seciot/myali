package com.alipay.android.app;

import com.alipay.android.app.monitor.MonitorThread;
import com.alipay.android.app.util.LogUtils;

final class c
  implements Thread.UncaughtExceptionHandler
{
  c(MspService paramMspService)
  {
  }

  public final void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    MonitorThread.a().b(paramThrowable, "uncatch crash");
    LogUtils.a(paramThrowable);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.c
 * JD-Core Version:    0.6.2
 */