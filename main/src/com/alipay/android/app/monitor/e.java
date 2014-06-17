package com.alipay.android.app.monitor;

import android.os.Process;
import com.alipay.android.app.util.LogUtils;

final class e
  implements Runnable
{
  e(SystemTimeTask paramSystemTimeTask)
  {
  }

  public final void run()
  {
    try
    {
      a.a();
      Process.setThreadPriority(10);
      this.a.f();
      TaskManager.a().a(this.a);
      synchronized (SystemTimeTask.a(this.a))
      {
        SystemTimeTask.b(this.a);
        return;
      }
    }
    catch (Exception localException)
    {
      LogUtils.a(localException);
      synchronized (SystemTimeTask.a(this.a))
      {
        SystemTimeTask.b(this.a);
        return;
      }
    }
    finally
    {
      synchronized (SystemTimeTask.a(this.a))
      {
        SystemTimeTask.b(this.a);
        throw localObject1;
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.monitor.e
 * JD-Core Version:    0.6.2
 */