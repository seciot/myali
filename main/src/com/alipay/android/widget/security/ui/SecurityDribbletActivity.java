package com.alipay.android.widget.security.ui;

import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager.BadTokenException;
import com.alibaba.fastjson.JSON;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.commonui.widget.APAbsTableView.OnSwitchListener;
import com.alipay.mobile.commonui.widget.APEditText;
import com.alipay.mobile.commonui.widget.APRadioTableView;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APToggleButton;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.RSAService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.security.securitycommon.SecurityCommonDialogUtil;
import com.alipay.mobilesecurity.biz.gw.service.account.mobilebind.MobileBindManagerFacade;
import com.alipay.mobilesecurity.biz.gw.service.securitywidget.FreePasswordSwitchFacade;
import com.alipay.mobilesecurity.core.model.mainpage.freepwdswitch.QueryFreePwdSwitchReq;
import com.alipay.mobilesecurity.core.model.mainpage.freepwdswitch.QueryFreePwdSwitchRes;
import com.alipay.mobilesecurity.core.model.mainpage.freepwdswitch.SetFreePwdSwitchReq;
import com.alipay.mobilesecurity.core.model.mainpage.freepwdswitch.SetFreePwdSwitchRes;
import com.alipay.mobilesecurity.core.model.mobilebind.MobileBindQueryReq;
import com.alipay.mobilesecurity.core.model.mobilebind.MobileBindQueryRes;
import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.UiThread;
import com.googlecode.androidannotations.annotations.ViewById;

@SuppressLint({"HandlerLeak"})
@EActivity(resName="security_dribblet")
public class SecurityDribbletActivity extends BaseActivity
{

  @ViewById(resName="securityDribbletSwitch")
  protected APRadioTableView a;

  @ViewById(resName="securityDribbletWarn")
  protected APTextView b;
  protected AlertDialog.Builder c;
  protected String d;
  protected String e;
  protected APEditText f;
  DialogInterface.OnClickListener g = new SecurityDribbletActivity.2(this);
  DialogInterface.OnClickListener h = new SecurityDribbletActivity.3(this);
  DialogInterface.OnClickListener i = new SecurityDribbletActivity.4(this);
  APAbsTableView.OnSwitchListener j = new SecurityDribbletActivity.5(this);
  DialogInterface.OnCancelListener k = new SecurityDribbletActivity.6(this);
  DialogInterface.OnCancelListener l = new SecurityDribbletActivity.7(this);
  DialogInterface.OnCancelListener m = new SecurityDribbletActivity.8(this);
  DialogInterface.OnCancelListener n = new SecurityDribbletActivity.9(this);
  private UserInfo o;
  private Boolean p;
  private Thread q;
  private final String r = "fund manage begin";
  private final String s = "fund manage end";
  private Handler t = new SecurityDribbletActivity.1(this);

  private QueryFreePwdSwitchRes b(String paramString)
  {
    FreePasswordSwitchFacade localFreePasswordSwitchFacade = (FreePasswordSwitchFacade)((RpcService)this.mApp.getServiceByInterface(RpcService.class.getName())).getRpcProxy(FreePasswordSwitchFacade.class);
    QueryFreePwdSwitchReq localQueryFreePwdSwitchReq = new QueryFreePwdSwitchReq();
    localQueryFreePwdSwitchReq.setLoginId(paramString);
    try
    {
      QueryFreePwdSwitchRes localQueryFreePwdSwitchRes = localFreePasswordSwitchFacade.queryFreePwdSwitch(localQueryFreePwdSwitchReq);
      return localQueryFreePwdSwitchRes;
    }
    catch (RpcException localRpcException)
    {
      new StringBuilder("{[info=queryToggle], [msg=").append(localRpcException.getMessage()).append("]}").toString();
      throw localRpcException;
    }
  }

  private SetFreePwdSwitchRes b(Boolean paramBoolean)
  {
    FreePasswordSwitchFacade localFreePasswordSwitchFacade = (FreePasswordSwitchFacade)((RpcService)this.mApp.getServiceByInterface(RpcService.class.getName())).getRpcProxy(FreePasswordSwitchFacade.class);
    SetFreePwdSwitchReq localSetFreePwdSwitchReq = new SetFreePwdSwitchReq();
    localSetFreePwdSwitchReq.setLoginId(this.d);
    try
    {
      if (!paramBoolean.booleanValue())
        break label180;
      RSAService localRSAService = (RSAService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(RSAService.class.getName());
      if (localRSAService != null)
      {
        localSetFreePwdSwitchReq.setEncryptPaymentPwd(localRSAService.RSAEncrypt(this.e, false));
        localSetFreePwdSwitchReq.setSetSwitchType("ON");
      }
      while (true)
      {
        this.q = Thread.currentThread();
        return localFreePasswordSwitchFacade.setFreePwdSwitch(localSetFreePwdSwitchReq);
        a(getResources().getString(R.string.c));
      }
    }
    catch (RpcException localRpcException)
    {
      new StringBuilder("{[info=SetFreePwdSwitchRes], [msg=").append(localRpcException.getMessage()).append("]}").toString();
      dismissProgressDialog();
      if (!paramBoolean.booleanValue())
        break label190;
    }
    a(Boolean.valueOf(false));
    while (true)
    {
      throw localRpcException;
      label180: localSetFreePwdSwitchReq.setSetSwitchType("OFF");
      break;
      label190: a(Boolean.valueOf(true));
    }
  }

  private MobileBindQueryRes f()
  {
    MobileBindQueryReq localMobileBindQueryReq = new MobileBindQueryReq();
    localMobileBindQueryReq.setLogonId(this.d);
    MobileBindManagerFacade localMobileBindManagerFacade = (MobileBindManagerFacade)((RpcService)this.mApp.getServiceByInterface(RpcService.class.getName())).getRpcProxy(MobileBindManagerFacade.class);
    try
    {
      MobileBindQueryRes localMobileBindQueryRes = localMobileBindManagerFacade.queryBindMobile(localMobileBindQueryReq);
      return localMobileBindQueryRes;
    }
    catch (RpcException localRpcException)
    {
      new StringBuilder("{[info=MobileBindQueryRes], [msg=").append(localRpcException.getMessage()).append("]}").toString();
    }
    return null;
  }

  private SetFreePwdSwitchRes g()
  {
    FreePasswordSwitchFacade localFreePasswordSwitchFacade = (FreePasswordSwitchFacade)((RpcService)this.mApp.getServiceByInterface(RpcService.class.getName())).getRpcProxy(FreePasswordSwitchFacade.class);
    SetFreePwdSwitchReq localSetFreePwdSwitchReq = new SetFreePwdSwitchReq();
    localSetFreePwdSwitchReq.setLoginId(this.d);
    try
    {
      RSAService localRSAService = (RSAService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(RSAService.class.getName());
      if (localRSAService != null)
      {
        localSetFreePwdSwitchReq.setEncryptPaymentPwd(localRSAService.RSAEncrypt(this.e, false));
        localSetFreePwdSwitchReq.setSetSwitchType("ON");
      }
      while (true)
      {
        localSetFreePwdSwitchReq.setHasSmsCertification(1);
        return localFreePasswordSwitchFacade.setFreePwdSwitch(localSetFreePwdSwitchReq);
        a(getResources().getString(R.string.c));
      }
    }
    catch (RpcException localRpcException)
    {
      new StringBuilder("{[info=SetFreePwdSwitchRes], [msg=").append(localRpcException.getMessage()).append("]}").toString();
      throw localRpcException;
    }
  }

  @AfterViews
  protected final void a()
  {
    this.a.setClickable(false);
    this.a.setFocusable(false);
    b();
  }

  @UiThread
  protected void a(Boolean paramBoolean)
  {
    this.a.getToggleButton().setChecked(paramBoolean.booleanValue());
    if (this.a.getToggleButton().isChecked())
    {
      this.b.setText(R.string.bt);
      return;
    }
    this.b.setText(R.string.bs);
  }

  @UiThread
  protected void a(String paramString)
  {
    toast(paramString, 0);
  }

  @Background
  protected void b()
  {
    AuthService localAuthService = (AuthService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName());
    if (localAuthService.auth(new Bundle()))
    {
      this.o = localAuthService.getUserInfo();
      this.d = this.o.getLogonId();
      this.p = Boolean.valueOf(this.o.isNoPayPwd());
      c();
    }
  }

  @UiThread
  protected void c()
  {
    if ((this.o != null) && (this.d != null) && (!"".equals(this.d)))
    {
      a(this.p);
      new Thread(new ListenerThread(3, (byte)0)).start();
      this.a.setOnSwitchListener(this.j);
    }
  }

  @UiThread
  protected void d()
  {
    this.c = new AlertDialog.Builder(this);
    this.c.setTitle(getResources().getString(R.string.am) + ":" + this.d);
    View localView = LayoutInflater.from(this).inflate(R.layout.aI, null);
    this.f = ((APEditText)localView.findViewById(R.id.eN));
    this.c.setView(localView);
    this.c.setPositiveButton(getResources().getString(R.string.bi), new SecurityDribbletActivity.10(this));
    this.c.setNegativeButton(getResources().getString(R.string.aI), new SecurityDribbletActivity.11(this));
    AlertDialog localAlertDialog = this.c.create();
    localAlertDialog.setCancelable(false);
    localAlertDialog.setCanceledOnTouchOutside(false);
    if (!localAlertDialog.isShowing());
    try
    {
      localAlertDialog.show();
      return;
    }
    catch (WindowManager.BadTokenException localBadTokenException)
    {
      new StringBuilder("{[info=openPaypwdDialog], [msg=").append(localBadTokenException.getMessage()).append("]}").toString();
    }
  }

  @Background
  protected void e()
  {
    MobileBindQueryRes localMobileBindQueryRes = f();
    dismissProgressDialog();
    if (localMobileBindQueryRes != null)
    {
      if (localMobileBindQueryRes.isSuccess())
      {
        alert(null, getResources().getString(R.string.bq), getResources().getString(R.string.az), new SecurityDribbletActivity.12(this), getResources().getString(R.string.aI), new SecurityDribbletActivity.13(this), Boolean.valueOf(false));
        return;
      }
      if ("702".equals(localMobileBindQueryRes.getResultCode()))
      {
        d();
        return;
      }
      SecurityCommonDialogUtil.a(this, this.mApp, localMobileBindQueryRes);
      a(Boolean.valueOf(false));
      return;
    }
    a(getResources().getString(R.string.c));
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    AlipayLogAgent.writeLog(this, BehaviourIdEnum.CLICKED, null, null, "20000024", "", "smallDenseFreeView", "", "seePush", null, null, null, new String[] { "", "", "", "", "" });
  }

  protected void onRestart()
  {
    super.onRestart();
    new Thread(new ListenerThread(3, (byte)0)).start();
  }

  private class ListenerThread
    implements Runnable
  {
    private int b;

    private ListenerThread(int arg2)
    {
      int i;
      this.b = i;
    }

    public void run()
    {
      Message localMessage = new Message();
      localMessage.what = this.b;
      switch (this.b)
      {
      default:
        return;
      case 0:
        SetFreePwdSwitchRes localSetFreePwdSwitchRes3 = SecurityDribbletActivity.h(SecurityDribbletActivity.this);
        Bundle localBundle4 = new Bundle();
        localBundle4.putCharSequence("rs", JSON.toJSONString(localSetFreePwdSwitchRes3));
        localMessage.setData(localBundle4);
        SecurityDribbletActivity.i(SecurityDribbletActivity.this).sendMessage(localMessage);
        return;
      case 1:
        SetFreePwdSwitchRes localSetFreePwdSwitchRes2 = SecurityDribbletActivity.a(SecurityDribbletActivity.this, Boolean.valueOf(true));
        Bundle localBundle3 = new Bundle();
        localBundle3.putCharSequence("rs", JSON.toJSONString(localSetFreePwdSwitchRes2));
        localMessage.setData(localBundle3);
        SecurityDribbletActivity.i(SecurityDribbletActivity.this).sendMessage(localMessage);
        return;
      case 2:
        SetFreePwdSwitchRes localSetFreePwdSwitchRes1 = SecurityDribbletActivity.a(SecurityDribbletActivity.this, Boolean.valueOf(false));
        Bundle localBundle2 = new Bundle();
        localBundle2.putCharSequence("rs", JSON.toJSONString(localSetFreePwdSwitchRes1));
        localMessage.setData(localBundle2);
        SecurityDribbletActivity.i(SecurityDribbletActivity.this).sendMessage(localMessage);
        return;
      case 3:
      }
      QueryFreePwdSwitchRes localQueryFreePwdSwitchRes = SecurityDribbletActivity.a(SecurityDribbletActivity.this, SecurityDribbletActivity.this.d);
      Bundle localBundle1 = new Bundle();
      localBundle1.putCharSequence("rs", JSON.toJSONString(localQueryFreePwdSwitchRes));
      localMessage.setData(localBundle1);
      SecurityDribbletActivity.i(SecurityDribbletActivity.this).sendMessage(localMessage);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityDribbletActivity
 * JD-Core Version:    0.6.2
 */