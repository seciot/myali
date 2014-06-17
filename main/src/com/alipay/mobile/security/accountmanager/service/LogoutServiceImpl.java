package com.alipay.mobile.security.accountmanager.service;

import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.security.AccountService;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.LogoutService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;

public class LogoutServiceImpl extends LogoutService
{
  final String a = "LogoutServiceImpl";
  LocalBroadcastManager b;
  AuthService c = null;
  UserInfo d = null;

  protected void goMain()
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("actionType", "20000002");
    try
    {
      getMicroApplicationContext().startApp("", "20000001", localBundle);
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public void logout()
  {
    this.c = ((AuthService)getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName()));
    if (this.c.isLogin())
      this.d = this.c.getUserInfo();
    if (this.d != null)
    {
      new Thread(new e(this, this.d.getLogonId())).start();
      if (this.d != null)
      {
        this.d.setAutoLogin(false);
        this.d.setSessionId(null);
        this.d.setLoginToken(null);
        this.d.setTaobaoSid(null);
        this.d.setExtern_token(null);
        ((AccountService)getMicroApplicationContext().getExtServiceByInterface(AccountService.class.getName())).addUserInfo(this.d);
      }
      ((AccountService)getMicroApplicationContext().getExtServiceByInterface(AccountService.class.getName())).setCurrentLoginState("false");
    }
    this.c.clearLoginUserInfo();
    new Thread(new b(this)).start();
    new Thread(new c(this)).start();
  }

  protected void onCreate(Bundle paramBundle)
  {
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.service.LogoutServiceImpl
 * JD-Core Version:    0.6.2
 */