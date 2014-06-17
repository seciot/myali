package com.alipay.android.widget.security.ui;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.TextView;
import com.alipay.android.widget.security.a.d;
import com.alipay.mobile.base.config.ConfigService;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.common.helper.ReadSettingServerUrl;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.commonui.widget.APRadioTableView;
import com.alipay.mobile.commonui.widget.APTableView;
import com.alipay.mobile.commonui.widget.APToggleButton;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.AppLoadException;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.ext.security.AccountService;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.ui.R.drawable;
import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;
import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.UiThread;
import com.googlecode.androidannotations.annotations.ViewById;

@EActivity(resName="security_passwordmanager_t_user")
public class SecurityPasswordManagerForTUserActivity extends BaseActivity
  implements View.OnClickListener
{

  @ViewById(resName="gestureState")
  protected APRadioTableView a;

  @ViewById(resName="resetDependentPwd")
  protected APTableView b;

  @ViewById(resName="modifyGesturePassword")
  protected APTableView c;

  @ViewById(resName="otpOpenTextTip")
  protected TextView d;

  @ViewById(resName="robotXiaoBao")
  protected ImageView e;
  protected AccountService f;
  protected AuthService g;
  protected String h = "";
  UserInfo i;
  protected int j = 0;
  AlertDialog k = null;
  protected LocalBroadcastManager l;
  protected BroadcastReceiver m;
  protected BroadcastReceiver n;
  protected SimplePwdCloseUI o;
  DialogInterface.OnClickListener p = new SecurityPasswordManagerForTUserActivity.4(this);
  private d q;
  private ConfigService r;

  private void b(boolean paramBoolean)
  {
    this.o = new SimplePwdCloseUI(this);
    this.o.a(new SecurityPasswordManagerForTUserActivity.2(this, paramBoolean));
    this.o.a("确定").show();
  }

  private void d()
  {
    try
    {
      Bundle localBundle = new Bundle();
      localBundle.putBoolean("setORcheck", false);
      localBundle.putBoolean("canBack", true);
      localBundle.putBoolean("GestureShowSkipBtn", false);
      this.mApp.getMicroApplicationContext().startApp("20000005", "20000006", localBundle);
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
    }
  }

  @Background
  protected void a()
  {
    this.i = this.g.getUserInfo();
    if (((this.g.isLogin()) && (this.i != null)) || ((this.g.auth(new Bundle())) && (this.i != null)))
      a(this.i);
  }

  @UiThread
  protected void a(UserInfo paramUserInfo)
  {
    if (paramUserInfo != null)
    {
      this.h = paramUserInfo.getLogonId();
      if ((paramUserInfo.getGesturePwd() == null) || ("".equalsIgnoreCase(paramUserInfo.getGesturePwd())))
      {
        this.a.getToggleButton().setChecked(false);
        this.a.setBackgroundResource(R.drawable.table_normal_selector);
        this.c.setVisibility(8);
        this.d.setVisibility(0);
      }
    }
    else
    {
      return;
    }
    this.a.getToggleButton().setChecked(true);
    this.c.setVisibility(0);
    this.a.setBackgroundResource(R.drawable.table_top_selector);
    this.c.setBackgroundResource(R.drawable.table_bottom_selector);
    this.d.setVisibility(8);
  }

  @UiThread
  protected void a(MobileSecurityResult paramMobileSecurityResult, boolean paramBoolean)
  {
    this.o.a();
    alert(null, paramMobileSecurityResult.getMessage(), getResources().getString(R.string.bi), new SecurityPasswordManagerForTUserActivity.3(this), null, null);
  }

  @Background
  void a(String paramString1, String paramString2, boolean paramBoolean)
  {
    if (this.i != null)
    {
      MobileSecurityResult localMobileSecurityResult;
      try
      {
        showProgressDialog(null, true, null);
        localMobileSecurityResult = this.q.b(paramString1, paramString2);
        dismissProgressDialog();
        if (this == null)
          return;
        if (isFinishing())
          return;
        if (localMobileSecurityResult == null)
          break label81;
        if (localMobileSecurityResult.isSuccess())
        {
          c();
          return;
        }
      }
      catch (RpcException localRpcException)
      {
        dismissProgressDialog();
        a(paramBoolean);
        throw localRpcException;
      }
      a(localMobileSecurityResult, paramBoolean);
      return;
      label81: a(paramBoolean);
    }
  }

  @UiThread
  protected void a(boolean paramBoolean)
  {
    APToggleButton localAPToggleButton = this.a.getToggleButton();
    if (!paramBoolean);
    for (boolean bool = true; ; bool = false)
    {
      localAPToggleButton.setChecked(bool);
      return;
    }
  }

  @AfterViews
  protected final void b()
  {
    if (isFinishing())
      return;
    a();
    this.a.setEnabled(false);
    this.b.setOnClickListener(this);
    this.a.setOnSwitchListener(new SecurityPasswordManagerForTUserActivity.1(this));
    this.c.setOnClickListener(this);
    this.e.setOnClickListener(this);
  }

  @UiThread
  protected void c()
  {
    this.o.a();
    if (this.j == 2)
    {
      this.a.getToggleButton().setChecked(false);
      this.a.setBackgroundResource(R.drawable.table_normal_selector);
      this.c.setVisibility(8);
      this.d.setVisibility(0);
      if (this.i != null)
      {
        this.i.setGesturePwd("");
        this.i.setGestureSkip(true);
        this.i.setGestureSkipStr("true");
        this.f.addUserInfo(this.i);
      }
      toast("已关闭", 1);
    }
    do
    {
      return;
      if (this.j == 1)
      {
        d();
        return;
      }
      if (this.j == 3)
      {
        d();
        return;
      }
    }
    while (this.j != 3);
    this.i.setGesturePwd("");
    this.i.setGestureSkip(false);
    this.i.setGestureSkipStr("false");
    this.f.addUserInfo(this.i);
    try
    {
      Bundle localBundle = new Bundle();
      localBundle.putBoolean("setORcheck", false);
      this.mApp.getMicroApplicationContext().startApp("20000005", "20000006", localBundle);
      label213: d();
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
      break label213;
    }
  }

  public void onClick(View paramView)
  {
    int i1 = paramView.getId();
    if (i1 != R.id.bm)
    {
      if (i1 != R.id.ck)
        break label58;
      this.j = 3;
      b(false);
      AlipayLogAgent.writeLog(this, BehaviourIdEnum.CLICKED, "-", "-", "security", "-", "inputLoginPwdBox", "phonePasswordView", "modifyGesture");
    }
    label58: 
    do
    {
      return;
      if (i1 == R.id.dr)
      {
        if ((this.r.getConfig("Security_ResetPW") != null) && ("YES".equals(this.r.getConfig("Security_ResetPW"))))
        {
          Intent localIntent = new Intent();
          localIntent.setClass(this, SecurityWebviewActivity_.class);
          localIntent.putExtra("URL", ReadSettingServerUrl.getPoliceCenterUrl(AlipayApplication.getInstance()) + "?serviceId=wallet_0001&context=restSixSimplePwd");
          startActivity(localIntent);
          return;
        }
        try
        {
          this.mMicroApplicationContext.startApp("20000028", "20000058", null);
          AlipayLogAgent.writeLog(this, BehaviourIdEnum.CLICKED, "-", "-", "security", "-", "phonePayPwdView", "phonePasswordView", "setPhonePayPwd");
          return;
        }
        catch (AppLoadException localAppLoadException2)
        {
          localAppLoadException2.printStackTrace();
          return;
        }
      }
    }
    while (i1 != R.id.ds);
    Bundle localBundle = new Bundle();
    localBundle.putString("scode", "phone_key");
    try
    {
      this.mApp.getMicroApplicationContext().startApp("", "20000011", localBundle);
      return;
    }
    catch (AppLoadException localAppLoadException1)
    {
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.f = ((AccountService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(AccountService.class.getName()));
    this.g = ((AuthService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName()));
    this.q = new d(this.mApp);
    this.l = LocalBroadcastManager.getInstance(this);
    this.r = ((ConfigService)this.mApp.getMicroApplicationContext().findServiceByInterface(ConfigService.class.getName()));
  }

  protected void onDestroy()
  {
    if ((this.l != null) && (this.m != null))
      this.l.unregisterReceiver(this.m);
    if ((this.l != null) && (this.n != null))
      this.l.unregisterReceiver(this.n);
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
      AlipayLogAgent.writeLog(this, BehaviourIdEnum.CLICKED, this.mApp.getAppId(), "moreHome", "mobilePasswordIndex", "backIcon");
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  protected void onResume()
  {
    super.onResume();
    if (this.g != null)
    {
      this.i = this.g.getUserInfo();
      if (this.i != null)
      {
        this.h = this.i.getLogonId();
        a(this.i);
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityPasswordManagerForTUserActivity
 * JD-Core Version:    0.6.2
 */