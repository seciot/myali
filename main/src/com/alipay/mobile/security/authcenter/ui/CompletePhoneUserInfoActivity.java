package com.alipay.mobile.security.authcenter.ui;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.KeyEvent;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.framework.app.ui.BaseFragmentActivity;
import com.alipay.mobile.security.authcenter.a.a;
import com.alipay.mobile.security.securitycommon.SecurityUtil;
import com.alipay.mobile.security.securitycommon.fragment.SetSimplePwdFragment_;
import com.alipay.mobile.security.securitycommon.fragment.SmsCheckFragment_;
import com.alipay.mobileapp.biz.rpc.smscode.SmsCodeRes;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.UiThread;

@EActivity(resName="security_complete_phone_userinfo")
public class CompletePhoneUserInfoActivity extends BaseFragmentActivity
{
  public static final String a = CompletePhoneUserInfoActivity.class.getSimpleName();
  private a b;
  private FragmentTransaction c;
  private String d;
  private String e;
  private String f;
  private SmsCheckFragment_ g;
  private SetSimplePwdFragment_ h;

  @Background
  protected void a()
  {
    if (this.d != null)
      try
      {
        showProgressDialog(null, true, null);
        SmsCodeRes localSmsCodeRes = this.b.a(this.d);
        dismissProgressDialog();
        if ((this == null) || (isFinishing()))
          return;
        if ((localSmsCodeRes != null) && (!localSmsCodeRes.succ))
        {
          toast(localSmsCodeRes.msg, 0);
          return;
        }
      }
      catch (RpcException localRpcException)
      {
        dismissProgressDialog();
        localRpcException.getMessage();
        throw localRpcException;
      }
  }

  @UiThread
  protected void a(FragId paramFragId)
  {
    this.c = getSupportFragmentManager().beginTransaction();
    switch (1.a[paramFragId.ordinal()])
    {
    default:
      return;
    case 1:
      String str1 = SecurityUtil.a(this.d, "hideaccount");
      String str2 = "请输入手机" + str1 + "收到的短信校验码";
      Bundle localBundle = new Bundle();
      localBundle.putString("smsCheckCodePageTitle", "填写校验码");
      localBundle.putString("PageTips", str2);
      localBundle.putInt("smsCheckCodeType", 1);
      this.g = new SmsCheckFragment_();
      this.g.setArguments(localBundle);
      this.c.replace(R.id.aK, this.g);
      this.c.commitAllowingStateLoss();
      this.g.a(new b(this));
      return;
    case 2:
    }
    this.h = new SetSimplePwdFragment_();
    this.c.replace(R.id.aK, this.h);
    this.c.addToBackStack(null);
    this.c.commitAllowingStateLoss();
    this.h.a(this.d, null, new d(this));
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Intent localIntent = getIntent();
    if (localIntent != null)
    {
      Bundle localBundle = localIntent.getExtras();
      if (localBundle != null)
        this.d = localBundle.getString("logonId");
    }
    this.b = new a();
    a();
    a(FragId.CheckSMS);
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (this.h != null) && (this.h.isVisible()) && (this.h.e()))
      return true;
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  protected static enum FragId
  {
    static
    {
      FragId[] arrayOfFragId = new FragId[2];
      arrayOfFragId[0] = CheckSMS;
      arrayOfFragId[1] = SetPwd;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.CompletePhoneUserInfoActivity
 * JD-Core Version:    0.6.2
 */