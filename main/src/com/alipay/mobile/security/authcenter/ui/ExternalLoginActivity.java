package com.alipay.mobile.security.authcenter.ui;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.common.utils.BundleUtil;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.AppLoadException;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.ext.security.AccountImportService;
import com.alipay.mobile.framework.service.ext.security.AccountService;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.GestureService;
import com.alipay.mobile.framework.service.ext.security.LoginService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.framework.service.ext.security.bean.UserLoginResultBiz;
import com.alipay.mobile.security.authcenter.a.h;
import com.alipay.mobile.security.authcenter.a.i;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;

@EActivity(resName="external_login_welcome")
public class ExternalLoginActivity extends BaseActivity
{
  private Bundle a = null;
  private AccountImportService b;
  private LoginService c;
  private AccountService d;
  private String e;
  private int f = -1;
  private int g = -1;
  private Handler h = new Handler();

  private static String a(Bundle paramBundle)
  {
    if (paramBundle == null)
      return "";
    return "&" + BundleUtil.deserialBundle(paramBundle);
  }

  private void a(Intent paramIntent)
  {
    try
    {
      showProgressDialog(getResources().getString(R.string.cz), false, null);
      this.a = paramIntent.getExtras();
      String str = this.d.getCurrentLoginUserId();
      if ((str != null) && (this.d.getCurrentLoginState()))
      {
        localUserInfo = this.d.queryAccountDetailInfoByUserId(str);
        if (localUserInfo != null)
          this.e = localUserInfo.getUserId();
        this.d.setCurrentLoginState("false");
      }
    }
    catch (Exception localException1)
    {
      try
      {
        while (true)
        {
          UserInfo localUserInfo;
          this.mMicroApplicationContext.finishApp("", "20000006", null);
          b().notifyUnlockGestureApp();
          try
          {
            label103: b().notifyUnlockLoginApp(false, false);
            label112: a();
            return;
            localException1 = localException1;
            new StringBuilder("显示对话框失败 ").append(localException1.getStackTrace()).toString();
            continue;
            localUserInfo = null;
          }
          catch (Exception localException3)
          {
            break label112;
          }
        }
      }
      catch (Exception localException2)
      {
        break label103;
      }
    }
  }

  private void a(Bundle paramBundle, boolean paramBoolean)
  {
    if (paramBoolean);
    try
    {
      paramBundle.putString("actionType", "20000002");
      this.mMicroApplicationContext.startApp(this.mApp.getAppId(), "20000001", paramBundle);
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
      localAppLoadException.printStackTrace();
      return;
    }
    finally
    {
      this.h.postDelayed(new s(this), 1000L);
    }
  }

  private void a(UserLoginResultBiz paramUserLoginResultBiz)
  {
    if ((paramUserLoginResultBiz != null) && (paramUserLoginResultBiz.getResultStatus() == 1000))
    {
      String str = paramUserLoginResultBiz.getLoginId();
      try
      {
        ((GestureService)this.mMicroApplicationContext.getExtServiceByInterface(GestureService.class.getName())).gesture(new q(this, str));
        return;
      }
      catch (Exception localException)
      {
        new StringBuilder().append(localException.getStackTrace()).toString();
        a(null, false);
        return;
      }
    }
    c();
  }

  private void a(String paramString)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("externParams", "alipays://platformapi/login?loginStatus=success" + a(this.a));
    if ((this.e != null) && (!paramString.equals(this.e)));
    for (boolean bool = true; ; bool = false)
    {
      a(localBundle, bool);
      return;
    }
  }

  private AuthService b()
  {
    return (AuthService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName());
  }

  private void c()
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("externParams", "alipays://platformapi/login?loginStatus=fail" + a(this.a));
    this.h.postDelayed(new r(this, localBundle), 1500L);
  }

  @Background
  protected void a()
  {
    boolean bool2;
    do
    {
      String str;
      try
      {
        Bundle localBundle = this.a;
        str = null;
        if (localBundle != null)
          str = this.a.getString("appId");
        boolean bool1 = "20000034".equals(str);
        if (bool1)
          try
          {
            a(new h(this.mApp, this.a).a());
            return;
          }
          catch (Throwable localThrowable)
          {
            c();
            return;
          }
      }
      catch (Exception localException1)
      {
        new StringBuilder("启动导入账户免登出现异常:").append(localException1.getStackTrace()).toString();
        c();
        return;
      }
      bool2 = "20000044".equals(str);
    }
    while (!bool2);
    UserLoginResultBiz localUserLoginResultBiz;
    try
    {
      localUserLoginResultBiz = new i(this.mApp, this.a).a();
      if ((localUserLoginResultBiz != null) && (localUserLoginResultBiz.getResultStatus() == 1000) && (this.a != null) && (!TextUtils.isEmpty(this.a.getString("targetAppId"))))
      {
        a(localUserLoginResultBiz.getLoginId());
        return;
      }
    }
    catch (Exception localException2)
    {
      c();
      return;
    }
    a(localUserLoginResultBiz);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    this.b = ((AccountImportService)this.mMicroApplicationContext.getExtServiceByInterface(AccountImportService.class.getName()));
    this.c = ((LoginService)this.mMicroApplicationContext.getExtServiceByInterface(LoginService.class.getName()));
    this.d = ((AccountService)this.mMicroApplicationContext.getExtServiceByInterface(AccountService.class.getName()));
    getBundle(getIntent());
  }

  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    a(paramIntent);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.ExternalLoginActivity
 * JD-Core Version:    0.6.2
 */