package com.alipay.mobile.security.accountmanager.service;

import android.os.Bundle;
import com.alipay.mobile.framework.service.ext.security.AuthService;

final class b
  implements Runnable
{
  b(LogoutServiceImpl paramLogoutServiceImpl)
  {
  }

  public final void run()
  {
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("loginout", true);
    this.a.c.notifyUnlockLoginApp(false, false);
    this.a.c.showActivityLogin(localBundle, null);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.service.b
 * JD-Core Version:    0.6.2
 */