package com.alipay.android.widget.security.ui.authentication;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.text.TextUtils;
import android.view.KeyEvent;
import com.alibaba.fastjson.JSON;
import com.alipay.android.widget.security.service.a;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobilesecurity.core.model.account.certify.RealNameCertifyResult;
import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.UiThread;

@EActivity(resName="authentication_certified_container")
public class AuthenticationCertifiedActivity extends BaseAuthenticationActivity
{
  private FragmentManager c;
  private Fragment d;
  private MicroApplicationContext e;
  private AuthService f;
  private UserInfo g = null;
  private a h;
  private boolean i = false;

  @AfterViews
  protected final void a()
  {
    this.c = getSupportFragmentManager();
    this.e = this.mApp.getMicroApplicationContext();
    this.f = ((AuthService)this.e.getExtServiceByInterface(AuthService.class.getName()));
    this.h = new a();
    Intent localIntent = getIntent();
    if (localIntent != null)
    {
      Bundle localBundle = localIntent.getExtras();
      if ((localBundle != null) && ("pc".equalsIgnoreCase(localBundle.getString("sourceId"))))
        AlipayLogAgent.writeLog(this, BehaviourIdEnum.OPENPAGE, "-", "-", "20000038", "-", "pcDrainageDataView", "-", "-");
    }
    c();
  }

  @UiThread
  protected void a(BaseAuthenticationFragment paramBaseAuthenticationFragment, boolean paramBoolean)
  {
    new StringBuilder("fragment: ").append(paramBaseAuthenticationFragment.getClass().getName()).toString();
    this.d = paramBaseAuthenticationFragment;
    FragmentTransaction localFragmentTransaction = this.c.beginTransaction();
    localFragmentTransaction.replace(R.id.M, paramBaseAuthenticationFragment);
    if (paramBoolean)
      localFragmentTransaction.addToBackStack(null);
    localFragmentTransaction.commitAllowingStateLoss();
  }

  @Background
  protected void a(String paramString)
  {
    RealNameCertifyResult localRealNameCertifyResult;
    Bundle localBundle;
    try
    {
      showProgressDialog(null, true, null);
      localRealNameCertifyResult = this.h.a(paramString);
      dismissProgressDialog();
      if (this == null)
        return;
      if (isFinishing())
        return;
      if (localRealNameCertifyResult == null)
        break label500;
      if (!localRealNameCertifyResult.success)
        break label415;
      localBundle = new Bundle();
      localBundle.putString("certifiedResult", JSON.toJSONString(localRealNameCertifyResult));
      if (("5106".equalsIgnoreCase(localRealNameCertifyResult.resultCode)) || ("5126".equalsIgnoreCase(localRealNameCertifyResult.resultCode)) || ("5127".equalsIgnoreCase(localRealNameCertifyResult.resultCode)))
        if ("5127".equalsIgnoreCase(localRealNameCertifyResult.resultCode))
        {
          this.i = true;
          CanNotCertifiedFragment_ localCanNotCertifiedFragment_ = new CanNotCertifiedFragment_();
          localCanNotCertifiedFragment_.setArguments(localBundle);
          localCanNotCertifiedFragment_.a(this.mApp);
          a(localCanNotCertifiedFragment_, false);
          return;
        }
    }
    catch (RpcException localRpcException)
    {
      while (true)
      {
        dismissProgressDialog();
        localRpcException.getMessage();
        throw localRpcException;
        this.i = false;
      }
    }
    catch (Exception localException)
    {
      localException.getMessage();
      return;
    }
    if (("5107".equalsIgnoreCase(localRealNameCertifyResult.resultCode)) || ("5108".equalsIgnoreCase(localRealNameCertifyResult.resultCode)) || ("5109".equalsIgnoreCase(localRealNameCertifyResult.resultCode)) || ("5120".equalsIgnoreCase(localRealNameCertifyResult.resultCode)) || ("5121".equalsIgnoreCase(localRealNameCertifyResult.resultCode)) || ("5122".equalsIgnoreCase(localRealNameCertifyResult.resultCode)))
    {
      this.i = true;
      HasCertifiedFragment_ localHasCertifiedFragment_ = new HasCertifiedFragment_();
      localHasCertifiedFragment_.setArguments(localBundle);
      localHasCertifiedFragment_.a(this.mApp);
      a(localHasCertifiedFragment_, false);
      return;
    }
    if ("5124".equalsIgnoreCase(localRealNameCertifyResult.resultCode))
    {
      this.i = false;
      UnRealNameFragment_ localUnRealNameFragment_ = new UnRealNameFragment_();
      localUnRealNameFragment_.a(this.mApp);
      a(localUnRealNameFragment_, false);
      return;
    }
    if ("5125".equalsIgnoreCase(localRealNameCertifyResult.resultCode))
    {
      this.i = false;
      RealNameFragment_ localRealNameFragment_ = new RealNameFragment_();
      localRealNameFragment_.setArguments(localBundle);
      localRealNameFragment_.a(this.mApp);
      a(localRealNameFragment_, false);
      return;
    }
    this.i = false;
    toast(localRealNameCertifyResult.message, 1);
    return;
    label415: if ("700".equalsIgnoreCase(localRealNameCertifyResult.resultCode))
    {
      runOnUiThread(new BaseAuthenticationActivity.1(this, this, new AuthenticationCertifiedActivity.1(this)));
      return;
    }
    if ("202".equalsIgnoreCase(localRealNameCertifyResult.resultCode))
    {
      alert(null, localRealNameCertifyResult.message, "确定", new AuthenticationCertifiedActivity.2(this), null, null);
      return;
    }
    toast(localRealNameCertifyResult.message, 1);
    return;
    label500: toast(getResources().getString(R.string.c), 0);
  }

  protected final void b()
  {
    this.c.popBackStack(null, 1);
    if (!TextUtils.isEmpty(this.b))
    {
      a(this.b);
      return;
    }
    a(false);
    this.e.finishApp(this.mApp.getAppId(), this.mApp.getAppId(), null);
  }

  @Background
  protected void c()
  {
    if (this.f == null)
    {
      a(false);
      this.e.finishApp(this.mApp.getAppId(), this.mApp.getAppId(), null);
      return;
    }
    if (((!this.f.isLogin()) || (this.f.getUserInfo() == null)) && (!this.f.auth(new Bundle())))
    {
      a(false);
      this.e.finishApp(this.mApp.getAppId(), this.mApp.getAppId(), null);
      return;
    }
    this.g = this.f.getUserInfo();
    if (this.g != null)
      this.b = this.g.getLogonId();
    if (!TextUtils.isEmpty(this.b))
    {
      a(this.b);
      return;
    }
    a(false);
    this.e.finishApp(this.mApp.getAppId(), this.mApp.getAppId(), null);
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      if ((this.d != null) && (this.d.isVisible()) && (((this.d instanceof CertifiedSuccessShootFragment_)) || ((this.d instanceof CertifiedFailCardFragment_))))
        return true;
      if ((this.d != null) && (this.d.isVisible()) && (((this.d instanceof CanNotCertifiedFragment_)) || ((this.d instanceof HasCertifiedFragment_)) || ((this.d instanceof UnRealNameFragment_)) || ((this.d instanceof RealNameFragment_))))
      {
        a(this.i);
        this.e.finishApp(this.mApp.getAppId(), this.mApp.getAppId(), null);
        return true;
      }
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.AuthenticationCertifiedActivity
 * JD-Core Version:    0.6.2
 */