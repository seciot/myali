package com.alipay.mobile.security.accountmanager.ui;

import android.annotation.SuppressLint;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import com.alibaba.fastjson.JSON;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APCheckCodeHorizontalView;
import com.alipay.mobile.commonui.widget.APCheckboxWithLinkText;
import com.alipay.mobile.commonui.widget.APEditText;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.OnSendCallback;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.RSAService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.security.securitycommon.Constants;
import com.alipay.mobile.security.securitycommon.SecurityPwdUtil;
import com.alipay.mobile.security.tid.TidGetter;
import com.alipay.mobilesecurity.biz.gw.service.account.PasswordManagerFacade;
import com.alipay.mobilesecurity.biz.gw.service.account.mobilebind.MobileBindManagerFacade;
import com.alipay.mobilesecurity.core.model.mainpage.password.ApplyModifyPwdResult;
import com.alipay.mobilesecurity.core.model.mainpage.password.ApplyPwdModificationRequest;
import com.alipay.mobilesecurity.core.model.mainpage.password.VerifySmsCodeRequest;
import com.alipay.mobilesecurity.core.model.mobilebind.MobileBindQueryReq;
import com.alipay.mobilesecurity.core.model.mobilebind.MobileBindQueryRes;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.UiThread;
import com.googlecode.androidannotations.annotations.ViewById;

@SuppressLint({"HandlerLeak"})
@EActivity(resName="security_loginpwd")
public class ModifyLoginPwdActivity extends BaseActivity
{

  @ViewById(resName="security_loginpwd1_current_pwd")
  protected APInputBox a;

  @ViewById(resName="security_loginpwd1_new_pwd")
  protected APInputBox b;

  @ViewById(resName="security_loginpwd1_next_step")
  protected APButton c;

  @ViewById(resName="security_loginpwd2_confirm")
  protected APButton d;

  @ViewById(resName="security_loginpwd1_is_show_pwd")
  protected APCheckboxWithLinkText e;

  @ViewById(resName="security_loginpwd1")
  protected APLinearLayout f;

  @ViewById(resName="security_loginpwd2")
  protected APLinearLayout g;

  @ViewById(resName="security_loginpwd2_warn_txt")
  protected APTextView h;

  @ViewById(resName="security_loginpwd2_checkCodeSend")
  protected APCheckCodeHorizontalView i;
  OnSendCallback j = new cj(this);
  TextWatcher k = new ck(this);
  DialogInterface.OnCancelListener l = new cm(this);
  DialogInterface.OnClickListener m = new ch(this);
  private String n;
  private String o;
  private String p;
  private String q;
  private UserInfo r;
  private Thread s;
  private Thread t;
  private Thread u;
  private Boolean v = Boolean.valueOf(false);
  private Handler w = new ce(this);
  private View.OnClickListener x = new cl(this);
  private View.OnClickListener y = new cn(this);
  private View.OnClickListener z = new co(this);

  private ApplyModifyPwdResult d()
  {
    RSAService localRSAService = (RSAService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(RSAService.class.getName());
    if (localRSAService != null)
      try
      {
        ApplyPwdModificationRequest localApplyPwdModificationRequest = new ApplyPwdModificationRequest();
        localApplyPwdModificationRequest.setLoginId(this.p);
        this.n = localRSAService.RSAEncrypt(this.a.getInputedText().toString(), false);
        this.o = localRSAService.RSAEncrypt(this.b.getInputedText().toString(), false);
        localApplyPwdModificationRequest.setOldPwd(this.n);
        localApplyPwdModificationRequest.setPwd(this.o);
        localApplyPwdModificationRequest.setPwdType(Constants.PWD_TYPE_LOGIN);
        PasswordManagerFacade localPasswordManagerFacade = (PasswordManagerFacade)((RpcService)this.mApp.getServiceByInterface(RpcService.class.getName())).getRpcProxy(PasswordManagerFacade.class);
        this.t = Thread.currentThread();
        ApplyModifyPwdResult localApplyModifyPwdResult = localPasswordManagerFacade.applyPwdModification(localApplyPwdModificationRequest);
        return localApplyModifyPwdResult;
      }
      catch (RpcException localRpcException)
      {
        new StringBuilder("{[info=modifyPwdStepOne],[msg=").append(localRpcException.toString()).append("]}").toString();
        dismissProgressDialog();
        c();
        if (localRpcException.getCode() != 13)
          throw localRpcException;
      }
      catch (Exception localException)
      {
        dismissProgressDialog();
        c();
      }
    return null;
  }

  private ApplyModifyPwdResult e()
  {
    VerifySmsCodeRequest localVerifySmsCodeRequest = new VerifySmsCodeRequest();
    localVerifySmsCodeRequest.setLoginId(this.p);
    localVerifySmsCodeRequest.setPwdType(Constants.PWD_TYPE_LOGIN);
    localVerifySmsCodeRequest.setSmsCode(this.q);
    localVerifySmsCodeRequest.setUserAction("modify");
    localVerifySmsCodeRequest.setOldPwd(this.n);
    localVerifySmsCodeRequest.setPwd(this.o);
    localVerifySmsCodeRequest.setTid(new TidGetter(this.mMicroApplicationContext).getClientTid());
    RpcService localRpcService = (RpcService)this.mApp.getServiceByInterface(RpcService.class.getName());
    try
    {
      PasswordManagerFacade localPasswordManagerFacade = (PasswordManagerFacade)localRpcService.getRpcProxy(PasswordManagerFacade.class);
      this.u = Thread.currentThread();
      ApplyModifyPwdResult localApplyModifyPwdResult = localPasswordManagerFacade.verifySmsCode(localVerifySmsCodeRequest);
      return localApplyModifyPwdResult;
    }
    catch (RpcException localRpcException)
    {
      new StringBuilder("{[info=modifyPwdStepTwo],[msg=").append(localRpcException.toString()).append("]}").toString();
      dismissProgressDialog();
      if (localRpcException.getCode() != 13)
        throw localRpcException;
    }
    return null;
  }

  private MobileBindQueryRes f()
  {
    try
    {
      MobileBindQueryReq localMobileBindQueryReq = new MobileBindQueryReq();
      localMobileBindQueryReq.setLogonId(this.p);
      MobileBindManagerFacade localMobileBindManagerFacade = (MobileBindManagerFacade)((RpcService)this.mApp.getServiceByInterface(RpcService.class.getName())).getRpcProxy(MobileBindManagerFacade.class);
      this.s = Thread.currentThread();
      MobileBindQueryRes localMobileBindQueryRes = localMobileBindManagerFacade.queryBindMobile(localMobileBindQueryReq);
      return localMobileBindQueryRes;
    }
    catch (RpcException localRpcException)
    {
      new StringBuilder("{[info=modifyPwdStepTwo],[msg=").append(localRpcException.toString()).append("]}").toString();
      dismissProgressDialog();
      if (localRpcException.getCode() != 13)
        throw localRpcException;
    }
    return null;
  }

  @Background
  protected void a()
  {
    AuthService localAuthService = (AuthService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName());
    if (localAuthService.auth(new Bundle()))
    {
      this.r = localAuthService.getUserInfo();
      this.p = this.r.getLogonId();
      b();
    }
  }

  @UiThread
  protected void b()
  {
    this.c.setEnabled(false);
    this.d.setEnabled(false);
    this.e.setCheckBoxText(getResources().getString(R.string.cv));
    this.e.getCheckBox().setChecked(false);
    this.a.setInputType(129);
    this.b.setInputType(129);
    SecurityPwdUtil.a(this.i.getInputBox().getEtContent(), 6);
    this.c.setOnClickListener(this.x);
    this.e.getCheckBox().setOnClickListener(this.y);
    this.d.setOnClickListener(this.z);
    this.a.addTextChangedListener(this.k);
    this.b.addTextChangedListener(this.k);
    this.i.getInputBox().addTextChangedListener(this.k);
    this.i.setOnSendCallback(this.j);
    this.c.postDelayed(new ci(this), 500L);
    showProgressDialog(null, true, this.l);
    new Thread(new a(0, (byte)0)).start();
  }

  @UiThread
  protected void c()
  {
    this.i.getSendCodeButton().setEnabled(true);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (this.g.getVisibility() == 0))
    {
      this.g.setVisibility(8);
      this.f.setVisibility(0);
      this.i.currentSecond2Zero();
      this.a.getEtContent().setText("");
      this.b.getEtContent().setText("");
      return false;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  protected void onRestart()
  {
    super.onRestart();
    if (this.v.booleanValue())
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
        MobileBindQueryRes localMobileBindQueryRes = ModifyLoginPwdActivity.h(ModifyLoginPwdActivity.this);
        Bundle localBundle3 = new Bundle();
        localBundle3.putCharSequence("rs", JSON.toJSONString(localMobileBindQueryRes));
        localMessage.setData(localBundle3);
        ModifyLoginPwdActivity.i(ModifyLoginPwdActivity.this).sendMessage(localMessage);
        return;
      case 1:
        ApplyModifyPwdResult localApplyModifyPwdResult2 = ModifyLoginPwdActivity.j(ModifyLoginPwdActivity.this);
        Bundle localBundle2 = new Bundle();
        localBundle2.putCharSequence("rs", JSON.toJSONString(localApplyModifyPwdResult2));
        localMessage.setData(localBundle2);
        ModifyLoginPwdActivity.i(ModifyLoginPwdActivity.this).sendMessage(localMessage);
        return;
      case 2:
      }
      ApplyModifyPwdResult localApplyModifyPwdResult1 = ModifyLoginPwdActivity.k(ModifyLoginPwdActivity.this);
      Bundle localBundle1 = new Bundle();
      localBundle1.putCharSequence("rs", JSON.toJSONString(localApplyModifyPwdResult1));
      localMessage.setData(localBundle1);
      ModifyLoginPwdActivity.i(ModifyLoginPwdActivity.this).sendMessage(localMessage);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.ModifyLoginPwdActivity
 * JD-Core Version:    0.6.2
 */