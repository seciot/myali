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
      this.a.getBundlePath();
      TaskManager.a().getBundle(this.a);
      synchronized (SystemTimeTask.getBundle(this.a))
      {
        SystemTimeTask.dexopt(this.a);
        return;
      }
    }
    catch (Exception localException)
    {
      LogUtils.a(localException);
      synchronized (SystemTimeTask.getBundle(this.a))
      {
        SystemTimeTask.dexopt(this.a);
        return;
      }
    }
    finally
    {
      synchronized (SystemTimeTask.getBundle(this.a))
      {
        SystemTimeTask.dexopt(this.a);
        throw localObject1;
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.monitor.e
 * JD-Core Version:    0.6.2
 */