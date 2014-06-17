package com.alipay.mobile.deviceAuthorization.ui;

import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.widget.RelativeLayout;
import com.alipay.android.widget.security.a.e;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.ui.BaseFragmentActivity;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.security.securitycommon.SecurityUtil;
import com.alipay.mobile.security.securitycommon.fragment.SmsCheckFragment_;
import com.alipay.mobilesecurity.core.model.mainpage.password.SendSmsResp;
import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.ViewById;

@EActivity(resName="auth_sms_check")
public class SmsCheckActivity extends BaseFragmentActivity
{

  @ViewById(resName="fragment_container")
  protected RelativeLayout a;
  protected AuthService b;
  private SmsCheckFragment_ c;
  private FragmentTransaction d;
  private UserInfo e = null;
  private String f = "SmsCheckActivity";
  private String g;
  private e h;

  @AfterViews
  protected final void a()
  {
    if ((this.b != null) && (this.b.isLogin()))
      this.e = this.b.getUserInfo();
    b();
    String str1 = SecurityUtil.a(this.e.getMobileNumber(), "hideaccount");
    String str2 = "请输入手机" + str1 + "收到的短信校验码";
    Bundle localBundle = new Bundle();
    localBundle.putString("PageTips", str2);
    localBundle.putString("smsCheckCodePageTitle", "填写校验码");
    localBundle.putInt("smsCheckCodeType", 1);
    this.c = new SmsCheckFragment_();
    this.c.setArguments(localBundle);
    this.d = getSupportFragmentManager().beginTransaction();
    this.d.replace(R.id.bj, this.c);
    this.d.commitAllowingStateLoss();
    this.c.a(new at(this));
  }

  @Background
  protected void b()
  {
    showProgressDialog(null, true, null);
    SendSmsResp localSendSmsResp;
    try
    {
      localSendSmsResp = this.h.a(this.e.getLogonId());
      dismissProgressDialog();
      if (localSendSmsResp == null)
      {
        toast(getResources().getString(R.string.H), 1);
        return;
      }
      String str = localSendSmsResp.resultCode;
      if ("200".equals(str))
        return;
      if ("5201".equals(str))
      {
        alert(null, localSendSmsResp.message, getResources().getString(R.string.v), new as(this), null, null);
        return;
      }
    }
    catch (RpcException localRpcException)
    {
      dismissProgressDialog();
      new StringBuilder("异常:").append(localRpcException.getMessage()).toString();
      throw localRpcException;
    }
    toast(localSendSmsResp.message, 1);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.h = new e();
    this.b = ((AuthService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName()));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.deviceAuthorization.ui.SmsCheckActivity
 * JD-Core Version:    0.6.2
 */