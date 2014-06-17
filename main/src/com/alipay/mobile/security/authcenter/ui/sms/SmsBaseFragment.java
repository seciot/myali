package com.alipay.mobile.security.authcenter.ui.sms;

import android.app.Activity;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.framework.app.ui.BaseFragmentActivity;
import com.alipay.mobile.framework.service.ext.security.AutoReadSmsCheckCodeCallBack;
import com.alipay.mobile.security.authcenter.a.e;
import com.alipay.mobile.security.authcenter.ui.SecurityBaseFuncFragment;
import com.alipay.mobile.security.securitycommon.AutoReadSmsCheckCode;
import com.alipay.mobileapp.biz.rpc.smscode.SmsCodeRes;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EFragment;
import com.googlecode.androidannotations.annotations.UiThread;

@EFragment
public abstract class SmsBaseFragment extends SecurityBaseFuncFragment
  implements AutoReadSmsCheckCodeCallBack
{
  protected e g;
  protected AutoReadSmsCheckCode h;
  protected String i;

  public void OnAutoReadSms(String paramString)
  {
    this.i = paramString;
  }

  @UiThread
  protected abstract void a(SmsCodeRes paramSmsCodeRes);

  @Background
  void d(String paramString)
  {
    try
    {
      ((BaseFragmentActivity)getActivity()).showProgressDialog("", false, null);
      SmsCodeRes localSmsCodeRes = this.g.a(paramString);
      ((BaseFragmentActivity)getActivity()).dismissProgressDialog();
      a(localSmsCodeRes);
      e();
      return;
    }
    catch (RpcException localRpcException)
    {
      new StringBuilder().append(localRpcException.getMessage()).toString();
      ((BaseFragmentActivity)getActivity()).dismissProgressDialog();
      throw localRpcException;
    }
  }

  protected final void e()
  {
    this.h.dispose();
    this.h.readsms("(\\d{4,6})", 1, Long.valueOf(System.currentTimeMillis()), 60, "", new String[] { "95188" });
  }

  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    this.g = new e();
    this.h = new AutoReadSmsCheckCode(null, this);
  }

  public void onDestroy()
  {
    super.onDestroy();
    this.h.dispose();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.sms.SmsBaseFragment
 * JD-Core Version:    0.6.2
 */