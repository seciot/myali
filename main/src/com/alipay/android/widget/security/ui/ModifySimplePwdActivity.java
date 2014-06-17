package com.alipay.android.widget.security.ui;

import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.KeyEvent;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.ui.BaseFragmentActivity;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.security.accountmanager.a.c;
import com.alipay.mobile.security.securitycommon.SecurityUtil;
import com.alipay.mobile.security.securitycommon.fragment.CheckUserIdFragment_;
import com.alipay.mobile.security.securitycommon.fragment.SetSimplePwdFragment_;
import com.alipay.mobile.security.securitycommon.fragment.SmsCheckFragment_;
import com.alipay.mobilesecurity.core.model.mainpage.password.PreCheckAndSendSmsResp;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.UiThread;

@EActivity(resName="security_modify_simplepwd")
public class ModifySimplePwdActivity extends BaseFragmentActivity
{
  public static final String a = ModifySimplePwdActivity.class.getSimpleName();
  protected AuthService b;
  private c c;
  private UserInfo d = null;
  private String e = null;
  private FragmentTransaction f;
  private String g;
  private SmsCheckFragment_ h;
  private CheckUserIdFragment_ i;
  private SetSimplePwdFragment_ j;

  @Background
  protected void a()
  {
    if ((this.b != null) && (this.b.isLogin()))
      this.d = this.b.getUserInfo();
    if (this.d != null)
    {
      PreCheckAndSendSmsResp localPreCheckAndSendSmsResp;
      try
      {
        a(FragId.CheckSMS);
        showProgressDialog(null, true, null);
        localPreCheckAndSendSmsResp = this.c.a(this.d.getLogonId(), "LOGIN");
        dismissProgressDialog();
        if ((this == null) || (isFinishing()))
          return;
        if ((localPreCheckAndSendSmsResp == null) || (localPreCheckAndSendSmsResp.isSuccess()))
          return;
        if ("5201".equalsIgnoreCase(localPreCheckAndSendSmsResp.getResultCode()))
        {
          alert(null, localPreCheckAndSendSmsResp.getMessage(), "确定", new ModifySimplePwdActivity.1(this), null, null);
          return;
        }
      }
      catch (RpcException localRpcException)
      {
        dismissProgressDialog();
        localRpcException.getMessage();
        throw localRpcException;
      }
      toast(localPreCheckAndSendSmsResp.getMessage(), 0);
    }
  }

  @UiThread
  protected void a(FragId paramFragId)
  {
    this.f = getSupportFragmentManager().beginTransaction();
    switch (6.a[paramFragId.ordinal()])
    {
    default:
      return;
    case 1:
      String str1 = SecurityUtil.a(this.d.getLogonId(), "hideaccount");
      String str2 = "请输入手机" + str1 + "收到的短信校验码";
      Bundle localBundle = new Bundle();
      localBundle.putString("PageTips", str2);
      localBundle.putString("smsCheckCodePageTitle", "填写校验码");
      localBundle.putInt("smsCheckCodeType", 1);
      this.h = new SmsCheckFragment_();
      this.h.setArguments(localBundle);
      this.f.replace(R.id.cn, this.h);
      this.f.commitAllowingStateLoss();
      this.h.a(new ModifySimplePwdActivity.2(this));
      return;
    case 2:
      this.i = new CheckUserIdFragment_();
      this.f.replace(R.id.cn, this.i);
      this.f.addToBackStack(null);
      this.f.commitAllowingStateLoss();
      this.i.a(new ModifySimplePwdActivity.3(this));
      return;
    case 3:
    }
    this.j = new SetSimplePwdFragment_();
    this.f.replace(R.id.cn, this.j);
    this.f.addToBackStack(null);
    this.f.commitAllowingStateLoss();
    this.j.a(this.d.getLogonId(), this.e, new ModifySimplePwdActivity.4(this));
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.c = new c(this.mApp);
    this.b = ((AuthService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName()));
    a();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      if ((this.j != null) && (this.j.isVisible()) && (this.j.e()))
        return true;
      if ((this.h != null) && (this.h.isVisible()))
      {
        alert("", "校验码短信可能略有延迟，请稍等。", "不了", new ModifySimplePwdActivity.5(this), "好的", null);
        return true;
      }
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  protected static enum FragId
  {
    static
    {
      CheckId = new FragId("CheckId", 1);
      SetPwd = new FragId("SetPwd", 2);
      FragId[] arrayOfFragId = new FragId[3];
      arrayOfFragId[0] = CheckSMS;
      arrayOfFragId[1] = CheckId;
      arrayOfFragId[2] = SetPwd;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.ModifySimplePwdActivity
 * JD-Core Version:    0.6.2
 */