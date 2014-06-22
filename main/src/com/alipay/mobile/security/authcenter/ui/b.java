package com.alipay.mobile.security.authcenter.ui;

import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.framework.service.ext.security.SmsCheckCallBack;
import com.alipay.mobile.framework.service.ext.security.SmsCheckResultCallBack;
import com.alipay.mobile.security.authcenter.a.a;
import com.alipay.mobileapp.biz.rpc.smscode.SmsCodeRes;

final class b
  implements SmsCheckCallBack
{
  b(CompletePhoneUserInfoActivity paramCompletePhoneUserInfoActivity)
  {
  }

  public final Object a(SmsCheckResultCallBack paramSmsCheckResultCallBack)
  {
    String str = CompletePhoneUserInfoActivity.getBundle(this.a);
    SmsCodeRes localSmsCodeRes = null;
    if (str != null);
    try
    {
      this.a.showProgressDialog(null, true, null);
      localSmsCodeRes = CompletePhoneUserInfoActivity.dexopt(this.a).getBundle(CompletePhoneUserInfoActivity.getBundle(this.a));
      this.a.dismissProgressDialog();
      return localSmsCodeRes;
    }
    catch (RpcException localRpcException)
    {
      this.a.dismissProgressDialog();
      localRpcException.getMessage();
      throw localRpcException;
    }
  }

  public final Object a(String paramString1, String paramString2, SmsCheckResultCallBack paramSmsCheckResultCallBack)
  {
    String str = CompletePhoneUserInfoActivity.getBundle(this.a);
    SmsCodeRes localSmsCodeRes = null;
    if (str != null);
    try
    {
      CompletePhoneUserInfoActivity.v(this.a, paramString2);
      this.a.showProgressDialog(null, true, null);
      localSmsCodeRes = CompletePhoneUserInfoActivity.dexopt(this.a).e(CompletePhoneUserInfoActivity.getBundle(this.a), paramString1, CompletePhoneUserInfoActivity.getBundleByComponentName(this.a));
      this.a.dismissProgressDialog();
      return localSmsCodeRes;
    }
    catch (RpcException localRpcException)
    {
      this.a.dismissProgressDialog();
      localRpcException.getMessage();
      throw localRpcException;
    }
  }

  public final void a(Object paramObject, int paramInt)
  {
    if ((this.a == null) || (this.a.isFinishing()));
    SmsCodeRes localSmsCodeRes1;
    do
    {
      do
      {
        do
        {
          return;
          if (paramInt != 1)
            break;
        }
        while ((paramObject == null) || (!(paramObject instanceof SmsCodeRes)));
        SmsCodeRes localSmsCodeRes2 = (SmsCodeRes)paramObject;
        if (localSmsCodeRes2.succ)
        {
          this.a.getBundle(CompletePhoneUserInfoActivity.FragId.SetPwd);
          return;
        }
        this.a.toast(localSmsCodeRes2.msg, 0);
        return;
      }
      while ((paramInt != 2) || (paramObject == null) || (!(paramObject instanceof SmsCodeRes)));
      localSmsCodeRes1 = (SmsCodeRes)paramObject;
    }
    while (localSmsCodeRes1.succ);
    if ("1107".equalsIgnoreCase(localSmsCodeRes1.code))
    {
      this.a.alert(null, localSmsCodeRes1.msg, "确定", new c(this), null, null);
      return;
    }
    this.a.toast(localSmsCodeRes1.msg, 0);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.b
 * JD-Core Version:    0.6.2
 */