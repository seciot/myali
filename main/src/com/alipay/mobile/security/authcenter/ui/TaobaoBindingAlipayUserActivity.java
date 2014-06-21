package com.alipay.mobile.security.authcenter.ui;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextWatcher;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.Toast;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.common.info.DeviceInfo;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.common.widget.SimpleToast;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APEditText;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.ext.security.RSAService;
import com.alipay.mobile.security.authcenter.a.g;
import com.alipay.mobileapp.common.service.facade.taobao.binding.model.BindingLoginIdReq;
import com.alipay.mobileapp.common.service.facade.taobao.binding.model.BindingLoginIdRes;
import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.UiThread;
import com.googlecode.androidannotations.annotations.ViewById;
import java.lang.ref.WeakReference;

@EActivity(resName="security_binding_alipay")
public class TaobaoBindingAlipayUserActivity extends BaseActivity
  implements DialogInterface.OnCancelListener, View.OnClickListener
{

  @ViewById(resName="binding_alipay_user")
  protected APInputBox a;

  @ViewById(resName="binding_alipay_user_logon_pwd")
  protected APInputBox b;
  protected String c;
  protected String d;

  @ViewById(resName="authcenter_binding_alipay_submit")
  protected APButton e;

  @ViewById(resName="authcenter_regiester_new_user")
  protected APButton f;
  TextWatcher g = new az(this);
  Thread h = null;
  private g i;

  private void a(Context paramContext, String paramString)
  {
    ((Activity)this.mApp.getMicroApplicationContext().getTopActivity().get()).runOnUiThread(new bc(this, paramContext, paramString));
  }

  @AfterViews
  protected final void a()
  {
    this.e.setOnClickListener(this);
    this.e.setEnabled(false);
    this.f.setOnClickListener(new ba(this));
    this.a.addTextChangedListener(this.g);
    this.b.addTextChangedListener(this.g);
    this.a.setCleanButtonListener(new bb(this));
  }

  @Background
  public void a(String paramString1, String paramString2)
  {
    try
    {
      this.h = Thread.currentThread();
      ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(this.a.getEtContent().getWindowToken(), 0);
      showProgressDialog(getResources().getString(R.string.aE), true, this);
      BindingLoginIdReq localBindingLoginIdReq = new BindingLoginIdReq();
      RSAService localRSAService = (RSAService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(RSAService.class.getName());
      String str1 = localRSAService.RSAEncrypt(paramString2, false);
      String str2 = localRSAService.RSAEncrypt(this.d, false);
      localBindingLoginIdReq.setClientID(DeviceInfo.getInstance().getClientId());
      localBindingLoginIdReq.setLoginAccount(this.c);
      localBindingLoginIdReq.setLoginPassword(str2);
      localBindingLoginIdReq.setAlipayId(paramString1);
      localBindingLoginIdReq.setAlipayPassword(str1);
      a(paramString1, str1, this.i.a(localBindingLoginIdReq));
      return;
    }
    catch (RpcException localRpcException)
    {
      dismissProgressDialog();
      throw localRpcException;
    }
  }

  @UiThread
  public void a(String paramString1, String paramString2, BindingLoginIdRes paramBindingLoginIdRes)
  {
    int j = paramBindingLoginIdRes.getResultStatus();
    try
    {
      if (this.h.isInterrupted())
        return;
      dismissProgressDialog();
      if (j == 1000)
      {
        SimpleToast.makeToast(this, 0, getResources().getString(R.string.aw), 0).show();
        setResult(20080200);
        finish();
        return;
      }
      if (j == 1011)
      {
        Intent localIntent = new Intent(this, CompleteUserInfoActivity_.class);
        localIntent.putExtra("logonId", paramString1);
        localIntent.putExtra("app_id", this.mApp.getAppId());
        startActivityForResult(localIntent, 2801);
        return;
      }
      String str = paramBindingLoginIdRes.getMemo();
      if ((str != null) && (!str.trim().equalsIgnoreCase("")))
      {
        v(this, paramBindingLoginIdRes.getMemo());
        return;
      }
      v(this, getResources().getString(R.string.J));
      return;
    }
    catch (Exception localException)
    {
    }
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (20080100 == paramInt2)
    {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      a(this.a.getInputedText(), this.b.getInputedText());
    }
  }

  public void onCancel(DialogInterface paramDialogInterface)
  {
    if ((this.h != null) && (this.h.isAlive()))
    {
      this.h.interrupt();
      dismissProgressDialog();
    }
  }

  public void onClick(View paramView)
  {
    AlipayLogAgent.writeLog(this, BehaviourIdEnum.CLICKED, "-", "-", "security", "-", "-", "alipayBindingView", "confirmBinding");
    a(this.a.getInputedText(), this.b.getInputedText());
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.i = new g(this.mApp);
    Bundle localBundle = getIntent().getExtras();
    this.c = ((String)localBundle.get("tabao_user_name"));
    this.d = ((String)localBundle.get("taobao_password"));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.TaobaoBindingAlipayUserActivity
 * JD-Core Version:    0.6.2
 */