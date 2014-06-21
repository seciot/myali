package com.alipay.mobile.security.accountmanager.ui;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import android.widget.RelativeLayout.LayoutParams;
import com.alibaba.fastjson.JSON;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APCheckCodeHorizontalView;
import com.alipay.mobile.commonui.widget.APCheckboxWithLinkText;
import com.alipay.mobile.commonui.widget.APEditText;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.commonui.widget.OnSendCallback;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.RSAService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.security.securitycommon.Constants;
import com.alipay.mobile.security.securitycommon.SecurityCommonDialogUtil;
import com.alipay.mobile.security.securitycommon.SecurityPwdUtil;
import com.alipay.mobile.security.tid.TidGetter;
import com.alipay.mobilesecurity.biz.gw.service.account.PasswordManagerFacade;
import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;
import com.alipay.mobilesecurity.core.model.mainpage.password.ApplyModifyPwdResult;
import com.alipay.mobilesecurity.core.model.mainpage.password.CheckSmsCodeForResetPwdRequst;
import com.alipay.mobilesecurity.core.model.mainpage.password.CheckUserCertRequest;
import com.alipay.mobilesecurity.core.model.mainpage.password.FoundPasswordResult;
import com.alipay.mobilesecurity.core.model.mainpage.password.ResetPasswordRequest;
import com.alipay.mobilesecurity.core.model.mainpage.password.VerifySmsCodeRequest;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.UiThread;
import com.googlecode.androidannotations.annotations.ViewById;

@SuppressLint({"HandlerLeak"})
@EActivity(resName="security_back_paypwd")
public class ForgotPayPwdActivity extends BaseActivity
  implements View.OnClickListener
{
  private String A;
  private AlertDialog.Builder B;
  private int C;
  private boolean D;
  private Thread E;
  private Thread F;
  private Thread G;
  private Thread H;
  private Thread I;
  private Handler J = new bl(this);

  @ViewById(resName="security_back_paypwd_step1")
  protected APLinearLayout a;

  @ViewById(resName="security_back_paypwd_step21")
  protected APLinearLayout b;

  @ViewById(resName="security_back_paypwd_step22")
  protected APLinearLayout c;

  @ViewById(resName="security_back_paypwd_step3")
  protected APLinearLayout d;

  @ViewById(resName="socityId")
  protected APInputBox e;

  @ViewById(resName="security_back_paypwd_step1_next_step")
  protected APButton f;

  @ViewById(resName="security_back_paypwd_step21_warn")
  protected APTextView g;

  @ViewById(resName="security_reconfirm_pwd")
  protected APButton h;

  @ViewById(resName="security_send_checkcode_btn")
  protected APCheckCodeHorizontalView i;

  @ViewById(resName="security_back_paypwd_step22_warn")
  protected APTextView j;

  @ViewById(resName="security_back_paypwd_step22_payCheckCodeSend")
  protected APCheckCodeHorizontalView k;

  @ViewById(resName="security_back_paypwd22_next_step")
  protected APButton l;

  @ViewById(resName="security_back_paypwd_new_pwd")
  protected APInputBox m;

  @ViewById(resName="security_back_paypwd3_confirm")
  protected APButton n;

  @ViewById(resName="security_back_paypwd_titleBar")
  protected APTitleBar o;

  @ViewById(resName="is_show_pwd")
  protected APCheckboxWithLinkText p;
  OnSendCallback q = new br(this);
  View.OnClickListener r = new bs(this);
  TextWatcher s = new bt(this);
  DialogInterface.OnCancelListener t = new bu(this);
  DialogInterface.OnClickListener u = new bw(this);
  private int v = 0;
  private String w;
  private String x;
  private String y;
  private String z;

  private void a(int paramInt, String paramString)
  {
    if (paramString.length() >= 11)
      paramString = paramString.substring(0, 3) + "****" + paramString.substring(7, 11);
    if (this.a.getVisibility() == 0)
      this.a.setVisibility(8);
    if (Constants.BACK_PWD_SMS_SWITCH_DOWN == paramInt)
    {
      this.j.setText(getResources().getString(R.string.bc) + paramString + getResources().getString(R.string.bd));
      this.c.setVisibility(0);
      this.b.setVisibility(8);
      this.k.scheduleTimer();
      return;
    }
    this.g.setText(getResources().getString(R.string.ax) + paramString + getResources().getString(R.string.ay));
    this.b.setVisibility(0);
    this.c.setVisibility(8);
    this.i.scheduleTimer();
  }

  private ApplyModifyPwdResult b(String paramString)
  {
    VerifySmsCodeRequest localVerifySmsCodeRequest = new VerifySmsCodeRequest();
    localVerifySmsCodeRequest.setLoginId(paramString);
    localVerifySmsCodeRequest.setSmsCode(this.z);
    localVerifySmsCodeRequest.setPwdType(Constants.PWD_TYPE_PAY);
    localVerifySmsCodeRequest.setUserAction("found");
    localVerifySmsCodeRequest.setTid(new TidGetter(this.mMicroApplicationContext).getClientTid());
    PasswordManagerFacade localPasswordManagerFacade = (PasswordManagerFacade)((RpcService)this.mApp.getServiceByInterface(RpcService.class.getName())).getRpcProxy(PasswordManagerFacade.class);
    try
    {
      this.G = Thread.currentThread();
      ApplyModifyPwdResult localApplyModifyPwdResult = localPasswordManagerFacade.verifySmsCode(localVerifySmsCodeRequest);
      return localApplyModifyPwdResult;
    }
    catch (RpcException localRpcException)
    {
      new StringBuilder("{[info=nextBtnStep22VerifySmsCode],[msg=").append(localRpcException.getMessage()).append("]}").toString();
      dismissProgressDialog();
      if (localRpcException.getCode() != 13)
        throw localRpcException;
    }
    return null;
  }

  private FoundPasswordResult c(String paramString)
  {
    PasswordManagerFacade localPasswordManagerFacade = (PasswordManagerFacade)((RpcService)this.mApp.getServiceByInterface(RpcService.class.getName())).getRpcProxy(PasswordManagerFacade.class);
    CheckUserCertRequest localCheckUserCertRequest = new CheckUserCertRequest();
    localCheckUserCertRequest.setCertNo(paramString);
    localCheckUserCertRequest.setCertType("idCard");
    localCheckUserCertRequest.setLoginId(this.w);
    localCheckUserCertRequest.setPasswordType(Constants.PWD_TYPE_PAY);
    try
    {
      this.E = Thread.currentThread();
      FoundPasswordResult localFoundPasswordResult = localPasswordManagerFacade.checkUserCertAndSendSMS(localCheckUserCertRequest);
      return localFoundPasswordResult;
    }
    catch (RpcException localRpcException)
    {
      new StringBuilder("{[info=checkSocityId],[msg=").append(localRpcException.toString()).append("]}").toString();
      dismissProgressDialog();
      c();
      if (localRpcException.getCode() != 13)
        throw localRpcException;
    }
    return null;
  }

  private MobileSecurityResult d()
  {
    try
    {
      RSAService localRSAService = (RSAService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(RSAService.class.getName());
      ResetPasswordRequest localResetPasswordRequest = new ResetPasswordRequest();
      localResetPasswordRequest.setLoginId(this.w);
      localResetPasswordRequest.setPwd(localRSAService.RSAEncrypt(this.A, false));
      localResetPasswordRequest.setPwdType(Constants.PWD_TYPE_PAY);
      PasswordManagerFacade localPasswordManagerFacade = (PasswordManagerFacade)((RpcService)this.mApp.getServiceByInterface(RpcService.class.getName())).getRpcProxy(PasswordManagerFacade.class);
      this.H = Thread.currentThread();
      MobileSecurityResult localMobileSecurityResult = localPasswordManagerFacade.resetPassword(localResetPasswordRequest);
      return localMobileSecurityResult;
    }
    catch (RpcException localRpcException)
    {
      new StringBuilder("{[info=btnStep3ResetPwd],[msg=").append(localRpcException.toString()).append("]}").toString();
      dismissProgressDialog();
      if (localRpcException.getCode() != 13)
        throw localRpcException;
    }
    return null;
  }

  private MobileSecurityResult d(String paramString)
  {
    PasswordManagerFacade localPasswordManagerFacade = (PasswordManagerFacade)((RpcService)this.mApp.getServiceByInterface(RpcService.class.getName())).getRpcProxy(PasswordManagerFacade.class);
    CheckSmsCodeForResetPwdRequst localCheckSmsCodeForResetPwdRequst = new CheckSmsCodeForResetPwdRequst();
    localCheckSmsCodeForResetPwdRequst.setBindedPhoneNo(this.y);
    localCheckSmsCodeForResetPwdRequst.setLoginId(paramString);
    try
    {
      this.F = Thread.currentThread();
      MobileSecurityResult localMobileSecurityResult = localPasswordManagerFacade.checkSmsCodeForResetPwd(localCheckSmsCodeForResetPwdRequst);
      return localMobileSecurityResult;
    }
    catch (RpcException localRpcException)
    {
      new StringBuilder("{[info=recofirmBtnStep21],[msg=").append(localRpcException.toString()).append("]}").toString();
      dismissProgressDialog();
      if (localRpcException.getCode() != 13)
        throw localRpcException;
    }
    return null;
  }

  private FoundPasswordResult e()
  {
    try
    {
      showProgressDialog(null, true, this.t);
      this.I = Thread.currentThread();
      FoundPasswordResult localFoundPasswordResult = ((PasswordManagerFacade)((RpcService)this.mApp.getServiceByInterface(RpcService.class.getName())).getRpcProxy(PasswordManagerFacade.class)).checkUserInfo(this.w);
      return localFoundPasswordResult;
    }
    catch (RpcException localRpcException)
    {
      new StringBuilder("{[info=step0HasBind], [msg=").append(localRpcException.getMessage()).append("]}").toString();
      dismissProgressDialog();
      c();
      if (this.v == 0)
      {
        this.mApp.getMicroApplicationContext().finishApp(this.mApp.getAppId(), this.mApp.getAppId(), null);
        this.v = (1 + this.v);
      }
      if (localRpcException.getCode() != 13)
        throw localRpcException;
    }
    return null;
  }

  @Background
  protected void a()
  {
    if ((this.mApp != null) && (this.mApp.getMicroApplicationContext() != null))
    {
      AuthService localAuthService = (AuthService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName());
      if ((localAuthService != null) && (localAuthService.auth(new Bundle())))
      {
        this.w = localAuthService.getUserInfo().getLogonId();
        b();
      }
    }
  }

  @UiThread
  protected void a(MobileSecurityResult paramMobileSecurityResult)
  {
    if (paramMobileSecurityResult != null)
    {
      if (paramMobileSecurityResult.isSuccess())
      {
        this.o.setTitleText(getResources().getString(R.string.at));
        this.d.setVisibility(0);
        this.c.setVisibility(8);
        this.b.setVisibility(8);
      }
    }
    else
      return;
    toast(paramMobileSecurityResult.getMessage(), 1);
  }

  @UiThread
  protected void a(FoundPasswordResult paramFoundPasswordResult)
  {
    if (paramFoundPasswordResult != null)
    {
      if (!paramFoundPasswordResult.isSuccess())
        break label141;
      this.y = paramFoundPasswordResult.getBindedPhoneNo();
      if ((this.y == null) || ("".equals(this.y.trim())))
        break label106;
      this.D = paramFoundPasswordResult.isCertified();
      if (!paramFoundPasswordResult.isCertified())
        break label85;
      this.a.setVisibility(0);
      this.f.postDelayed(new bv(this), 500L);
    }
    label85: label106: 
    do
    {
      return;
      this.C = paramFoundPasswordResult.getIsSmsSwitch();
      a(paramFoundPasswordResult.getIsSmsSwitch(), this.y);
      return;
      super.alert(null, getResources().getString(R.string.bS).toString(), getResources().getString(R.string.bi), this.u, null, null);
      return;
      if ("703".equals(paramFoundPasswordResult.getResultCode()))
      {
        this.a.setVisibility(0);
        super.alert(null, getResources().getString(R.string.bS).toString(), getResources().getString(R.string.bi), this.u, null, null);
        return;
      }
      if ("700".equals(paramFoundPasswordResult.getResultCode()))
      {
        if (this.v == 0)
        {
          this.a.setVisibility(0);
          ActivityApplication localActivityApplication = this.mApp;
          runOnUiThread(new bm(this, this, Boolean.valueOf(true), localActivityApplication));
          return;
        }
        SecurityCommonDialogUtil.e(this, this.mApp, paramFoundPasswordResult);
        return;
      }
      toast(paramFoundPasswordResult.getMessage(), 1);
    }
    while (this.v != 0);
    label141: this.mApp.getMicroApplicationContext().finishApp(this.mApp.getAppId(), this.mApp.getAppId(), null);
  }

  @UiThread
  protected void a(String paramString)
  {
    toast(paramString, 1);
  }

  @UiThread
  protected void b()
  {
    new Thread(new a(0, (byte)0)).start();
    this.f.setEnabled(false);
    this.l.setEnabled(false);
    this.n.setEnabled(false);
    ((RelativeLayout.LayoutParams)this.i.getInputBox().getLayoutParams()).width = 0;
    ((RelativeLayout.LayoutParams)this.i.getSendCodeButton().getLayoutParams()).width = -1;
    this.p.setCheckBoxText(getResources().getString(R.string.cv));
    this.p.getCheckBox().setChecked(true);
    this.e.getEtContent().setKeyListener(new bq(this));
    SecurityPwdUtil.a(this.i.getInputBox().getEtContent(), 6);
    SecurityPwdUtil.a(this.k.getInputBox().getEtContent(), 6);
    this.e.addTextChangedListener(this.s);
    this.f.setOnClickListener(this);
    this.h.setOnClickListener(this);
    this.i.setOnSendCallback(this.q);
    this.k.getInputBox().addTextChangedListener(this.s);
    this.k.setOnSendCallback(this.q);
    this.l.setOnClickListener(this);
    this.m.addTextChangedListener(this.s);
    this.n.setOnClickListener(this);
    this.p.getCheckBox().setOnClickListener(this.r);
    this.o.setTitleText(getResources().getString(R.string.ar));
  }

  @UiThread
  protected void c()
  {
    this.k.getSendCodeButton().setEnabled(true);
    this.i.getSendCodeButton().setEnabled(true);
  }

  public void onClick(View paramView)
  {
    int i1 = paramView.getId();
    boolean bool;
    if (i1 == R.id.ei)
    {
      this.x = this.e.getInputedText().toString().replace(" ", "");
      if ((this.x != null) && (!"".equals(this.x.trim())))
        if ((this.x.matches("[0-9]{17}x")) || (this.x.matches("[0-9]{15}")) || (this.x.matches("[0-9]{18}")) || (this.x.matches("[0-9]{17}X")))
        {
          bool = true;
          if (Boolean.valueOf(bool).booleanValue())
            break label143;
          toast(getResources().getString(R.string.BundlesManager), 1);
        }
    }
    label143: 
    do
    {
      return;
      bool = false;
      break;
      showProgressDialog(null, true, this.t);
      new Thread(new a(1, (byte)0)).start();
      return;
      toast(getResources().getString(R.string.BundlesManager), 1);
      return;
      if (i1 == R.id.fj)
      {
        showProgressDialog(null, true, this.t);
        new Thread(new a(21, (byte)0)).start();
        return;
      }
      if (i1 == R.id.ee)
      {
        showProgressDialog(null, true, this.t);
        new Thread(new a(22, (byte)0)).start();
        return;
      }
    }
    while (i1 != R.id.ef);
    this.A = this.m.getInputedText().toString();
    if ((this.A == null) || ("".equals(this.A.trim())) || (this.A.length() > 20) || (this.A.length() < 6))
    {
      toast(getResources().getString(R.string.cc).toString(), 1);
      return;
    }
    showProgressDialog(null, true, this.t);
    new Thread(new a(3, (byte)0)).start();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      if (this.d.getVisibility() == 0)
      {
        this.d.setVisibility(8);
        String str;
        if (this.y.length() < 11)
        {
          str = this.y;
          if (Constants.BACK_PWD_SMS_SWITCH_DOWN != this.C)
            break label153;
          this.j.setText(getResources().getString(R.string.bc) + str + getResources().getString(R.string.bd));
          this.c.setVisibility(0);
        }
        while (true)
        {
          return false;
          str = this.y.substring(0, 3) + "****" + this.y.substring(7, 11);
          break;
          label153: this.g.setText(getResources().getString(R.string.ax) + str + getResources().getString(R.string.ay));
          this.b.setVisibility(0);
        }
      }
      if ((this.b.getVisibility() == 0) || (this.c.getVisibility() == 0))
      {
        if (this.D)
        {
          this.b.setVisibility(8);
          this.c.setVisibility(8);
          this.a.setVisibility(0);
        }
        while (true)
        {
          return false;
          this.mApp.getMicroApplicationContext().finishApp(this.mApp.getAppId(), this.mApp.getAppId(), null);
        }
      }
      if (this.a.getVisibility() == 0)
      {
        this.mApp.getMicroApplicationContext().finishApp(this.mApp.getAppId(), this.mApp.getAppId(), null);
        return false;
      }
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  protected void onRestart()
  {
    super.onRestart();
    if ((this.a.getVisibility() == 8) && (this.b.getVisibility() == 8) && (this.c.getVisibility() == 8) && (this.d.getVisibility() == 8) && (this.v == 0))
      this.mApp.getMicroApplicationContext().finishApp(this.mApp.getAppId(), this.mApp.getAppId(), null);
  }

  private final class a
    implements Runnable
  {
    private int b;

    private a(int arg2)
    {
      int i;
      this.b = i;
    }

    public final void run()
    {
      Message localMessage = new Message();
      localMessage.what = this.b;
      switch (this.b)
      {
      default:
        return;
      case 0:
        FoundPasswordResult localFoundPasswordResult2 = ForgotPayPwdActivity.k(ForgotPayPwdActivity.this);
        Bundle localBundle5 = new Bundle();
        localBundle5.putCharSequence("rs", JSON.toJSONString(localFoundPasswordResult2));
        localMessage.setData(localBundle5);
        ForgotPayPwdActivity.l(ForgotPayPwdActivity.this).sendMessage(localMessage);
        return;
      case 1:
        FoundPasswordResult localFoundPasswordResult1 = ForgotPayPwdActivity.d(ForgotPayPwdActivity.this, ForgotPayPwdActivity.c(ForgotPayPwdActivity.this));
        Bundle localBundle4 = new Bundle();
        localBundle4.putCharSequence("rs", JSON.toJSONString(localFoundPasswordResult1));
        localMessage.setData(localBundle4);
        ForgotPayPwdActivity.l(ForgotPayPwdActivity.this).sendMessage(localMessage);
        return;
      case 21:
        MobileSecurityResult localMobileSecurityResult2 = ForgotPayPwdActivity.e(ForgotPayPwdActivity.this, ForgotPayPwdActivity.m(ForgotPayPwdActivity.this));
        Bundle localBundle3 = new Bundle();
        localBundle3.putCharSequence("rs", JSON.toJSONString(localMobileSecurityResult2));
        localMessage.setData(localBundle3);
        ForgotPayPwdActivity.l(ForgotPayPwdActivity.this).sendMessage(localMessage);
        return;
      case 22:
        ApplyModifyPwdResult localApplyModifyPwdResult = ForgotPayPwdActivity.f(ForgotPayPwdActivity.this, ForgotPayPwdActivity.m(ForgotPayPwdActivity.this));
        Bundle localBundle2 = new Bundle();
        localBundle2.putCharSequence("rs", JSON.toJSONString(localApplyModifyPwdResult));
        localMessage.setData(localBundle2);
        ForgotPayPwdActivity.l(ForgotPayPwdActivity.this).sendMessage(localMessage);
        return;
      case 3:
      }
      MobileSecurityResult localMobileSecurityResult1 = ForgotPayPwdActivity.n(ForgotPayPwdActivity.this);
      Bundle localBundle1 = new Bundle();
      localBundle1.putCharSequence("rs", JSON.toJSONString(localMobileSecurityResult1));
      localMessage.setData(localBundle1);
      ForgotPayPwdActivity.l(ForgotPayPwdActivity.this).sendMessage(localMessage);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.ForgotPayPwdActivity
 * JD-Core Version:    0.6.2
 */