package com.alipay.mobile.security.accountmanager.a;

import android.os.Bundle;
import android.text.TextUtils;
import com.alipay.mobile.common.helper.UserInfoHelper;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.AppLoadException;
import com.alipay.mobile.framework.service.ext.dbhelper.SecurityDbHelper;
import com.alipay.mobile.framework.service.ext.security.AccountService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.login.bean.LoginInfo;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public class d
{
  private static final String a = d.class.getSimpleName();
  private AccountService b = (AccountService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(AccountService.class.getName());

  private static void b(Bundle paramBundle, String paramString)
  {
    LoginInfo localLoginInfo = new LoginInfo();
    localLoginInfo.a(paramString);
    boolean bool;
    if (TextUtils.equals(paramBundle.getString("isMobileUser"), "YES"))
      bool = true;
    while (true)
    {
      localLoginInfo.b(bool);
      Bundle localBundle = new Bundle();
      localBundle.putParcelable("loginInfo", localLoginInfo);
      try
      {
        AlipayApplication.getInstance().getMicroApplicationContext().startApp("", "20000008", localBundle);
        return;
        bool = false;
      }
      catch (AppLoadException localAppLoadException)
      {
      }
    }
  }

  public final void a(Bundle paramBundle)
  {
    int i = 0;
    if (paramBundle == null)
      if (i != 0)
        break label83;
    label83: 
    while (!TextUtils.equals(paramBundle.getString("source"), "webApp"))
    {
      return;
      if (TextUtils.isEmpty(paramBundle.getString("targetAppId")))
      {
        i = 0;
        break;
      }
      if (TextUtils.isEmpty(paramBundle.getString("result")))
      {
        i = 0;
        break;
      }
      if (TextUtils.isEmpty(paramBundle.getString("source")))
      {
        i = 0;
        break;
      }
      i = 1;
      break;
    }
    if (TextUtils.equals(paramBundle.getString("context"), "restSixSimplePwd"))
      if (StringUtils.equals("msp", paramBundle.getString("safePayType")))
        AlipayApplication.getInstance().getMicroApplicationContext().exit();
    while (true)
    {
      AlipayApplication.getInstance().getMicroApplicationContext().finishApp("20000007", "20000007", null);
      return;
      AlipayApplication.getInstance().getMicroApplicationContext().finishApp("20000069", "20000069", null);
      continue;
      if (TextUtils.equals(paramBundle.getString("context"), "changeBindPhoneNum"))
      {
        if (paramBundle.getString("targetAppId").equals("20000070"))
        {
          if ((!TextUtils.isEmpty(paramBundle.getString("phoneNum"))) && (TextUtils.equals(paramBundle.getString("result"), "suc")))
          {
            UserInfo localUserInfo2 = UserInfoHelper.getInstance().getUserInfo(AlipayApplication.getInstance().getMicroApplicationContext());
            localUserInfo2.setMobileNumber(paramBundle.getString("phoneNum"));
            SecurityDbHelper.getInstance(AlipayApplication.getInstance().getApplicationContext()).addUserInfo(localUserInfo2);
          }
          try
          {
            AlipayApplication.getInstance().getMicroApplicationContext().finishApp("", "20000070", null);
            AlipayApplication.getInstance().getMicroApplicationContext().startApp("", "20000070", null);
          }
          catch (AppLoadException localAppLoadException)
          {
          }
        }
        else if (paramBundle.getString("targetAppId").equals("20000008"))
        {
          UserInfo localUserInfo1 = UserInfoHelper.getInstance().getUserInfo(AlipayApplication.getInstance().getMicroApplicationContext());
          if ((localUserInfo1 == null) || (TextUtils.isEmpty(localUserInfo1.getLogonId())))
            b(paramBundle, paramBundle.getString("phoneNum"));
          else
            BackgroundExecutor.execute(new e(this, localUserInfo1, paramBundle));
        }
      }
      else if (TextUtils.equals(paramBundle.getString("context"), "forgetLoginPwd"))
        if (TextUtils.equals(paramBundle.getString("safePayType"), "msp"))
        {
          AlipayApplication.getInstance().getMicroApplicationContext().exit();
        }
        else if (TextUtils.equals(paramBundle.getString("safePayType"), "alipay"))
        {
          AlipayApplication.getInstance().getMicroApplicationContext().finishApp("20000069", "20000069", null);
          AlipayApplication.getInstance().getMicroApplicationContext().finishApp("20000069", "20000015", null);
        }
        else
        {
          b(paramBundle, paramBundle.getString("loginId"));
        }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.a.d
 * JD-Core Version:    0.6.2
 */