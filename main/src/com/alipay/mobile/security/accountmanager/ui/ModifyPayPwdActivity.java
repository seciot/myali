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
import com.alipay.mobile.commonui.widget.APScrollView;
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
@EActivity(resName="security_paypwd")
public class ModifyPayPwdActivity extends BaseActivity
{

  @ViewById(resName="security_paypwd1_current_pwd")
  protected APInputBox a;

  @ViewById(resName="security_paypwd1_new_pwd")
  protected APInputBox b;

  @ViewById(resName="security_paypwd1_next_step")
  protected APButton c;

  @ViewById(resName="security_paypwd2_confirm")
  protected APButton d;

  @ViewById(resName="security_paypwd1_is_show_pwd")
  protected APCheckboxWithLinkText e;

  @ViewById(resName="security_paypwd_scrollview")
  protected APScrollView f;

  @ViewById(resName="security_paypwd1")
  protected APLinearLayout g;

  @ViewById(resName="security_paypwd2")
  protected APLinearLayout h;

  @ViewById(resName="security_paypwd2_warn_txt")
  protected APTextView i;

  @ViewById(resName="security_paypwd2_payCheckCodeSend")
  protected APCheckCodeHorizontalView j;
  OnSendCallback k = new cz(this);
  TextWatcher l = new da(this);
  DialogInterface.OnCancelListener m = new dc(this);
  DialogInterface.OnClickListener n = new cx(this);
  private String o;
  private String p;
  private String q;
  private String r;
  private Thread s;
  private Thread t;
  private Thread u;
  private Boolean v = Boolean.valueOf(false);
  private Handler w = new ct(this);
  private View.OnClickListener x = new db(this);
  private View.OnClickListener y = new dd(this);
  private View.OnClickListener z = new de(this);

  private ApplyModifyPwdResult d()
  {
    RSAService localRSAService = (RSAService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(RSAService.class.getName());
    if (localRSAService != null)
      try
      {
        ApplyPwdModificationRequest localApplyPwdModificationRequest = new ApplyPwdModificationRequest();
        localApplyPwdModificationRequest.setLoginId(this.q);
        this.o = localRSAService.RSAEncrypt(this.a.getInputedText().toString(), false);
        this.p = localRSAService.RSAEncrypt(this.b.getInputedText().toString(), false);
        localApplyPwdModificationRequest.setOldPwd(this.o);
        localApplyPwdModificationRequest.setPwd(this.p);
        localApplyPwdModificationRequest.setPwdType(Constants.PWD_TYPE_PAY);
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
    localVerifySmsCodeRequest.setLoginId(this.q);
    localVerifySmsCodeRequest.setPwdType(Constants.PWD_TYPE_PAY);
    localVerifySmsCodeRequest.setSmsCode(this.r);
    localVerifySmsCodeRequest.setUserAction("modify");
    localVerifySmsCodeRequest.setOldPwd(this.o);
    localVerifySmsCodeRequest.setPwd(this.p);
    localVerifySmsCodeRequest.setTid(new TidGetter(this.mMicroApplicationContext).getClientTid());
    PasswordManagerFacade localPasswordManagerFacade = (PasswordManagerFacade)((RpcService)this.mApp.getServiceByInterface(RpcService.class.getName())).getRpcProxy(PasswordManagerFacade.class);
    try
    {
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
      localMobileBindQueryReq.setLogonId(this.q);
      MobileBindManagerFacade localMobileBindManagerFacade = (MobileBindManagerFacade)((RpcService)this.mApp.getServiceByInterface(RpcService.class.getName())).getRpcProxy(MobileBindManagerFacade.class);
      this.s = Thread.currentThread();
      MobileBindQueryRes localMobileBindQueryRes = localMobileBindManagerFacade.queryBindMobile(localMobileBindQueryReq);
      return localMobileBindQueryRes;
    }
    catch (RpcException localRpcException)
    {
      new StringBuilder("{[info=step0CheckBindCellphone],[msg=").append(localRpcException.toString()).append("]}").toString();
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
      this.q = localAuthService.getUserInfo().getLogonId();
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
    SecurityPwdUtil.a(this.j.getInputBox().getEtContent(), 6);
    this.c.setOnClickListener(this.x);
    this.e.getCheckBox().setOnClickListener(this.y);
    this.d.setOnClickListener(this.z);
    this.a.addTextChangedListener(this.l);
    this.b.addTextChangedListener(this.l);
    this.j.setOnSendCallback(this.k);
    this.j.getInputBox().getEtContent().addTextChangedListener(this.l);
    this.c.postDelayed(new cy(this), 500L);
    showProgressDialog(null, true, this.m);
    new Thread(new a(0, (byte)0)).start();
  }

  @UiThread
  protected void c()
  {
    this.j.getSendCodeButton().setEnabled(true);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (this.h.getVisibility() == 0))
    {
      this.h.setVisibility(8);
      this.g.setVisibility(0);
      this.j.currentSecond2Zero();
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
        MobileBindQueryRes localMobileBindQueryRes = ModifyPayPwdActivity.h(ModifyPayPwdActivity.this);
        Bundle localBundle3 = new Bundle();
        localBundle3.putCharSequence("rs", JSON.toJSONString(localMobileBindQueryRes));
        localMessage.setData(localBundle3);
        ModifyPayPwdActivity.i(ModifyPayPwdActivity.this).sendMessage(localMessage);
        return;
      case 1:
        ApplyModifyPwdResult localApplyModifyPwdResult2 = ModifyPayPwdActivity.j(ModifyPayPwdActivity.this);
        Bundle localBundle2 = new Bundle();
        localBundle2.putCharSequence("rs", JSON.toJSONString(localApplyModifyPwdResult2));
        localMessage.setData(localBundle2);
        ModifyPayPwdActivity.i(ModifyPayPwdActivity.this).sendMessage(localMessage);
        return;
      case 2:
      }
      ApplyModifyPwdResult localApplyModifyPwdResult1 = ModifyPayPwdActivity.k(ModifyPayPwdActivity.this);
      Bundle localBundle1 = new Bundle();
      localBundle1.putCharSequence("rs", JSON.toJSONString(localApplyModifyPwdResult1));
      localMessage.setData(localBundle1);
      ModifyPayPwdActivity.i(ModifyPayPwdActivity.this).sendMessage(localMessage);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.ModifyPayPwdActivity
 * JD-Core Version:    0.6.2
 */