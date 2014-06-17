package com.alipay.mobile.security.accountmanager.ui;

import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v4.app.FragmentManager;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Base64;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.WindowManager.BadTokenException;
import android.view.inputmethod.InputMethodManager;
import android.widget.CheckBox;
import com.alibaba.fastjson.JSON;
import com.alipay.android.widget.security.ui.SecurityWebviewActivity_;
import com.alipay.mobile.base.config.ConfigService;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.common.helper.ReadSettingServerUrl;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APCheckCodeGetter;
import com.alipay.mobile.commonui.widget.APCheckCodeGetter.CheckCodeGetCallback;
import com.alipay.mobile.commonui.widget.APCheckCodeHorizontalView;
import com.alipay.mobile.commonui.widget.APCheckboxWithLinkText;
import com.alipay.mobile.commonui.widget.APEditText;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.commonui.widget.OnSendCallback;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.ui.BaseFragmentActivity;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.framework.service.ext.security.AutoReadSmsCheckCodeCallBack;
import com.alipay.mobile.framework.service.ext.security.DeviceService;
import com.alipay.mobile.framework.service.ext.security.PwdHistoryClearCallBack;
import com.alipay.mobile.framework.service.ext.security.RSAService;
import com.alipay.mobile.framework.service.ext.security.domain.MspDeviceInfoBean;
import com.alipay.mobile.security.accountmanager.a.c;
import com.alipay.mobile.security.authcenter.ui.regist.PreRegistFragment_;
import com.alipay.mobile.security.securitycommon.AutoReadSmsCheckCode;
import com.alipay.mobile.security.securitycommon.Constants;
import com.alipay.mobile.security.securitycommon.SecurityCommonDialogUtil;
import com.alipay.mobile.security.securitycommon.SecurityPwdUtil;
import com.alipay.mobile.security.securitycommon.SecurityUtil;
import com.alipay.mobile.security.securitycommon.data.SelectAccountInfo;
import com.alipay.mobile.security.securitycommon.fragment.SelectAccountFragment_;
import com.alipay.mobile.security.securitycommon.fragment.SetSimplePwdFragment_;
import com.alipay.mobile.security.tid.TidGetter;
import com.alipay.mobilesecurity.biz.gw.service.account.PasswordManagerFacade;
import com.alipay.mobilesecurity.biz.gw.service.securitywidget.SecurityWidgetFacade;
import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;
import com.alipay.mobilesecurity.core.model.Tid;
import com.alipay.mobilesecurity.core.model.VerifyCertifyByMspUserInfo;
import com.alipay.mobilesecurity.core.model.mainpage.imagecode.ApplyImageCodeRequst;
import com.alipay.mobilesecurity.core.model.mainpage.imagecode.ApplyImageCodeResult;
import com.alipay.mobilesecurity.core.model.mainpage.password.ApplyModifyPwdResult;
import com.alipay.mobilesecurity.core.model.mainpage.password.CheckUserAccountRequest;
import com.alipay.mobilesecurity.core.model.mainpage.password.CheckUserCertRequest;
import com.alipay.mobilesecurity.core.model.mainpage.password.PreCheckAndSendSmsResp;
import com.alipay.mobilesecurity.core.model.mainpage.password.ResetPasswordRequest;
import com.alipay.mobilesecurity.core.model.mainpage.password.VerifySmsAndUserStatusResp;
import com.alipay.mobilesecurity.core.model.mainpage.password.VerifySmsCodeRequest;
import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.UiThread;
import com.googlecode.androidannotations.annotations.ViewById;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@SuppressLint({"HandlerLeak"})
@EActivity(resName="security_back_loginpwd")
public class ForgotLoginPwdActivity extends BaseFragmentActivity
  implements View.OnClickListener, AutoReadSmsCheckCodeCallBack
{
  private String A;
  private String B;
  private String C;
  private String D;
  private String E;
  private AlertDialog.Builder F;
  private String G;
  private Boolean H = Boolean.valueOf(false);
  private Thread I;
  private Thread J;
  private Thread K;
  private Thread L;
  private Thread M;
  private Thread N;
  private boolean O = false;
  private int P;
  private SelectAccountFragment_ Q;
  private PreRegistFragment_ R;
  private boolean S = false;
  private boolean T = false;
  private boolean U = false;
  private SetSimplePwdFragment_ V;
  private c W;
  private String X;
  private String Y;
  private String Z;

  @ViewById(resName="security_back_loginpwd_titleBar")
  protected APTitleBar a;
  private AutoReadSmsCheckCode aa;
  private AtomicBoolean ab;
  private String ac = "";
  private String ad = "down_input";
  private ConfigService ae;

  @ViewById(resName="security_back_loginpwd_step1")
  protected APLinearLayout b;

  @ViewById(resName="security_back_loginpwd2")
  protected APLinearLayout c;

  @ViewById(resName="security_select_account")
  protected APLinearLayout d;

  @ViewById(resName="security_confirm_register")
  protected APLinearLayout e;

  @ViewById(resName="security_back_loginpwd3")
  protected APLinearLayout f;

  @ViewById(resName="security_back_loginpwd4")
  protected APLinearLayout g;

  @ViewById(resName="security_set_simplepwd")
  protected APLinearLayout h;

  @ViewById(resName="security_paypwd1_login_id")
  protected APInputBox i;

  @ViewById(resName="security_img_checkcode")
  protected APCheckCodeGetter j;

  @ViewById(resName="security_back_loginpwd1_next_step")
  protected APButton k;

  @ViewById(resName="security_back_loginpwd2_warn_txt")
  protected APTextView l;

  @ViewById(resName="security_back_loginpwd2_CheckCodeSend")
  protected APCheckCodeHorizontalView m;

  @ViewById(resName="security_back_loginpwd2_next_btn")
  protected APButton n;

  @ViewById(resName="security_back_loginpwd_step3_socityId")
  protected APInputBox o;

  @ViewById(resName="security_back_loginpwd_step3_next_step")
  protected APButton p;

  @ViewById(resName="security_back_loginpwd_new_pwd")
  protected APInputBox q;

  @ViewById(resName="is_show_pwd")
  protected APCheckboxWithLinkText r;

  @ViewById(resName="security_back_loginpwd4_confirm")
  protected APButton s;
  public Handler t = new aj(this);
  APCheckCodeGetter.CheckCodeGetCallback u = new az(this);
  View.OnClickListener v = new ba(this);
  OnSendCallback w = new bb(this);
  TextWatcher x = new bc(this);
  DialogInterface.OnCancelListener y = new bd(this);
  private String z;

  private void a(int paramInt)
  {
    if ((this.A != null) && (!"".equals(this.A.trim())))
    {
      showProgressDialog(null, true, this.y);
      new Thread(new a(paramInt, (byte)0)).start();
      return;
    }
    toast(getResources().getString(R.string.by), 1);
  }

  private void a(List<VerifyCertifyByMspUserInfo> paramList)
  {
    this.S = true;
    this.d.setVisibility(0);
    SecurityUtil.b(this, this.d);
    ArrayList localArrayList = new ArrayList();
    if ((paramList != null) && (paramList.size() > 0))
      for (int i1 = 0; i1 < paramList.size(); i1++)
      {
        SelectAccountInfo localSelectAccountInfo = new SelectAccountInfo();
        localSelectAccountInfo.a(((VerifyCertifyByMspUserInfo)paramList.get(i1)).getLogonId());
        localSelectAccountInfo.b(((VerifyCertifyByMspUserInfo)paramList.get(i1)).getHeadImgUrl());
        localArrayList.add(localSelectAccountInfo);
      }
    this.Q.a(this, localArrayList, null, new ar(this, paramList));
  }

  private void b(int paramInt)
  {
    this.C = this.m.getText().toString();
    if ((this.C != null) && (!"".equals(this.C.trim())))
    {
      this.ad = "down_input";
      if ((!TextUtils.isEmpty(this.ac)) && (this.ac.equals(this.C)))
        this.ad = "down_auto";
      new StringBuilder("readSmsType: ").append(this.ad).toString();
      showProgressDialog(null, true, this.y);
      new Thread(new a(paramInt, (byte)0)).start();
      return;
    }
    toast(getResources().getString(R.string.by), 1);
  }

  private void b(String paramString)
  {
    this.b.setVisibility(0);
    this.a.setVisibility(0);
    this.a.setTitleText(getResources().getString(R.string.ap).toString());
    if ((paramString != null) && (!"".equals(paramString)))
    {
      this.i.setText(paramString);
      this.j.getCheckCodeInput().setText("");
      this.j.getCheckCodeInput().setFocusable(true);
      this.j.getCheckCodeInput().requestFocus();
      this.j.getCheckCodeInput().setInputType(2);
      new Timer().schedule(new ax(this), 500L);
    }
    while (true)
    {
      b();
      return;
      this.i.setText("");
      this.j.getCheckCodeInput().setText("");
      this.i.setFocusable(true);
      this.i.requestFocus();
      new Timer().schedule(new ay(this), 500L);
    }
  }

  private MobileSecurityResult c(String paramString)
  {
    PasswordManagerFacade localPasswordManagerFacade = (PasswordManagerFacade)((RpcService)this.mApp.getServiceByInterface(RpcService.class.getName())).getRpcProxy(PasswordManagerFacade.class);
    CheckUserCertRequest localCheckUserCertRequest = new CheckUserCertRequest();
    localCheckUserCertRequest.setCertNo(paramString);
    localCheckUserCertRequest.setCertType("idCard");
    localCheckUserCertRequest.setLoginId(this.Y);
    localCheckUserCertRequest.setPasswordType(Constants.PWD_TYPE_LOGIN);
    try
    {
      this.M = Thread.currentThread();
      MobileSecurityResult localMobileSecurityResult = localPasswordManagerFacade.checkUserCert(localCheckUserCertRequest);
      return localMobileSecurityResult;
    }
    catch (RpcException localRpcException)
    {
      new StringBuilder("{[info=checkSocityId],[msg=").append(localRpcException.toString()).append("]}").toString();
      dismissProgressDialog();
      if (localRpcException.getCode() != 13)
        throw localRpcException;
    }
    return null;
  }

  private void d(String paramString)
  {
    this.ab.set(true);
    this.aa.dispose();
    this.aa.readsms("(\\d{4,6})", 1, Long.valueOf(System.currentTimeMillis()), 60, "", new String[] { "95188" });
    if (paramString.length() >= 11)
      paramString = paramString.substring(0, 3) + "****" + paramString.substring(7, 11);
    this.B = (getResources().getString(R.string.bc) + paramString + getResources().getString(R.string.bd));
    this.l.setText(this.B);
    this.b.setVisibility(8);
    this.c.setVisibility(0);
    this.a.setTitleText(getResources().getString(R.string.cd));
    this.m.getInputBox().requestFocus();
    this.m.getInputBox().setInputType(2);
    this.m.scheduleTimer();
  }

  private void e(String paramString)
  {
    this.h.setVisibility(0);
    this.V.a(this.Y, this.D, new an(this, paramString));
    this.V.b();
  }

  private ApplyModifyPwdResult f()
  {
    PasswordManagerFacade localPasswordManagerFacade = (PasswordManagerFacade)((RpcService)this.mApp.getServiceByInterface(RpcService.class.getName())).getRpcProxy(PasswordManagerFacade.class);
    CheckUserAccountRequest localCheckUserAccountRequest = new CheckUserAccountRequest();
    localCheckUserAccountRequest.setLoginId(this.z);
    localCheckUserAccountRequest.setCodeImage(this.A);
    if ((this.A == null) || ("".equals(this.A)))
      localCheckUserAccountRequest.setSessionId("RESEND");
    try
    {
      while (true)
      {
        this.I = Thread.currentThread();
        ApplyModifyPwdResult localApplyModifyPwdResult = localPasswordManagerFacade.checkUserAccountAndSendSms(localCheckUserAccountRequest);
        return localApplyModifyPwdResult;
        localCheckUserAccountRequest.setSessionId(this.G);
      }
    }
    catch (RpcException localRpcException)
    {
      new StringBuilder("{[info=verifyImageCode],[msg=").append(localRpcException.getMessage()).append("]}").toString();
      dismissProgressDialog();
      d();
      if (localRpcException.getCode() != 13)
        throw localRpcException;
    }
    catch (Exception localException)
    {
      dismissProgressDialog();
      d();
    }
    return null;
  }

  private PreCheckAndSendSmsResp g()
  {
    String str1 = this.A;
    String str2;
    if ((this.A == null) || ("".equals(this.A)))
      str2 = "RESEND";
    try
    {
      while (true)
      {
        this.J = Thread.currentThread();
        PreCheckAndSendSmsResp localPreCheckAndSendSmsResp = this.W.a(this.z, str2, str1);
        return localPreCheckAndSendSmsResp;
        str2 = this.G;
      }
    }
    catch (RpcException localRpcException)
    {
      new StringBuilder("{[info=verifyImageCode],[msg=").append(localRpcException.getMessage()).append("]}").toString();
      dismissProgressDialog();
      d();
      if (localRpcException.getCode() != 13)
        throw localRpcException;
    }
    catch (Exception localException)
    {
      dismissProgressDialog();
      d();
    }
    return null;
  }

  private ApplyModifyPwdResult h()
  {
    PasswordManagerFacade localPasswordManagerFacade = (PasswordManagerFacade)((RpcService)this.mApp.getServiceByInterface(RpcService.class.getName())).getRpcProxy(PasswordManagerFacade.class);
    VerifySmsCodeRequest localVerifySmsCodeRequest = new VerifySmsCodeRequest();
    localVerifySmsCodeRequest.setLoginId(this.z);
    localVerifySmsCodeRequest.setPwdType(Constants.PWD_TYPE_LOGIN);
    localVerifySmsCodeRequest.setSmsCode(this.C);
    localVerifySmsCodeRequest.setUserAction("found");
    localVerifySmsCodeRequest.setBusinessMobileValidateStatus(this.ad);
    localVerifySmsCodeRequest.setTid(new TidGetter(this.mMicroApplicationContext).getClientTid());
    try
    {
      this.K = Thread.currentThread();
      ApplyModifyPwdResult localApplyModifyPwdResult = localPasswordManagerFacade.verifySmsCodeForFoundLogin(localVerifySmsCodeRequest);
      return localApplyModifyPwdResult;
    }
    catch (RpcException localRpcException)
    {
      new StringBuilder("{[info=verifySmsCode],[msg=").append(localRpcException.getMessage()).append("]}").toString();
      dismissProgressDialog();
      if (localRpcException.getCode() != 13)
        throw localRpcException;
    }
    return null;
  }

  private VerifySmsAndUserStatusResp i()
  {
    try
    {
      this.L = Thread.currentThread();
      String str = this.ae.getConfig("Security_ForgotPW");
      boolean bool1 = false;
      if (str != null)
      {
        boolean bool2 = "YES".equals(this.ae.getConfig("Security_ForgotPW"));
        bool1 = false;
        if (bool2)
          bool1 = true;
      }
      VerifySmsAndUserStatusResp localVerifySmsAndUserStatusResp = this.W.a(this.z, this.C, this.ad, bool1);
      return localVerifySmsAndUserStatusResp;
    }
    catch (RpcException localRpcException)
    {
      new StringBuilder("{[info=verifySmsCodeOfPhone],[msg=").append(localRpcException.getMessage()).append("]}").toString();
      dismissProgressDialog();
      if (localRpcException.getCode() != 13)
        throw localRpcException;
    }
    return null;
  }

  private MobileSecurityResult j()
  {
    try
    {
      RSAService localRSAService = (RSAService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(RSAService.class.getName());
      ResetPasswordRequest localResetPasswordRequest = new ResetPasswordRequest();
      localResetPasswordRequest.setLoginId(this.Y);
      localResetPasswordRequest.setPwd(localRSAService.RSAEncrypt(this.E, false));
      localResetPasswordRequest.setPwdType(Constants.PWD_TYPE_LOGIN);
      localResetPasswordRequest.setBusinessMobileValidateStatus(this.ad);
      MspDeviceInfoBean localMspDeviceInfoBean = ((DeviceService)this.mMicroApplicationContext.getExtServiceByInterface(DeviceService.class.getName())).queryCertification();
      Tid localTid = new Tid();
      localTid.setClientKey(localMspDeviceInfoBean.getMspkey());
      localTid.setImei(localMspDeviceInfoBean.getImei());
      localTid.setImsi(localMspDeviceInfoBean.getImsi());
      localTid.setTid(localMspDeviceInfoBean.getTid());
      localTid.setVimei(localMspDeviceInfoBean.getVimei());
      localTid.setVimsi(localMspDeviceInfoBean.getVimsi());
      localResetPasswordRequest.setTid(localTid);
      PasswordManagerFacade localPasswordManagerFacade = (PasswordManagerFacade)((RpcService)this.mApp.getServiceByInterface(RpcService.class.getName())).getRpcProxy(PasswordManagerFacade.class);
      this.N = Thread.currentThread();
      MobileSecurityResult localMobileSecurityResult = localPasswordManagerFacade.resetPasswordForFoundLogin(localResetPasswordRequest);
      return localMobileSecurityResult;
    }
    catch (RpcException localRpcException)
    {
      new StringBuilder("{[info=btnStep4ResetPwd],[msg=").append(localRpcException.getMessage()).append("]}").toString();
      dismissProgressDialog();
      if (localRpcException.getCode() != 13)
        throw localRpcException;
    }
    return null;
  }

  private void k()
  {
    this.F = new AlertDialog.Builder(this).setMessage(getResources().getString(R.string.cH)).setPositiveButton(getResources().getString(R.string.bi), new am(this));
    try
    {
      this.F.create().show();
      return;
    }
    catch (WindowManager.BadTokenException localBadTokenException)
    {
      new StringBuilder("{[info=showNoBindPhoneDialog],[msg=").append(localBadTokenException.getMessage()).append("]}").toString();
    }
  }

  private void l()
  {
    this.a.setVisibility(0);
    this.f.setVisibility(0);
    this.o.setText("");
    SecurityUtil.c(this, this.o.getEtContent());
    this.a.setTitleText(getResources().getString(R.string.ap).toString());
    this.o.getEtContent().requestFocus();
    this.H = Boolean.valueOf(true);
  }

  @UiThread
  public void OnAutoReadSms(String paramString)
  {
    APEditText localAPEditText;
    if ((this.ab.get()) && (this.m.getInputBox() != null) && (this != null) && (!isFinishing()))
    {
      new StringBuilder("isNeedAutoInputSms=").append(this.ab.get()).toString();
      this.ac = paramString;
      this.m.getInputBox().getEtContent().setText(paramString);
      localAPEditText = this.m.getInputBox().getEtContent();
      if (!StringUtils.isEmpty(paramString))
        break label117;
    }
    label117: for (int i1 = 0; ; i1 = paramString.length())
    {
      localAPEditText.setSelection(i1);
      toast(getResources().getString(R.string.ao), 1);
      return;
    }
  }

  @AfterViews
  protected final void a()
  {
    this.Q = ((SelectAccountFragment_)getSupportFragmentManager().findFragmentById(R.id.fw));
    this.R = ((PreRegistFragment_)getSupportFragmentManager().findFragmentById(R.id.dk));
    this.V = ((SetSimplePwdFragment_)getSupportFragmentManager().findFragmentById(R.id.fC));
    this.k.setEnabled(false);
    this.n.setEnabled(false);
    this.p.setEnabled(false);
    this.s.setEnabled(false);
    this.r.setCheckBoxText(getResources().getString(R.string.cv));
    this.r.getCheckBox().setChecked(true);
    SecurityPwdUtil.a(this.j.getCheckCodeInput().getEtContent(), 4);
    SecurityPwdUtil.a(this.m.getInputBox().getEtContent(), 6);
    this.o.getEtContent().setKeyListener(new aw(this));
    this.i.addTextChangedListener(this.x);
    this.j.getCheckCodeInput().addTextChangedListener(this.x);
    this.j.setCheckCallback(this.u);
    this.k.setOnClickListener(this);
    this.m.getInputBox().addTextChangedListener(this.x);
    this.m.setOnSendCallback(this.w);
    this.n.setOnClickListener(this);
    this.o.addTextChangedListener(this.x);
    this.p.setOnClickListener(this);
    this.q.addTextChangedListener(this.x);
    this.r.getCheckBox().setOnClickListener(this.v);
    this.s.setOnClickListener(this);
    Intent localIntent = getIntent();
    if (localIntent != null);
    for (Bundle localBundle = localIntent.getExtras(); ; localBundle = null)
    {
      if (localBundle != null)
      {
        this.Z = localBundle.getString("fromWhich");
        if ((StringUtils.equals("msp", this.Z)) || (StringUtils.equals("alipay", this.Z)))
        {
          b(localBundle.getString("logonId"));
          return;
        }
        CharSequence localCharSequence = localBundle.getCharSequence("logonId");
        if (localCharSequence == null);
        for (String str = null; ; str = localCharSequence.toString())
        {
          b(str);
          return;
        }
      }
      b(null);
      return;
    }
  }

  @UiThread
  protected void a(ApplyImageCodeResult paramApplyImageCodeResult)
  {
    if (paramApplyImageCodeResult != null)
    {
      if (paramApplyImageCodeResult.isSuccess())
      {
        String str1 = paramApplyImageCodeResult.getImageCode();
        String str2 = paramApplyImageCodeResult.getSessionId();
        byte[] arrayOfByte = Base64.decode(str1, 0);
        if (arrayOfByte.length != 0)
        {
          this.j.setCheckCodeImg(BitmapFactory.decodeByteArray(arrayOfByte, 0, arrayOfByte.length));
          this.G = str2;
          this.j.stopAnimation();
        }
        return;
      }
      toast(paramApplyImageCodeResult.getMessage(), 1);
      return;
    }
    toast(getResources().getString(R.string.c), 1);
  }

  public final void a(ApplyModifyPwdResult paramApplyModifyPwdResult)
  {
    if (paramApplyModifyPwdResult != null)
    {
      if (paramApplyModifyPwdResult.isSuccess())
      {
        this.Y = this.z;
        a(paramApplyModifyPwdResult.isCertified());
      }
    }
    else
      return;
    SecurityCommonDialogUtil.a(this, this.mApp, paramApplyModifyPwdResult);
  }

  public final void a(VerifySmsAndUserStatusResp paramVerifySmsAndUserStatusResp)
  {
    if (paramVerifySmsAndUserStatusResp != null)
    {
      if (!paramVerifySmsAndUserStatusResp.isSuccess())
        break label531;
      if (!"5317".equals(paramVerifySmsAndUserStatusResp.getResultCode()))
        break label142;
      String str2 = ReadSettingServerUrl.getPoliceCenterUrl(AlipayApplication.getInstance()) + "?serviceId=wallet_0001&authorizeToken=" + paramVerifySmsAndUserStatusResp.token + "&context=forgetLoginPwd&safePayType=" + this.Z;
      Intent localIntent = new Intent();
      localIntent.setClass(this.mMicroApplicationContext.getApplicationContext(), SecurityWebviewActivity_.class);
      localIntent.putExtra("URL", str2);
      this.mMicroApplicationContext.startActivity(this.mApp, localIntent);
      this.c.postDelayed(new as(this), 1000L);
    }
    label142: 
    do
    {
      do
      {
        do
        {
          return;
          if ("5310".equalsIgnoreCase(paramVerifySmsAndUserStatusResp.getResultCode()))
          {
            this.c.setVisibility(8);
            this.U = true;
            this.a.setVisibility(8);
            this.Y = this.z;
            e(paramVerifySmsAndUserStatusResp.getResultCode());
            return;
          }
          if ("5311".equalsIgnoreCase(paramVerifySmsAndUserStatusResp.getResultCode()))
          {
            this.c.setVisibility(8);
            this.U = false;
            this.a.setVisibility(8);
            this.Y = this.z;
            e(paramVerifySmsAndUserStatusResp.getResultCode());
            return;
          }
          if (!"5312".equalsIgnoreCase(paramVerifySmsAndUserStatusResp.getResultCode()))
            break;
        }
        while ((paramVerifySmsAndUserStatusResp.getUserList() == null) || (paramVerifySmsAndUserStatusResp.getUserList().size() <= 0));
        this.c.setVisibility(8);
        this.a.setVisibility(8);
        a(paramVerifySmsAndUserStatusResp.getUserList());
        return;
        if ("5313".equalsIgnoreCase(paramVerifySmsAndUserStatusResp.getResultCode()))
        {
          this.c.setVisibility(8);
          this.U = true;
          this.Y = this.z;
          l();
          return;
        }
        if ("5314".equalsIgnoreCase(paramVerifySmsAndUserStatusResp.getResultCode()))
        {
          this.c.setVisibility(8);
          this.U = false;
          this.a.setVisibility(8);
          this.Y = this.z;
          String str1 = paramVerifySmsAndUserStatusResp.getResultCode();
          this.e.setVisibility(0);
          SecurityUtil.b(this, this.e);
          this.T = true;
          this.R.a(this.mApp);
          this.R.a(this.mApp, this.Y, new aq(this, str1));
          return;
        }
      }
      while (!"5315".equalsIgnoreCase(paramVerifySmsAndUserStatusResp.getResultCode()));
      this.U = false;
    }
    while ((paramVerifySmsAndUserStatusResp.getUserList() == null) || (paramVerifySmsAndUserStatusResp.getUserList().size() <= 0));
    this.Y = ((VerifyCertifyByMspUserInfo)paramVerifySmsAndUserStatusResp.getUserList().get(0)).getLogonId();
    a(((VerifyCertifyByMspUserInfo)paramVerifySmsAndUserStatusResp.getUserList().get(0)).isCertified());
    return;
    label531: toast(paramVerifySmsAndUserStatusResp.getMessage(), 1);
  }

  @UiThread
  protected void a(String paramString)
  {
    toast(paramString, 1);
  }

  @UiThread
  public void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      if (this.S)
        this.d.setVisibility(8);
      while (true)
      {
        l();
        return;
        this.c.setVisibility(8);
      }
    }
    if (this.S)
      this.d.setVisibility(8);
    while (true)
    {
      this.a.setVisibility(0);
      this.g.setVisibility(0);
      this.q.setText("");
      this.q.getEtContent().requestFocus();
      this.a.setTitleText(getResources().getString(R.string.ci).toString());
      return;
      this.c.setVisibility(8);
    }
  }

  @Background
  protected void b()
  {
    SecurityWidgetFacade localSecurityWidgetFacade = (SecurityWidgetFacade)((RpcService)this.mApp.getServiceByInterface(RpcService.class.getName())).getRpcProxy(SecurityWidgetFacade.class);
    ApplyImageCodeRequst localApplyImageCodeRequst = new ApplyImageCodeRequst();
    localApplyImageCodeRequst.setLoginId(this.z);
    try
    {
      ApplyImageCodeResult localApplyImageCodeResult = localSecurityWidgetFacade.getImageCode(localApplyImageCodeRequst);
      a(localApplyImageCodeResult);
      return;
    }
    catch (RpcException localRpcException)
    {
      new StringBuilder("{[info=getImageCode], [msg = ").append(localRpcException.getMessage()).append("]}").toString();
      c();
      throw localRpcException;
    }
  }

  @UiThread
  protected void c()
  {
    this.j.stopAnimation();
  }

  @UiThread
  protected void d()
  {
    this.m.getSendCodeButton().setEnabled(true);
  }

  protected final void e()
  {
    InputMethodManager localInputMethodManager = (InputMethodManager)getSystemService("input_method");
    if (localInputMethodManager.isActive())
      localInputMethodManager.hideSoftInputFromWindow(getCurrentFocus().getWindowToken(), 2);
  }

  public void onClick(View paramView)
  {
    int i1 = paramView.getId();
    if (R.id.fr == i1)
      b();
    label209: label253: 
    do
    {
      do
      {
        return;
        if (R.id.dR != i1)
          break;
        String str1 = this.z;
        int i4;
        String str3;
        if (TextUtils.isEmpty(str1))
        {
          i4 = -4;
          if (i4 < 0)
          {
            if (i4 != -2)
              break label259;
            str3 = getResources().getString(R.string.n);
          }
        }
        while (true)
        {
          toast(str3, 0);
          this.P = i4;
          if (1 != this.P)
            break label296;
          a(1);
          return;
          String str2 = str1.trim();
          int i2 = str2.indexOf("(");
          if (-1 != i2)
          {
            int i6 = str2.indexOf(")");
            if (-1 != i6)
              str2 = str2.substring(i2 + 1, i6);
          }
          if (str2.length() <= 0)
          {
            i4 = -4;
            break;
          }
          if (str2.contains("@"))
          {
            if (Pattern.compile("^[\\w\\.-]+(\\.[\\w\\.-]+)*@[\\w-]+(\\.[\\w-]+)+$").matcher(str2).matches());
            for (int i5 = 1; ; i5 = 0)
            {
              if (i5 != 0)
                break label209;
              i4 = -2;
              break;
            }
            i4 = 1;
            break;
          }
          if (Pattern.compile("1\\d{10}").matcher(str2).matches());
          for (int i3 = 1; ; i3 = 0)
          {
            if (i3 != 0)
              break label253;
            i4 = -2;
            break;
          }
          i4 = 2;
          break;
          if (i4 == -4)
            str3 = getResources().getString(R.string.ab);
          else
            str3 = getResources().getString(R.string.cy);
        }
      }
      while (2 != this.P);
      a(5);
      return;
      if (R.id.dU == i1)
      {
        this.ab.set(false);
        this.aa.dispose();
        if (1 == this.P)
        {
          b(2);
          return;
        }
        if (2 == this.P)
        {
          b(7);
          return;
        }
        toast("帐户格式错误", 1);
        return;
      }
      if (R.id.eb == i1)
      {
        this.D = this.o.getInputedText().toString().replace(" ", "");
        if ((this.D != null) && (!"".equals(this.D.trim())))
        {
          if ((this.D.matches("[0-9]{17}[x|X]")) || (this.D.matches("[0-9]{15}")) || (this.D.matches("[0-9]{18}")));
          for (boolean bool = true; !Boolean.valueOf(bool).booleanValue(); bool = false)
          {
            super.toast(getResources().getString(R.string.b), 1);
            return;
          }
          showProgressDialog(null, true, this.y);
          new Thread(new a(3, (byte)0)).start();
          return;
        }
        super.toast(getResources().getString(R.string.b), 1);
        return;
      }
    }
    while (R.id.dY != i1);
    label259: label296: this.E = this.q.getInputedText().toString();
    if ((this.E == null) || ("".equals(this.E.trim())) || (this.E.length() > 20) || (this.E.length() < 6))
    {
      toast(getResources().getString(R.string.cc).toString(), 1);
      return;
    }
    showProgressDialog(null, true, this.y);
    new Thread(new a(4, (byte)0)).start();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.W = new c(this.mApp);
    this.ab = new AtomicBoolean(true);
    this.aa = new AutoReadSmsCheckCode(null, this);
    this.ae = ((ConfigService)this.mApp.getMicroApplicationContext().findServiceByInterface(ConfigService.class.getName()));
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      if (this.g.getVisibility() == 0)
      {
        this.q.setText("");
        this.g.setVisibility(8);
        if (this.H.booleanValue())
        {
          this.f.setVisibility(0);
          this.a.setTitleText(getResources().getString(R.string.ap).toString());
        }
      }
      while (true)
      {
        return false;
        if (this.S)
        {
          this.a.setVisibility(8);
          this.d.setVisibility(0);
        }
        else
        {
          this.c.setVisibility(0);
          continue;
          if (this.h.getVisibility() == 0)
          {
            if (this.V.e())
              return true;
            this.V.d().a();
            this.h.setVisibility(8);
            if (this.H.booleanValue())
            {
              this.a.setVisibility(0);
              this.f.setVisibility(0);
              this.a.setTitleText(getResources().getString(R.string.ap).toString());
            }
            else if (this.S)
            {
              this.d.setVisibility(0);
            }
            else if (this.T)
            {
              this.e.setVisibility(0);
            }
            else
            {
              this.a.setVisibility(0);
              this.c.setVisibility(0);
            }
          }
          else if (this.f.getVisibility() == 0)
          {
            this.H = Boolean.valueOf(false);
            if (this.S)
            {
              this.f.setVisibility(8);
              this.a.setVisibility(8);
              this.d.setVisibility(0);
            }
            else
            {
              this.f.setVisibility(8);
              this.a.setTitleText(getResources().getString(R.string.cd).toString());
              this.c.setVisibility(0);
            }
          }
          else if (this.e.getVisibility() == 0)
          {
            this.T = false;
            this.e.setVisibility(8);
            this.a.setVisibility(0);
            this.a.setTitleText(getResources().getString(R.string.cd).toString());
            this.c.setVisibility(0);
          }
          else if (this.d.getVisibility() == 0)
          {
            this.S = false;
            this.d.setVisibility(8);
            this.a.setVisibility(0);
            this.a.setTitleText(getResources().getString(R.string.cd).toString());
            this.c.setVisibility(0);
          }
          else if (this.c.getVisibility() == 0)
          {
            alert("", "校验码短信可能略有延迟，请稍等。", "不了", new av(this), "好的", null);
          }
          else if (this.b.getVisibility() == 0)
          {
            this.b.setVisibility(8);
            finish();
            this.mMicroApplicationContext.finishApp("", this.mApp.getAppId(), null);
          }
        }
      }
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
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
      case 6:
      default:
        return;
      case 1:
        ApplyModifyPwdResult localApplyModifyPwdResult2 = ForgotLoginPwdActivity.n(ForgotLoginPwdActivity.this);
        Bundle localBundle6 = new Bundle();
        localBundle6.putCharSequence("rs", JSON.toJSONString(localApplyModifyPwdResult2));
        localMessage.setData(localBundle6);
        ForgotLoginPwdActivity.this.t.sendMessage(localMessage);
        return;
      case 5:
        PreCheckAndSendSmsResp localPreCheckAndSendSmsResp = ForgotLoginPwdActivity.o(ForgotLoginPwdActivity.this);
        Bundle localBundle5 = new Bundle();
        localBundle5.putCharSequence("rs", JSON.toJSONString(localPreCheckAndSendSmsResp));
        localMessage.setData(localBundle5);
        ForgotLoginPwdActivity.this.t.sendMessage(localMessage);
        return;
      case 2:
        ApplyModifyPwdResult localApplyModifyPwdResult1 = ForgotLoginPwdActivity.p(ForgotLoginPwdActivity.this);
        Bundle localBundle4 = new Bundle();
        localBundle4.putCharSequence("rs", JSON.toJSONString(localApplyModifyPwdResult1));
        localMessage.setData(localBundle4);
        ForgotLoginPwdActivity.this.t.sendMessage(localMessage);
        return;
      case 7:
        VerifySmsAndUserStatusResp localVerifySmsAndUserStatusResp = ForgotLoginPwdActivity.q(ForgotLoginPwdActivity.this);
        Bundle localBundle3 = new Bundle();
        localBundle3.putCharSequence("rs", JSON.toJSONString(localVerifySmsAndUserStatusResp));
        localMessage.setData(localBundle3);
        ForgotLoginPwdActivity.this.t.sendMessage(localMessage);
        return;
      case 3:
        MobileSecurityResult localMobileSecurityResult2 = ForgotLoginPwdActivity.f(ForgotLoginPwdActivity.this, ForgotLoginPwdActivity.f(ForgotLoginPwdActivity.this));
        Bundle localBundle2 = new Bundle();
        localBundle2.putCharSequence("rs", JSON.toJSONString(localMobileSecurityResult2));
        localMessage.setData(localBundle2);
        ForgotLoginPwdActivity.this.t.sendMessage(localMessage);
        return;
      case 4:
      }
      MobileSecurityResult localMobileSecurityResult1 = ForgotLoginPwdActivity.r(ForgotLoginPwdActivity.this);
      Bundle localBundle1 = new Bundle();
      localBundle1.putCharSequence("rs", JSON.toJSONString(localMobileSecurityResult1));
      localMessage.setData(localBundle1);
      ForgotLoginPwdActivity.this.t.sendMessage(localMessage);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.ForgotLoginPwdActivity
 * JD-Core Version:    0.6.2
 */