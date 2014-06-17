package com.alipay.android.app.monitor;

import android.content.Context;
import com.alipay.android.app.data.BizDataSource;
import com.alipay.android.app.sys.DeviceInfo;
import com.alipay.android.app.sys.NetConnectionType;

public abstract class SystemTimeTask
{
  private Context a;
  private boolean b;
  private Object c;
  private Runnable d = new e(this);

  protected SystemTimeTask(Context paramContext)
  {
    this.a = paramContext;
    this.b = false;
    this.c = new Object();
  }

  protected static boolean b()
  {
    return BizDataSource.a().e() > 0;
  }

  public final void a()
  {
    synchronized (this.c)
    {
      if (this.b)
        return;
      this.b = true;
      new Thread(this.d).start();
      return;
    }
  }

  protected final boolean c()
  {
    return DeviceInfo.b(this.a) == NetConnectionType.a;
  }

  protected final Context d()
  {
    return this.a;
  }

  protected abstract void e();

  protected abstract void f();

  protected abstract boolean g();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.monitor.SystemTimeTask
 * JD-Core Version:    0.6.2
 */