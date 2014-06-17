package com.alipay.mobile.security.authcenter.ui;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.widget.Toast;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.common.widget.SimpleToast;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ui.BaseFragmentActivity;
import com.alipay.mobile.framework.service.ext.security.PwdHistoryClearCallBack;
import com.alipay.mobile.framework.service.ext.security.SmsCheckCallBack;
import com.alipay.mobile.framework.service.ext.security.SmsCheckResultCallBack;
import com.alipay.mobile.security.authcenter.a.f;
import com.alipay.mobile.security.securitycommon.fragment.SetSimplePwdFragment.SetSimplePwdCallBack;
import com.alipay.mobile.security.securitycommon.fragment.SetSimplePwdFragment_;
import com.alipay.mobile.security.securitycommon.fragment.SmsCheckFragment_;
import com.alipay.mobileapp.biz.rpc.register.vo.RegisterPcToMobileRes;
import com.alipay.mobileapp.biz.rpc.register.vo.SendSmsCodeRes;
import com.alipay.mobileapp.biz.rpc.register.vo.SetMobilePayPwdRes;
import com.alipay.mobileapp.biz.rpc.register.vo.VerifyCheckRes;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.UiThread;
import java.util.HashMap;
import java.util.Map;

@EActivity(resName="register_user")
public class RegisterNewActivity extends BaseFragmentActivity
  implements SmsCheckCallBack, SetSimplePwdFragment.SetSimplePwdCallBack
{
  public static final String a = RegisterNewActivity.class.getSimpleName();
  Map<Integer, Fragment> b = new HashMap();
  private String c;
  private BaseRegisterUserFragment d;
  private Fragment e;
  private Fragment f;
  private SmsCheckResultCallBack g;
  private PwdHistoryClearCallBack h;
  private String i = "registerFromCommon";
  private f j;
  private String k;
  private boolean l = false;
  private String m = "down_input";
  private String n = "";
  private Fragment o;
  private boolean p = true;

  private SendSmsCodeRes b(SmsCheckResultCallBack paramSmsCheckResultCallBack)
  {
    this.g = paramSmsCheckResultCallBack;
    showProgressDialog("");
    try
    {
      SendSmsCodeRes localSendSmsCodeRes = this.j.a(this.c);
      return localSendSmsCodeRes;
    }
    catch (RpcException localRpcException)
    {
      dismissProgressDialog();
      throw localRpcException;
    }
  }

  private SetMobilePayPwdRes b(String paramString, PwdHistoryClearCallBack paramPwdHistoryClearCallBack)
  {
    this.h = paramPwdHistoryClearCallBack;
    this.n = paramString;
    showProgressDialog("");
    try
    {
      SetMobilePayPwdRes localSetMobilePayPwdRes = this.j.a(this.c, paramString, this.k, this.m);
      return localSetMobilePayPwdRes;
    }
    catch (RpcException localRpcException)
    {
      dismissProgressDialog();
      throw localRpcException;
    }
  }

  private VerifyCheckRes b(String paramString1, String paramString2, SmsCheckResultCallBack paramSmsCheckResultCallBack)
  {
    this.g = paramSmsCheckResultCallBack;
    this.m = paramString2;
    showProgressDialog("");
    try
    {
      VerifyCheckRes localVerifyCheckRes = this.j.a(this.c, paramString1, this.m);
      return localVerifyCheckRes;
    }
    catch (RpcException localRpcException)
    {
      dismissProgressDialog();
      throw localRpcException;
    }
  }

  private void c()
  {
    this.b.clear();
    this.e = new SmsCheckFragment_();
    this.d = new RegisterDownSmsFragment_();
    this.d.a(this);
    this.d.a(this.mApp);
    this.f = new SetSimplePwdFragment_();
    this.b.put(Integer.valueOf(20), this.d);
    this.b.put(Integer.valueOf(40), this.e);
    this.b.put(Integer.valueOf(30), this.f);
  }

  public final void a()
  {
    if (("registerFromPack".equals(this.i)) || ("registerFromWap".equals(this.i)));
    try
    {
      showProgressDialog("");
      a(this.j.b(this.k));
      return;
    }
    catch (Exception localException)
    {
      dismissProgressDialog();
      new StringBuilder("pc注册引流通过regid获取手机号码异常:").append(localException.getMessage()).toString();
      toast(getResources().getString(R.string.bW), 1);
    }
  }

  @UiThread
  protected void a(int paramInt)
  {
    getSupportFragmentManager().popBackStack(null, 1);
    c();
    try
    {
      Fragment localFragment = (Fragment)this.b.get(Integer.valueOf(paramInt));
      this.o = localFragment;
      getSupportFragmentManager().beginTransaction().replace(R.id.do, localFragment).setTransition(4097).commitAllowingStateLoss();
      return;
    }
    catch (Exception localException)
    {
    }
  }

  @UiThread
  protected void a(Fragment paramFragment)
  {
    FragmentTransaction localFragmentTransaction = getSupportFragmentManager().beginTransaction();
    this.o = paramFragment;
    if ((paramFragment instanceof SmsCheckFragment_))
    {
      Bundle localBundle = new Bundle();
      localBundle.putString("PageTips", this.c);
      paramFragment.setArguments(localBundle);
      ((SmsCheckFragment_)paramFragment).a(this);
    }
    while (true)
    {
      localFragmentTransaction.replace(R.id.do, paramFragment);
      if (((!"registerFromLogin".equals(this.i)) && (!"registerFromPack".equals(this.i))) || ((!(paramFragment instanceof SetSimplePwdFragment_)) && ((!"registerFromCommon".equals(this.i)) || (!(paramFragment instanceof RegisterDownSmsFragment_)))))
        localFragmentTransaction.addToBackStack(null);
      localFragmentTransaction.commitAllowingStateLoss();
      return;
      if ((paramFragment instanceof SetSimplePwdFragment_))
        ((SetSimplePwdFragment_)this.f).a(this.c, "", this);
    }
  }

  @UiThread
  protected void a(RegisterPcToMobileRes paramRegisterPcToMobileRes)
  {
    dismissProgressDialog();
    if ((paramRegisterPcToMobileRes != null) && (paramRegisterPcToMobileRes.resultStatus == 1000))
    {
      this.c = paramRegisterPcToMobileRes.getLogonId();
      return;
    }
    this.i = "registerFromCommon";
    this.l = false;
    a(20);
  }

  public final void a(Object paramObject, int paramInt)
  {
    dismissProgressDialog();
    if (paramObject == null)
    {
      toast(getResources().getString(R.string.bW), 1);
      return;
    }
    VerifyCheckRes localVerifyCheckRes;
    int i2;
    if (paramInt == 1)
    {
      try
      {
        if (!(paramObject instanceof VerifyCheckRes))
          break label493;
        localVerifyCheckRes = (VerifyCheckRes)paramObject;
        dismissProgressDialog();
        if (localVerifyCheckRes == null)
        {
          toast(getResources().getString(R.string.bW), 1);
          return;
        }
      }
      catch (Exception localException)
      {
        toast(getResources().getString(R.string.bW), 1);
        return;
      }
      i2 = localVerifyCheckRes.resultStatus;
      if (i2 != 1000)
        break label662;
      if (!"Q".equals(localVerifyCheckRes.getUserStatus()))
      {
        if ("T".equals(localVerifyCheckRes.getUserStatus()))
        {
          String str2 = getResources().getString(R.string.O);
          Object[] arrayOfObject2 = new Object[1];
          arrayOfObject2[0] = this.c;
          alert(null, String.format(str2, arrayOfObject2), getResources().getString(R.string.Q), new aq(this), getResources().getString(R.string.M), new ar(this, localVerifyCheckRes));
          return;
        }
        if ("TAOBAO_Q".equals(localVerifyCheckRes.getUserStatus()))
        {
          String str1 = getResources().getString(R.string.cO);
          Object[] arrayOfObject1 = new Object[1];
          arrayOfObject1[0] = this.c;
          alert(null, String.format(str1, arrayOfObject1), getResources().getString(R.string.Q), new as(this), getResources().getString(R.string.M), new at(this));
          return;
        }
      }
      b(30);
      return;
    }
    label662: 
    while (true)
    {
      label316: b(30);
      return;
      label493: 
      do
      {
        if (i2 == 1003)
        {
          b(30);
          return;
        }
        if (i2 == 1109)
        {
          if (this.g != null)
            this.g.a(false);
          toast(localVerifyCheckRes.memo, 1);
          return;
        }
        if (i2 == 1106)
        {
          if (this.g != null)
            this.g.a(true);
          toast(localVerifyCheckRes.memo, 1);
          return;
        }
        if (i2 == 1107)
        {
          if (this.g != null)
            this.g.a(false);
          toast(localVerifyCheckRes.memo, 1);
          return;
        }
        if (i2 == 1122)
        {
          if (this.g != null)
            this.g.a(false);
          toast(localVerifyCheckRes.memo, 1);
          return;
        }
        toast(localVerifyCheckRes.memo, 1);
        return;
        if ((paramInt == 2) && ((paramObject instanceof SendSmsCodeRes)))
        {
          SendSmsCodeRes localSendSmsCodeRes = (SendSmsCodeRes)paramObject;
          dismissProgressDialog();
          if (localSendSmsCodeRes == null)
            toast(getResources().getString(R.string.bW), 1);
          while (true)
          {
            this.g.b(false);
            return;
            int i1 = localSendSmsCodeRes.resultStatus;
            if (i1 == 1000)
            {
              if (this.g == null)
                break;
              this.g.a(true);
              this.g.a();
              return;
            }
            if (i1 == 1107)
              alert(null, localSendSmsCodeRes.memo, getResources().getString(R.string.cx), new al(this), null, null);
            else
              toast(localSendSmsCodeRes.memo, 1);
          }
        }
        toast(getResources().getString(R.string.bW), 1);
        return;
        if (i2 == 1124)
          break label316;
      }
      while (i2 != 1104);
    }
  }

  public final void a(Object paramObject, PwdHistoryClearCallBack paramPwdHistoryClearCallBack)
  {
    this.h = paramPwdHistoryClearCallBack;
    dismissProgressDialog();
    if ((paramObject == null) || (!(paramObject instanceof SetMobilePayPwdRes)))
    {
      toast(getResources().getString(R.string.bW), 1);
      return;
    }
    SetMobilePayPwdRes localSetMobilePayPwdRes = (SetMobilePayPwdRes)paramObject;
    int i1 = localSetMobilePayPwdRes.resultStatus;
    if (i1 == 1000)
    {
      alert(getResources().getString(R.string.cM), getResources().getString(R.string.cN), getResources().getString(R.string.cJ), new an(this), null, null);
      return;
    }
    if (i1 == 1103)
    {
      this.n = "";
      alert(null, localSetMobilePayPwdRes.memo, getResources().getString(R.string.Q), new ao(this), getResources().getString(R.string.M), new ap(this, localSetMobilePayPwdRes));
      return;
    }
    if (i1 == 1105)
    {
      toast(localSetMobilePayPwdRes.memo, 1);
      return;
    }
    toast(localSetMobilePayPwdRes.memo, 1);
    this.h.a();
  }

  public final void a(String paramString)
  {
    this.c = paramString;
  }

  public final String b()
  {
    return this.c;
  }

  public final void b(int paramInt)
  {
    try
    {
      a((Fragment)this.b.get(Integer.valueOf(paramInt)));
      return;
    }
    catch (Exception localException)
    {
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.j = new f();
    this.m = "down_input";
    this.l = false;
    c();
    Bundle localBundle = getIntent().getExtras();
    if ((localBundle == null) || (localBundle.getString("registerSource") == null))
      this.i = "registerFromCommon";
    do
    {
      b(20);
      return;
      this.i = localBundle.getString("registerSource");
      this.k = localBundle.getString("registerId");
      this.l = localBundle.getBoolean("registbindtype", false);
      if (("registerFromPack".equals(this.i)) || ("registerFromWap".equals(this.i)))
      {
        this.i = "registerFromPack";
        this.l = true;
        b(30);
        return;
      }
    }
    while (!"registerFromLogin".equals(this.i));
    this.c = localBundle.getString("registerMobileNum");
    this.i = "registerFromLogin";
    b(30);
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      if ((this.o != null) && ((this.o instanceof SetSimplePwdFragment_)) && (this.o.isVisible()))
      {
        if (((SetSimplePwdFragment_)this.o).e())
          return true;
        if ((("registerFromPack".equals(this.i)) || ("registerFromWap".equals(this.i))) && (getSupportFragmentManager().getBackStackEntryCount() == 0))
        {
          if (this.p)
          {
            localToast = SimpleToast.makeToast(this, R.string.ah, 0);
            localToast.setGravity(81, 0, 100);
            localToast.show();
            this.p = false;
            getWindow().getDecorView().postDelayed(new au(this), 5000L);
            return true;
          }
          AlipayApplication.getInstance().getMicroApplicationContext().exit();
        }
      }
      while ((this.o == null) || (!(this.o instanceof SmsCheckFragment_)) || (!this.o.isVisible()))
      {
        Toast localToast;
        c();
        return super.onKeyDown(paramInt, paramKeyEvent);
      }
      alert("", "校验码短信可能略有延迟，请稍等。", "不了", new am(this), getResources().getString(R.string.ac), null);
      return true;
    }
    c();
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.RegisterNewActivity
 * JD-Core Version:    0.6.2
 */