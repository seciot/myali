package com.alipay.android.launcher;

import android.os.Bundle;
import com.alipay.mobile.framework.service.ext.security.AuthService;

final class f
  implements Runnable
{
  f(TabLauncher paramTabLauncher, AuthService paramAuthService, Bundle paramBundle)
  {
  }

  public final void run()
  {
    try
    {
      Thread.sleep(60L);
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      localInterruptedException.printStackTrace();
      return;
    }
    finally
    {
      this.a.showActivityLogin(this.b, null);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.launcher.f
 * JD-Core Version:    0.6.2
 */