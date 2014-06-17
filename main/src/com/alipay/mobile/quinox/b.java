package com.alipay.mobile.quinox;

import android.os.HandlerThread;

final class b
  implements Runnable
{
  b(LauncherApplication paramLauncherApplication)
  {
  }

  public final void run()
  {
    LauncherApplication.access$100(this.a);
    LauncherApplication.access$200(this.a).quit();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.quinox.b
 * JD-Core Version:    0.6.2
 */