package com.alipay.mobile.security.accountmanager.ui;

import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v4.content.LocalBroadcastManager;
import android.text.SpannableString;
import android.text.TextWatcher;
import android.text.style.ForegroundColorSpan;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.WindowManager.BadTokenException;
import android.widget.TextView;
import com.alibaba.fastjson.JSON;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.clientsecurity.R.style;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APCheckCodeHorizontalView;
import com.alipay.mobile.commonui.widget.APEditText;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.OnSendCallback;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.AppLoadException;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.BindPhoneService;
import com.alipay.mobile.framework.service.ext.security.RSAService;
import com.alipay.mobile.framework.service.ext.security.SMSService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.security.accountmanager.service.BindPhoneServiceImpl;
import com.alipay.mobile.security.securitycommon.SecurityCommonDialogUtil;
import com.alipay.mobile.security.securitycommon.SecurityPwdUtil;
import com.alipay.mobilesecurity.biz.gw.service.account.mobilebind.MobileBindManagerFacade;
import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;
import com.alipay.mobilesecurity.core.model.mobilebind.MobileBindQueryReq;
import com.alipay.mobilesecurity.core.model.mobilebind.MobileBindQueryRes;
import com.alipay.mobilesecurity.core.model.mobilebind.MobileBindQueryUpSmsReq;
import com.alipay.mobilesecurity.core.model.mobilebind.MobileBindSmsReq;
import com.alipay.mobilesecurity.core.model.mobilebind.MobileBindVerifyReq;
import com.alipay.mobilesecurity.core.model.mobilebind.MobileBindVerifyRes;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.UiThread;
import com.googlecode.androidannotations.annotations.ViewById;
import java.util.Timer;
import java.util.TimerTask;

@SuppressLint({"HandlerLeak", "NewApi"})
@EActivity(resName="security_bind_phone")
public class BindPhoneActivity extends BaseActivity
  implements View.OnClickListener
{
  private String A;
  private AlertDialog.Builder B;
  private String C = null;
  private String D = null;
  private String E = null;
  private AlertDialog F;
  private Timer G;
  private TextView H;
  private TextView I;
  private LocalBroadcastManager J;
  private UserInfo K;
  private Boolean L;
  private Boolean M = Boolean.valueOf(false);
  private Boolean N = Boolean.valueOf(false);
  private BindPhoneService O;
  private Thread P;
  private Thread Q;
  private Thread R;
  private Thread S;
  private Thread T;
  private Boolean U = Boolean.valueOf(true);
  private final String V = "mobile binding end";
  private Handler W = new q(this);

  @ViewById(resName="securityBindPhoneStep11")
  protected APLinearLayout a;

  @ViewById(resName="securityBindPhoneStep12")
  protected APLinearLayout b;

  @ViewById(resName="securityBindPhoneStep22")
  protected APLinearLayout c;

  @ViewById(resName="securityBindPhoneSuccess")
  protected APLinearLayout d;

  @ViewById(resName="securityBindPhoneFail")
  protected APLinearLayout e;

  @ViewById(resName="securityBindPhoneWarn3")
  protected APTextView f;

  @ViewById(resName="securityBindPhonePwd")
  protected APInputBox g;

  @ViewById(resName="securityBindPhoneNextStep1")
  protected APButton h;

  @ViewById(resName="securityBindPhoneNum")
  protected APInputBox i;

  @ViewById(resName="securityBindPhoneNextStep12")
  protected APButton j;

  @ViewById(resName="securityBindPhoneStep22Warn")
  protected TextView k;

  @ViewById(resName="securityBindPhoneCheckCode")
  protected APCheckCodeHorizontalView l;

  @ViewById(resName="securityBindPhonePayPwd22")
  protected APInputBox m;

  @ViewById(resName="securityBindPhoneConfirmBtn22")
  protected APButton n;

  @ViewById(resName="securityBindPhoneSuccessBtn")
  protected APButton o;

  @ViewById(resName="failWarn2")
  protected APTextView p;

  @ViewById(resName="securityBindPhoneFailBtn")
  protected APButton q;

  @ViewById(resName="security_bind_phone_send_err")
  protected APTextView r;
  OnSendCallback s = new x(this);
  DialogInterface.OnCancelListener t = new y(this);
  TextWatcher u = new z(this);
  DialogInterface.OnClickListener v = new ad(this);
  DialogInterface.OnClickListener w = new ae(this);
  private String x;
  private String y;
  private String z;

  private void a(Boolean paramBoolean)
  {
    new StringBuilder("{[info=sendBroadcast],[msg=").append(paramBoolean).append("]}").toString();
    try
    {
      Intent localIntent = new Intent("bindPhoneBroadcast");
      localIntent.putExtra("isBind", paramBoolean);
      this.J = LocalBroadcastManager.getInstance(this.mApp.getMicroApplicationContext().getApplicationContext());
      this.J.sendBroadcast(localIntent);
      return;
    }
    catch (Exception localException)
    {
      getBundle(getResources().getString(R.string.c));
    }
  }

  private void a(Boolean paramBoolean, String paramString)
  {
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("success", paramBoolean.booleanValue());
    localBundle.putCharSequence("cellphone", paramString);
    if ((this.mApp.getSourceId() != null) && (!"".equalsIgnoreCase(this.mApp.getSourceId())))
      try
      {
        this.mApp.getMicroApplicationContext().startApp(this.mApp.getAppId(), this.mApp.getSourceId(), localBundle);
        return;
      }
      catch (AppLoadException localAppLoadException)
      {
        new StringBuilder("{[info=backSourceApp], [msg=").append(localAppLoadException.getMessage()).append("]}").toString();
        getBundle(getResources().getString(R.string.c));
        return;
      }
    ((BindPhoneServiceImpl)this.O).notifyCallback(paramBoolean.booleanValue());
    this.mApp.getMicroApplicationContext().finishApp(this.mApp.getAppId(), this.mApp.getAppId(), null);
  }

  private void d()
  {
    this.a.setVisibility(8);
    this.b.setVisibility(0);
    this.i.getEtContent().setFocusable(true);
    this.i.getEtContent().requestFocus();
    this.i.getEtContent().setInputType(2);
    new Timer().schedule(new aa(this), 500L);
  }

  private MobileBindQueryRes e()
  {
    MobileBindQueryReq localMobileBindQueryReq = new MobileBindQueryReq();
    localMobileBindQueryReq.setLogonId(this.C);
    MobileBindManagerFacade localMobileBindManagerFacade = (MobileBindManagerFacade)((RpcService)this.mApp.getServiceByInterface(RpcService.class.getName())).getRpcProxy(MobileBindManagerFacade.class);
    try
    {
      this.P = Thread.currentThread();
      MobileBindQueryRes localMobileBindQueryRes = localMobileBindManagerFacade.queryBindMobile(localMobileBindQueryReq);
      return localMobileBindQueryRes;
    }
    catch (RpcException localRpcException)
    {
      new StringBuilder("{[info=MobileBindQueryRes], [msg=").append(localRpcException.getMessage()).append("]}").toString();
      dismissProgressDialog();
      if (localRpcException.getCode() != 13)
        throw localRpcException;
    }
    return null;
  }

  private MobileBindVerifyRes f()
  {
    RSAService localRSAService = (RSAService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(RSAService.class.getName());
    if (localRSAService != null)
    {
      MobileBindVerifyReq localMobileBindVerifyReq = new MobileBindVerifyReq();
      localMobileBindVerifyReq.setBindMobile(this.D);
      localMobileBindVerifyReq.setLogonId(this.C);
      SMSService localSMSService = (SMSService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(SMSService.class.getName());
      if (localSMSService != null)
      {
        localMobileBindVerifyReq.setIsp(localSMSService.serviceProvider(this));
        MobileBindManagerFacade localMobileBindManagerFacade = (MobileBindManagerFacade)((RpcService)this.mApp.getServiceByInterface(RpcService.class.getName())).getRpcProxy(MobileBindManagerFacade.class);
        try
        {
          localMobileBindVerifyReq.setPaymentPwd(localRSAService.RSAEncrypt(this.x, false));
          this.Q = Thread.currentThread();
          MobileBindVerifyRes localMobileBindVerifyRes = localMobileBindManagerFacade.verifyPwdAndResSms(localMobileBindVerifyReq);
          return localMobileBindVerifyRes;
        }
        catch (RpcException localRpcException)
        {
          new StringBuilder("{[info=step11PaypwdSend], [msg=").append(localRpcException.getMessage()).append("]}").toString();
          dismissProgressDialog();
          if (localRpcException.getCode() != 13)
            throw localRpcException;
        }
      }
    }
    return null;
  }

  private void g()
  {
    this.B = new AlertDialog.Builder(new ContextThemeWrapper(this, R.style.a));
    View localView = LayoutInflater.from(this).inflate(R.layout.av, null);
    this.r = ((APTextView)localView.findViewById(R.id.er));
    this.r.setTextColor(-16777216);
    this.H = ((APTextView)localView.findViewById(R.id.eq));
    this.H.setTextColor(-16777216);
    this.I = ((APTextView)localView.findViewById(R.id.es));
    this.I.setTextColor(-16777216);
    this.B.setView(localView);
    this.B.setOnKeyListener(new t(this));
    this.F = this.B.create();
    try
    {
      this.F.show();
      label149: this.H.setOnClickListener(new u(this));
      this.I.setOnClickListener(new v(this));
      return;
    }
    catch (WindowManager.BadTokenException localBadTokenException)
    {
      break label149;
    }
  }

  private MobileBindQueryRes h()
  {
    MobileBindQueryUpSmsReq localMobileBindQueryUpSmsReq = new MobileBindQueryUpSmsReq();
    localMobileBindQueryUpSmsReq.setSessionId(this.E);
    localMobileBindQueryUpSmsReq.setLogonId(this.C);
    MobileBindManagerFacade localMobileBindManagerFacade = (MobileBindManagerFacade)((RpcService)this.mApp.getServiceByInterface(RpcService.class.getName())).getRpcProxy(MobileBindManagerFacade.class);
    try
    {
      this.S = Thread.currentThread();
      MobileBindQueryRes localMobileBindQueryRes = localMobileBindManagerFacade.queryUpSms(localMobileBindQueryUpSmsReq);
      return localMobileBindQueryRes;
    }
    catch (RpcException localRpcException)
    {
      new StringBuilder("{[info=isBindSuccess], [msg=").append(localRpcException.getMessage()).append("]}").toString();
    }
    return null;
  }

  private MobileSecurityResult i()
  {
    MobileBindSmsReq localMobileBindSmsReq = new MobileBindSmsReq();
    localMobileBindSmsReq.setLogonId(this.C);
    localMobileBindSmsReq.setMobile(this.D);
    MobileBindManagerFacade localMobileBindManagerFacade = (MobileBindManagerFacade)((RpcService)this.mApp.getServiceByInterface(RpcService.class.getName())).getRpcProxy(MobileBindManagerFacade.class);
    try
    {
      this.R = Thread.currentThread();
      MobileSecurityResult localMobileSecurityResult = localMobileBindManagerFacade.sendSms(localMobileBindSmsReq);
      return localMobileSecurityResult;
    }
    catch (RpcException localRpcException)
    {
      new StringBuilder("{[info=step12SendPhone], [msg=").append(localRpcException.getMessage()).append("]}").toString();
      dismissProgressDialog();
      c();
      if (localRpcException.getCode() != 13)
        throw localRpcException;
    }
    return null;
  }

  private MobileBindVerifyRes j()
  {
    RSAService localRSAService = (RSAService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(RSAService.class.getName());
    if (localRSAService != null)
      try
      {
        MobileBindManagerFacade localMobileBindManagerFacade = (MobileBindManagerFacade)((RpcService)this.mApp.getServiceByInterface(RpcService.class.getName())).getRpcProxy(MobileBindManagerFacade.class);
        MobileBindVerifyReq localMobileBindVerifyReq = new MobileBindVerifyReq();
        localMobileBindVerifyReq.setAuthCode(this.z);
        localMobileBindVerifyReq.setBindMobile(this.D);
        localMobileBindVerifyReq.setLogonId(this.C);
        localMobileBindVerifyReq.setPaymentPwd(localRSAService.RSAEncrypt(this.A, false));
        this.T = Thread.currentThread();
        MobileBindVerifyRes localMobileBindVerifyRes = localMobileBindManagerFacade.verifyPwdAndAuthCode(localMobileBindVerifyReq);
        return localMobileBindVerifyRes;
      }
      catch (RpcException localRpcException)
      {
        new StringBuilder("{[info=step22CheckCodeAndPaypwd], [msg=").append(localRpcException.getMessage()).append("]}").toString();
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
      this.K = localAuthService.getUserInfo();
      this.C = this.K.getLogonId();
      b();
    }
    this.O = ((BindPhoneService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(BindPhoneService.class.getName()));
  }

  @UiThread
  protected void a(String paramString)
  {
    toast(paramString, 1);
  }

  @UiThread
  protected void b()
  {
    this.h.setEnabled(false);
    this.j.setEnabled(false);
    this.n.setEnabled(false);
    this.o.setEnabled(false);
    this.q.setEnabled(false);
    this.g.setInputType(129);
    this.m.setInputType(129);
    SecurityPwdUtil.a(this.l.getInputBox().getEtContent(), 6);
    SMSService localSMSService = (SMSService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(SMSService.class.getName());
    if (localSMSService != null)
    {
      this.L = Boolean.valueOf(localSMSService.isCanUseSim());
      if (this.L.booleanValue())
      {
        SpannableString localSpannableString = new SpannableString(getResources().getString(R.string.aD));
        localSpannableString.setSpan(new ForegroundColorSpan(Color.rgb(51, 51, 51)), 0, 18, 34);
        localSpannableString.setSpan(new ForegroundColorSpan(Color.rgb(153, 153, 153)), 19, 35, 34);
        this.f.setText(localSpannableString);
      }
    }
    while (true)
    {
      showProgressDialog(null, true, this.t);
      new Thread(new b(0, (byte)0)).start();
      this.g.addTextChangedListener(this.u);
      this.h.setOnClickListener(this);
      this.i.addTextChangedListener(this.u);
      this.j.setOnClickListener(this);
      this.m.addTextChangedListener(this.u);
      this.l.getInputBox().addTextChangedListener(this.u);
      this.n.setOnClickListener(this);
      this.l.setOnSendCallback(this.s);
      this.o.setOnClickListener(this);
      this.q.setOnClickListener(this);
      return;
      d();
      this.M = Boolean.valueOf(true);
      continue;
      toast(getResources().getString(R.string.by), 1);
    }
  }

  @UiThread
  protected void c()
  {
    this.l.getSendCodeButton().setEnabled(true);
  }

  public void onClick(View paramView)
  {
    int i1 = paramView.getId();
    if (R.id.dz == i1)
      if ((this.x != null) && (!"".equals(this.x)))
        if (!SecurityPwdUtil.a(this.x).booleanValue())
          toast("支付密码不正确，请重新输入", 1);
    do
    {
      return;
      SMSService localSMSService = (SMSService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(SMSService.class.getName());
      if (localSMSService != null)
      {
        this.L = Boolean.valueOf(localSMSService.isCanUseSim());
        if (!this.L.booleanValue())
        {
          g();
          return;
        }
        showProgressDialog(getResources().getString(R.string.aB), true, this.t);
        this.h.setEnabled(false);
        SecurityCommonDialogUtil.getBundle(this);
        new Thread(new b(1, (byte)0)).start();
        return;
      }
      getBundle(getResources().getString(R.string.c));
      return;
      toast(getResources().getString(R.string.by), 1);
      return;
      if (R.id.dA == i1)
      {
        if ((this.y != null) && (!"".equals(this.y)))
        {
          if (!Boolean.valueOf(this.y.matches("[1][3-8][0-9]{9}")).booleanValue())
          {
            toast(getResources().getString(R.string.aL), 1);
            return;
          }
          showProgressDialog(getResources().getString(R.string.aB), true, this.t);
          this.D = this.i.getInputedText().toString();
          new Thread(new b(2, (byte)0)).start();
          return;
        }
        toast(getResources().getString(R.string.by), 1);
        return;
      }
      if (R.id.dw == i1)
      {
        if ((this.z != null) && (!"".equals(this.z)) && (this.A != null) && (!"".equals(this.A)))
        {
          if (!SecurityPwdUtil.a(this.A).booleanValue())
          {
            toast(getResources().getString(R.string.bv), 1);
            return;
          }
          showProgressDialog(getResources().getString(R.string.aG), true, this.t);
          this.A = this.m.getInputedText().toString();
          this.z = this.l.getText().toString();
          new Thread(new b(3, (byte)0)).start();
          return;
        }
        toast(getResources().getString(R.string.by), 1);
        return;
      }
      if (R.id.dJ == i1)
      {
        a(Boolean.valueOf(true));
        a(Boolean.valueOf(true), this.D);
        return;
      }
    }
    while (R.id.dy != i1);
    a(Boolean.valueOf(false));
    a(Boolean.valueOf(false), "");
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
      Boolean localBoolean = Boolean.valueOf(false);
      if ((this.d.getVisibility() == 0) || (this.e.getVisibility() == 0))
      {
        if (this.d.getVisibility() == 0)
          Boolean.valueOf(true);
        this.d.setVisibility(8);
        this.e.setVisibility(8);
        if (this.M.booleanValue())
        {
          this.c.setVisibility(0);
          this.m.getEtContent().setText("");
          this.l.getInputBox().getEtContent().setText("");
        }
      }
      do
      {
        return false;
        this.a.setVisibility(0);
        this.g.getEtContent().setText("");
        return false;
        if (this.c.getVisibility() == 0)
        {
          this.c.setVisibility(8);
          this.b.setVisibility(0);
          this.l.currentSecond2Zero();
          return false;
        }
      }
      while ((this.a.getVisibility() != 0) && (this.b.getVisibility() != 0));
      this.a.setVisibility(8);
      this.b.setVisibility(8);
      if (this.G != null)
        this.G.cancel();
      a(localBoolean, "");
      return false;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  protected void onResume()
  {
    super.onResume();
  }

  private final class a extends TimerTask
  {
    private int b = 0;

    private a()
    {
    }

    public final void run()
    {
      Message localMessage = new Message();
      localMessage.what = 4;
      this.b = (1 + this.b);
      MobileBindQueryRes localMobileBindQueryRes = BindPhoneActivity.z(BindPhoneActivity.this);
      if ((localMobileBindQueryRes != null) && (localMobileBindQueryRes.isSuccess()) && (this.b < 10))
      {
        Bundle localBundle3 = new Bundle();
        localBundle3.putCharSequence("rs", JSON.toJSONString(localMobileBindQueryRes));
        localMessage.setData(localBundle3);
        BindPhoneActivity.q(BindPhoneActivity.this).cancel();
        BindPhoneActivity.A(BindPhoneActivity.this).sendMessage(localMessage);
      }
      do
      {
        return;
        if ((localMobileBindQueryRes != null) && (!localMobileBindQueryRes.isSuccess()) && (this.b < 10) && (!"709".equals(localMobileBindQueryRes.getResultCode())))
        {
          Bundle localBundle2 = new Bundle();
          localBundle2.putCharSequence("rs", JSON.toJSONString(localMobileBindQueryRes));
          localMessage.setData(localBundle2);
          BindPhoneActivity.q(BindPhoneActivity.this).cancel();
          BindPhoneActivity.A(BindPhoneActivity.this).sendMessage(localMessage);
          return;
        }
        if (this.b == 10)
        {
          Bundle localBundle1 = new Bundle();
          localBundle1.putCharSequence("rs", JSON.toJSONString(localMobileBindQueryRes));
          localMessage.setData(localBundle1);
          BindPhoneActivity.q(BindPhoneActivity.this).cancel();
          BindPhoneActivity.A(BindPhoneActivity.this).sendMessage(localMessage);
          return;
        }
      }
      while (this.b <= 10);
      BindPhoneActivity.q(BindPhoneActivity.this).cancel();
    }
  }

  private final class b
    implements Runnable
  {
    private int b;

    private b(int arg2)
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
        MobileBindQueryRes localMobileBindQueryRes = BindPhoneActivity.E(BindPhoneActivity.this);
        Bundle localBundle4 = new Bundle();
        localBundle4.putCharSequence("rs", JSON.toJSONString(localMobileBindQueryRes));
        localMessage.setData(localBundle4);
        BindPhoneActivity.A(BindPhoneActivity.this).sendMessage(localMessage);
        return;
      case 1:
        MobileBindVerifyRes localMobileBindVerifyRes2 = BindPhoneActivity.F(BindPhoneActivity.this);
        Bundle localBundle3 = new Bundle();
        localBundle3.putCharSequence("rs", JSON.toJSONString(localMobileBindVerifyRes2));
        localMessage.setData(localBundle3);
        BindPhoneActivity.A(BindPhoneActivity.this).sendMessage(localMessage);
        return;
      case 2:
        MobileSecurityResult localMobileSecurityResult = BindPhoneActivity.G(BindPhoneActivity.this);
        Bundle localBundle2 = new Bundle();
        localBundle2.putCharSequence("rs", JSON.toJSONString(localMobileSecurityResult));
        localMessage.setData(localBundle2);
        BindPhoneActivity.A(BindPhoneActivity.this).sendMessage(localMessage);
        return;
      case 3:
      }
      MobileBindVerifyRes localMobileBindVerifyRes1 = BindPhoneActivity.H(BindPhoneActivity.this);
      Bundle localBundle1 = new Bundle();
      localBundle1.putCharSequence("rs", JSON.toJSONString(localMobileBindVerifyRes1));
      localMessage.setData(localBundle1);
      BindPhoneActivity.A(BindPhoneActivity.this).sendMessage(localMessage);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.BindPhoneActivity
 * JD-Core Version:    0.6.2
 */