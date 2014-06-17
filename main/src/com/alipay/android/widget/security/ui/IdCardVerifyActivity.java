package com.alipay.android.widget.security.ui;

import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.android.widget.security.a.d;
import com.alipay.android.widget.security.msgreceiver.SecurityCertifiedMsgReceiver;
import com.alipay.android.widget.security.msgreceiver.SecurityCertifiedMsgReceiver.a;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.ext.phonecashier.PhoneCashierCallback;
import com.alipay.mobile.framework.service.ext.phonecashier.PhoneCashierPaymentResult;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.BindPhoneCallBack;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobilesecurity.core.model.mainpage.password.SimplePwdPreCheckResp;
import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.UiThread;
import com.googlecode.androidannotations.annotations.ViewById;

@EActivity(resName="idcard_verify")
public class IdCardVerifyActivity extends BaseActivity
  implements View.OnClickListener, SecurityCertifiedMsgReceiver.a, PhoneCashierCallback, BindPhoneCallBack
{

  @ViewById(resName="alreadyKown")
  protected APButton a;

  @ViewById(resName="titleBar")
  protected APTitleBar b;
  protected AuthService c;
  private UserInfo d = null;
  private d e;
  private SecurityCertifiedMsgReceiver f;
  private Intent g;

  private void a(String paramString1, String paramString2, String paramString3)
  {
    alert(null, paramString1, paramString2, new IdCardVerifyActivity.2(this, paramString3), "取消", new IdCardVerifyActivity.3(this));
  }

  private void d()
  {
    this.mMicroApplicationContext.finishApp("", this.mApp.getAppId(), null);
    e();
  }

  private void e()
  {
    Intent localIntent = new Intent("com.alipay.mobile.simplepwd.open");
    localIntent.putExtra("openResult", false);
    LocalBroadcastManager.getInstance(this).sendBroadcast(localIntent);
  }

  public void BindPhoneResult(boolean paramBoolean)
  {
  }

  @AfterViews
  protected final void a()
  {
    this.b.requestFocus();
    this.a.setOnClickListener(this);
  }

  public final void a(Intent paramIntent)
  {
    String str = paramIntent.getAction();
    if ("com.alipay.security.namecertified".equalsIgnoreCase(str))
      if (paramIntent.getBooleanExtra("isCertified", false))
        b();
    while (!"com.alipay.mobile.action.INSTALLMSP".equals(str))
    {
      return;
      d();
      return;
    }
    d();
  }

  @Background
  void b()
  {
    if (this.c != null)
    {
      if ((this.c != null) && (this.c.isLogin()))
        this.d = this.c.getUserInfo();
      UserInfo localUserInfo = this.d;
      if (localUserInfo != null)
      {
        String str1;
        String str2;
        try
        {
          showProgressDialog(null, false, null);
          SimplePwdPreCheckResp localSimplePwdPreCheckResp = this.e.b(localUserInfo.getLogonId());
          dismissProgressDialog();
          if (localSimplePwdPreCheckResp == null)
            return;
          if (localSimplePwdPreCheckResp.isSuccess())
          {
            c();
            return;
          }
          str1 = localSimplePwdPreCheckResp.getResultCode();
          str2 = localSimplePwdPreCheckResp.getMessage();
          if ("1801".equals(str1))
          {
            a(str2, "绑定手机", str1);
            return;
          }
        }
        catch (RpcException localRpcException)
        {
          dismissProgressDialog();
          throw localRpcException;
        }
        if ("1802".equals(str1))
        {
          a(str2, "实名认证", str1);
          return;
        }
        if ("1803".equals(str1))
        {
          a(str2, "立即认证", str1);
          return;
        }
        if ("700".equals(str1))
        {
          a(str2, "拨打", str1);
          return;
        }
        if ("1834".equals(str1))
        {
          Intent localIntent = new Intent(this, SmsCheckActivity_.class);
          this.mMicroApplicationContext.startActivity(this.mApp, localIntent);
          return;
        }
        if ("5201".equals(str1))
        {
          alert(null, str2, getResources().getString(R.string.bi), new IdCardVerifyActivity.1(this), null, null);
          return;
        }
        toast(str2, 1);
      }
    }
  }

  @UiThread
  void c()
  {
    Intent localIntent = new Intent(this, ValidatePayPwdAcitivyt_.class);
    this.mMicroApplicationContext.startActivity(this.mApp, localIntent);
  }

  public void onBackPressed()
  {
    super.onBackPressed();
    e();
  }

  public void onClick(View paramView)
  {
    if (paramView.getId() == R.id.w)
      b();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.g = getIntent();
    this.c = ((AuthService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName()));
    this.e = new d(this.mApp);
    this.f = new SecurityCertifiedMsgReceiver();
    this.f.a(this);
    LocalBroadcastManager localLocalBroadcastManager = LocalBroadcastManager.getInstance(this);
    localLocalBroadcastManager.registerReceiver(this.f, new IntentFilter("com.alipay.security.namecertified"));
    localLocalBroadcastManager.registerReceiver(this.f, new IntentFilter("com.alipay.mobile.action.INSTALLMSP"));
  }

  protected void onDestroy()
  {
    super.onDestroy();
    if (this.f != null)
      LocalBroadcastManager.getInstance(this).unregisterReceiver(this.f);
  }

  public void onInstallFailed()
  {
    d();
  }

  public void onPayFailed(int paramInt, String paramString)
  {
    d();
  }

  public void onPaySuccess(PhoneCashierPaymentResult paramPhoneCashierPaymentResult)
  {
    b();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.IdCardVerifyActivity
 * JD-Core Version:    0.6.2
 */