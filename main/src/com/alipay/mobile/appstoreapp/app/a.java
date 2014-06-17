package com.alipay.mobile.appstoreapp.app;

import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.security.AccountService;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;

final class a
  implements Runnable
{
  a(AppStoreApp paramAppStoreApp)
  {
  }

  public final void run()
  {
    try
    {
      Thread.sleep(500L);
      label6: AuthService localAuthService = (AuthService)this.a.getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName());
      AccountService localAccountService = (AccountService)this.a.getMicroApplicationContext().getExtServiceByInterface(AccountService.class.getName());
      if ((localAuthService != null) && (localAccountService != null))
      {
        UserInfo localUserInfo = localAccountService.getUserInfoBySql(null, null);
        if (localUserInfo != null)
        {
          boolean bool1 = localUserInfo.isAutoLogin();
          boolean bool2 = localAccountService.getCurrentLoginState();
          if ((!bool1) && (!bool2))
          {
            localAuthService.notifyUnlockLoginApp(false, false);
            localAuthService.showActivityLogin(null, null);
          }
        }
      }
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      break label6;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.appstoreapp.app.a
 * JD-Core Version:    0.6.2
 */