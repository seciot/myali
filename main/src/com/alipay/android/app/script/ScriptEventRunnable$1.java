package com.alipay.android.app.script;

import com.alipay.android.app.monitor.MonitorThread;
import com.alipay.android.app.util.LogUtils;

class ScriptEventRunnable$1
  implements Thread.UncaughtExceptionHandler
{
  ScriptEventRunnable$1(ScriptEventRunnable paramScriptEventRunnable)
  {
  }

  public void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    MonitorThread.a().b(paramThrowable, "uncatch crash");
    LogUtils.a(paramThrowable);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.script.ScriptEventRunnable.1
 * JD-Core Version:    0.6.2
 */