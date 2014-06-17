package com.alipay.android.widget.security.ui;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.WindowManager.BadTokenException;
import com.alipay.android.widget.security.a.d;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.commonui.widget.APEditText;
import com.alipay.mobile.commonui.widget.APExtTableView;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.commonui.widget.APRadioTableView;
import com.alipay.mobile.commonui.widget.APTableView;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APToggleButton;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.AppLoadException;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.ext.security.AccountService;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.ResultBean;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.framework.widgetmsg.WidgetMsgFlag;
import com.alipay.mobile.ui.R.drawable;
import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;
import com.alipay.mobilesecurity.core.model.mainpage.password.QuerySimplePwdStatusResp;
import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.UiThread;
import com.googlecode.androidannotations.annotations.ViewById;

@EActivity(resName="security_passwordmanager")
public class SecurityPasswordManagerActivity extends BaseActivity
  implements View.OnClickListener, SimplePwdCloseUI.CloseDialogCallback
{
  private static final Integer r = Integer.valueOf(1);
  private static final Integer s = Integer.valueOf(1);
  private static final Integer t = Integer.valueOf(2);
  private boolean A = true;

  @ViewById(resName="gestureState")
  protected APRadioTableView a;

  @ViewById(resName="inDependentPwdCloseDesc")
  protected APTextView b;

  @ViewById(resName="inDependentPwdState")
  protected APExtTableView c;
  protected WidgetMsgFlag d;

  @ViewById(resName="modifyGesturePassword")
  protected APTableView e;

  @ViewById(resName="otpOpenTextTip")
  protected APTextView f;

  @ViewById(resName="robotXiaoBao")
  protected APImageView g;
  protected AccountService h;
  protected AuthService i;
  protected String j = "";
  UserInfo k;
  protected int l = 0;
  AlertDialog m = null;
  protected LocalBroadcastManager n;
  protected BroadcastReceiver o;
  protected BroadcastReceiver p;
  DialogInterface.OnClickListener q = new SecurityPasswordManagerActivity.12(this);
  private boolean u = false;
  private AlertDialog.Builder v;
  private final String w = "change login password end";
  private d x;
  private SimplePwdOpenReceiver y;
  private SimplePwdCloseUI z;

  private void c(boolean paramBoolean)
  {
    this.v = new AlertDialog.Builder(this);
    this.v.setTitle(getResources().getString(R.string.am) + ":" + this.j);
    View localView = LayoutInflater.from(this).inflate(R.layout.aI, null);
    APEditText localAPEditText = (APEditText)localView.findViewById(R.id.eN);
    localAPEditText.setHint("登录密码");
    this.v.setView(localView);
    this.v.setPositiveButton(getResources().getString(R.string.bi), new SecurityPasswordManagerActivity.5(this, localAPEditText, paramBoolean));
    this.v.setNegativeButton(getResources().getString(R.string.aI), new SecurityPasswordManagerActivity.6(this, paramBoolean));
    this.m = this.v.create();
    this.m.setCancelable(false);
    this.m.setCanceledOnTouchOutside(false);
    if (!this.m.isShowing());
    try
    {
      this.m.show();
      localAPEditText.postDelayed(new SecurityPasswordManagerActivity.7(this, localAPEditText), 500L);
      return;
    }
    catch (WindowManager.BadTokenException localBadTokenException)
    {
      new StringBuilder("{[info=openPaypwdDialog], [msg=").append(localBadTokenException.getMessage()).append("]}").toString();
    }
  }

  private void h()
  {
    alert(null, getText(R.string.aa), "是", new SecurityPasswordManagerActivity.1(this), "否", new SecurityPasswordManagerActivity.2(this));
  }

  private void i()
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
    this.k = this.i.getUserInfo();
    if (((this.i.isLogin()) && (this.k != null)) || ((this.i.auth(new Bundle())) && (this.k != null)))
      a(this.k);
  }

  @UiThread
  protected void a(ResultBean paramResultBean, boolean paramBoolean)
  {
    this.m.dismiss();
    alert(null, paramResultBean.getMessage(), getResources().getString(R.string.bi), new SecurityPasswordManagerActivity.9(this, paramResultBean, paramBoolean), null, null);
  }

  @UiThread
  protected void a(UserInfo paramUserInfo)
  {
    if (paramUserInfo != null)
    {
      this.j = paramUserInfo.getLogonId();
      if ((paramUserInfo.getGesturePwd() == null) || ("".equalsIgnoreCase(paramUserInfo.getGesturePwd())))
      {
        this.a.getToggleButton().setChecked(false);
        this.a.setBackgroundResource(R.drawable.table_normal_selector);
        this.e.setVisibility(8);
        this.f.setVisibility(0);
      }
    }
    else
    {
      return;
    }
    this.a.getToggleButton().setChecked(true);
    this.e.setVisibility(0);
    this.a.setBackgroundResource(R.drawable.table_top_selector);
    this.e.setBackgroundResource(R.drawable.table_bottom_selector);
    this.f.setVisibility(8);
  }

  @UiThread
  void a(QuerySimplePwdStatusResp paramQuerySimplePwdStatusResp)
  {
    if (paramQuerySimplePwdStatusResp == null)
    {
      h();
      return;
    }
    if (paramQuerySimplePwdStatusResp.isSuccess())
    {
      b(paramQuerySimplePwdStatusResp.isOpen());
      this.u = paramQuerySimplePwdStatusResp.isOpen();
      return;
    }
    alert(null, paramQuerySimplePwdStatusResp.message, getResources().getString(R.string.bi), new SecurityPasswordManagerActivity.3(this), null, null);
  }

  @UiThread
  protected void a(String paramString)
  {
    toast(paramString, 1);
  }

  @Background
  protected void a(String paramString1, String paramString2, boolean paramBoolean)
  {
    this.h.loginPwdValidate(paramString1, paramString2, new SecurityPasswordManagerActivity.8(this, paramBoolean));
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

  public final void a(boolean paramBoolean, String paramString)
  {
    if (paramBoolean)
    {
      b(paramString);
      return;
    }
    this.z.a();
  }

  @Background
  protected void b()
  {
    this.k = this.i.getUserInfo();
    if (this.k != null);
    try
    {
      showProgressDialog(null, false, null);
      QuerySimplePwdStatusResp localQuerySimplePwdStatusResp = this.x.a(this.k.getUserId());
      dismissProgressDialog();
      a(localQuerySimplePwdStatusResp);
      return;
    }
    catch (RpcException localRpcException)
    {
      dismissProgressDialog();
      h();
    }
  }

  @Background
  void b(String paramString)
  {
    if (this.k != null)
      while (true)
      {
        try
        {
          showProgressDialog(null, false, null);
          MobileSecurityResult localMobileSecurityResult = this.x.a(paramString, this.k.getUserId());
          dismissProgressDialog();
          if (localMobileSecurityResult == null)
            break;
          e();
          boolean bool1 = localMobileSecurityResult.isSuccess();
          boolean bool2 = false;
          if (!bool1)
            bool2 = true;
          b(bool2);
          if (localMobileSecurityResult.isSuccess())
          {
            this.u = false;
            a("关闭成功");
            return;
          }
          String str1 = localMobileSecurityResult.getResultCode();
          String str2 = localMobileSecurityResult.getMessage();
          if ("700".equals(str1))
          {
            str3 = "拨打";
            alert(null, str2, str3, new SecurityPasswordManagerActivity.13(this, str1), "取消", null);
            return;
          }
        }
        catch (RpcException localRpcException)
        {
          dismissProgressDialog();
          b(true);
          throw localRpcException;
        }
        String str3 = "确定";
      }
  }

  @UiThread
  protected void b(boolean paramBoolean)
  {
    String str = getResources().getString(R.string.bT);
    if (paramBoolean)
    {
      g();
      str = getResources().getString(R.string.cm);
    }
    while (true)
    {
      this.c.setLeftText(str);
      return;
      f();
    }
  }

  @AfterViews
  protected final void c()
  {
    if (isFinishing())
      return;
    this.d = new WidgetMsgFlag(this);
    this.d.setBindingWidget("50000006");
    this.c.attachNewFlag2LeftText(this.d);
    a();
    b();
    this.a.setEnabled(false);
    this.a.setOnSwitchListener(new SecurityPasswordManagerActivity.4(this));
    this.e.setOnClickListener(this);
    this.g.setOnClickListener(this);
  }

  @UiThread
  protected void d()
  {
    this.m.dismiss();
    if (this.l == 2)
    {
      this.a.getToggleButton().setChecked(false);
      this.a.setBackgroundResource(R.drawable.table_normal_selector);
      this.e.setVisibility(8);
      this.f.setVisibility(0);
      if (this.k != null)
      {
        this.k.setGesturePwd("");
        this.k.setGestureSkip(true);
        this.k.setGestureSkipStr("true");
        this.h.addUserInfo(this.k);
      }
      toast("已关闭", 1);
    }
    do
    {
      return;
      if (this.l == 1)
      {
        i();
        return;
      }
      if (this.l == 3)
      {
        i();
        return;
      }
    }
    while (this.l != 3);
    this.k.setGesturePwd("");
    this.k.setGestureSkip(false);
    this.k.setGestureSkipStr("false");
    this.h.addUserInfo(this.k);
    try
    {
      Bundle localBundle = new Bundle();
      localBundle.putBoolean("setORcheck", false);
      this.mApp.getMicroApplicationContext().startApp("20000005", "20000006", localBundle);
      label216: i();
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
      break label216;
    }
  }

  @UiThread
  protected void e()
  {
    this.z.a();
  }

  @UiThread
  protected void f()
  {
    if (this.A)
      this.A = false;
    while (true)
    {
      this.b.setVisibility(0);
      this.c.setOnClickListener(new SecurityPasswordManagerActivity.14(this));
      return;
      this.d.ackClick();
    }
  }

  @UiThread
  protected void g()
  {
    this.d.ackClick();
    this.c.setVisibility(0);
    this.b.setVisibility(8);
    this.c.setOnClickListener(new SecurityPasswordManagerActivity.15(this));
  }

  public void onClick(View paramView)
  {
    int i1 = paramView.getId();
    if (i1 != R.id.bm)
    {
      if (i1 != R.id.ck)
        break label53;
      this.l = 3;
      c(false);
      AlipayLogAgent.writeLog(this, BehaviourIdEnum.CLICKED, "-", "-", "security", "-", "inputLoginPwdBox", "phonePasswordView", "modifyGesture");
    }
    label53: 
    while (i1 != R.id.ds)
      return;
    Bundle localBundle = new Bundle();
    localBundle.putString("scode", "phone_key");
    try
    {
      this.mApp.getMicroApplicationContext().startApp("", "20000011", localBundle);
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.h = ((AccountService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(AccountService.class.getName()));
    this.i = ((AuthService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName()));
    this.x = new d(this.mApp);
    this.n = LocalBroadcastManager.getInstance(this);
    this.y = new SimplePwdOpenReceiver((byte)0);
    this.n.registerReceiver(this.y, new IntentFilter("com.alipay.mobile.simplepwd.open"));
  }

  protected void onDestroy()
  {
    if ((this.n != null) && (this.o != null))
      this.n.unregisterReceiver(this.o);
    if ((this.n != null) && (this.p != null))
      this.n.unregisterReceiver(this.p);
    if (this.y != null)
      this.n.unregisterReceiver(this.y);
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
    if (this.i != null)
    {
      this.k = this.i.getUserInfo();
      if (this.k != null)
      {
        this.j = this.k.getLogonId();
        a(this.k);
      }
    }
  }

  private final class SimplePwdOpenReceiver extends BroadcastReceiver
  {
    private SimplePwdOpenReceiver()
    {
    }

    public final void onReceive(Context paramContext, Intent paramIntent)
    {
      boolean bool = paramIntent.getBooleanExtra("openResult", false);
      if (bool)
      {
        SecurityPasswordManagerActivity.this.b(bool);
        SecurityPasswordManagerActivity.a(SecurityPasswordManagerActivity.this);
        return;
      }
      SecurityPasswordManagerActivity.this.b(SecurityPasswordManagerActivity.b(SecurityPasswordManagerActivity.this));
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityPasswordManagerActivity
 * JD-Core Version:    0.6.2
 */