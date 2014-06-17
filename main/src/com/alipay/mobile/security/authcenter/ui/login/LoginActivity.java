package com.alipay.mobile.security.authcenter.ui.login;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.text.TextUtils;
import android.util.SmartBarUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Toast;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.common.widget.SimpleToast;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.ui.BaseFragmentActivity;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.login.bean.LoginInfo;
import com.alipay.mobile.security.authcenter.b.a.a;
import com.alipay.mobile.security.authcenter.ui.y;
import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.ViewById;

@EActivity(resName="login_container")
public class LoginActivity extends BaseFragmentActivity
  implements a
{

  @ViewById(resName="login_frame")
  protected ViewGroup a;
  private FragmentManager b;
  private boolean c = true;
  private AuthService d;
  private Intent e;

  private void a(Intent paramIntent)
  {
    Bundle localBundle;
    LoginInfo localLoginInfo1;
    String str2;
    String str3;
    LoginInfo localLoginInfo3;
    boolean bool1;
    if (paramIntent != null)
    {
      localBundle = paramIntent.getExtras();
      if (localBundle != null)
      {
        localLoginInfo1 = (LoginInfo)localBundle.getParcelable("loginInfo");
        if (localLoginInfo1 == null)
        {
          String str1 = localBundle.getString("account");
          str2 = localBundle.getString("forAutoLogin");
          str3 = localBundle.getString("isMobileUser");
          if (!TextUtils.isEmpty(str1))
          {
            localLoginInfo3 = new LoginInfo();
            localLoginInfo3.a(str1);
            if (!TextUtils.isEmpty(str2))
              break label139;
            bool1 = false;
            localLoginInfo3.a(bool1);
            if (!TextUtils.isEmpty(str3))
              break label152;
          }
        }
      }
    }
    label139: label152: for (boolean bool2 = false; ; bool2 = Boolean.valueOf(str3).booleanValue())
    {
      localLoginInfo3.b(bool2);
      if (localLoginInfo1 == null)
        break label171;
      if (!localLoginInfo1.h())
        break label165;
      new y(this, this.mApp).a(localLoginInfo1);
      return;
      bool1 = Boolean.valueOf(str2).booleanValue();
      break;
    }
    label165: a(localBundle);
    return;
    label171: if ((paramIntent.getBooleanExtra("source_accountSelectAccount", false)) || (paramIntent.getBooleanExtra("source_gesture", false)));
    for (int i = 1; i == 0; i = 0)
    {
      UserInfo localUserInfo = this.d.getLastLoginedUserInfo();
      if (localUserInfo == null)
        break;
      LoginInfo localLoginInfo2 = new LoginInfo();
      localLoginInfo2.a(localUserInfo.getLogonId());
      localLoginInfo2.b(localUserInfo.isWirelessUser());
      localLoginInfo2.c(localUserInfo.getUserAvatar());
      localLoginInfo2.a(false);
      localBundle.putParcelable("loginInfo", localLoginInfo2);
      a(localBundle);
      return;
    }
    MobileInputFragment_ localMobileInputFragment_ = new MobileInputFragment_();
    localMobileInputFragment_.a(this.mApp);
    this.b.beginTransaction().add(R.id.bR, localMobileInputFragment_).commit();
  }

  private void a(Bundle paramBundle)
  {
    UserLoginFragment_ localUserLoginFragment_ = new UserLoginFragment_();
    localUserLoginFragment_.setArguments(paramBundle);
    localUserLoginFragment_.a(this.mApp);
    this.b.beginTransaction().add(R.id.bR, localUserLoginFragment_).commit();
  }

  @AfterViews
  final void a()
  {
    this.b = getSupportFragmentManager();
    this.e = getIntent();
    a(this.e);
  }

  public final boolean a(String paramString)
  {
    Intent localIntent = this.e;
    boolean bool = false;
    if (localIntent != null)
      bool = this.e.getBooleanExtra(paramString, false);
    return bool;
  }

  public void onBackPressed()
  {
    if ((!SmartBarUtils.hasSmartBar()) || (this.b.getBackStackEntryCount() > 0))
      super.onBackPressed();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.d = ((AuthService)this.mMicroApplicationContext.getExtServiceByInterface(AuthService.class.getName()));
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      int i = this.a.getChildCount();
      ViewGroup localViewGroup = this.a;
      if (i > 0);
      for (int j = i - 1; ; j = 0)
      {
        View localView = localViewGroup.getChildAt(j);
        if ((localView == null) || (!(localView instanceof ViewGroup)) || (((ViewGroup)localView).getChildAt(0).getId() != R.id.fJ))
          break;
        alert("", "校验码短信可能略有延迟，请稍等。", "不了", new w(this), "好的", null);
        return true;
      }
      if (this.b.getBackStackEntryCount() == 0)
        if (this.c)
        {
          Toast localToast = SimpleToast.makeToast(this, R.string.ah, 0);
          localToast.setGravity(81, 0, 100);
          localToast.show();
          this.c = false;
          getWindow().getDecorView().postDelayed(new x(this), 5000L);
          return true;
        }
    }
    try
    {
      ((AuthService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName())).notifyUnlockLoginApp(false, false);
      label193: AlipayApplication.getInstance().getMicroApplicationContext().exit();
      return super.onKeyDown(paramInt, paramKeyEvent);
    }
    catch (Exception localException)
    {
      break label193;
    }
  }

  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    this.e = paramIntent;
    getSupportFragmentManager().popBackStack(null, 1);
    a(this.e);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.login.LoginActivity
 * JD-Core Version:    0.6.2
 */