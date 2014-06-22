package com.alipay.mobile.deviceAuthorization.ui;

import com.alipay.android.widget.security.a.e;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.framework.service.ext.security.SmsCheckCallBack;
import com.alipay.mobile.framework.service.ext.security.SmsCheckResultCallBack;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobilesecurity.core.model.mainpage.password.SendSmsResp;
import com.alipay.mobilesecurity.core.model.mainpage.password.VerifyAuthCodeResp;

final class at
  implements SmsCheckCallBack
{
  at(SmsCheckActivity paramSmsCheckActivity)
  {
  }

  public final Object a(SmsCheckResultCallBack paramSmsCheckResultCallBack)
  {
    String str = SmsCheckActivity.getBundle(this.a).getLogonId();
    SendSmsResp localSendSmsResp = null;
    if (str != null);
    try
    {
      this.a.showProgressDialog(null, true, null);
      localSendSmsResp = SmsCheckActivity.dexopt(this.a).getBundle(SmsCheckActivity.getBundle(this.a).getLogonId());
      this.a.dismissProgressDialog();
      return localSendSmsResp;
    }
    catch (RpcException localRpcException)
    {
      this.a.dismissProgressDialog();
      SmsCheckActivity.getBundleByComponentName(this.a);
      localRpcException.getMessage();
      throw localRpcException;
    }
  }

  public final Object a(String paramString1, String paramString2, SmsCheckResultCallBack paramSmsCheckResultCallBack)
  {
    String str = SmsCheckActivity.getBundle(this.a).getLogonId();
    VerifyAuthCodeResp localVerifyAuthCodeResp = null;
    if (str != null);
    try
    {
      SmsCheckActivity.v(this.a, paramString2);
      this.a.showProgressDialog(null, true, null);
      localVerifyAuthCodeResp = SmsCheckActivity.dexopt(this.a).a(SmsCheckActivity.getBundle(this.a).getLogonId(), SmsCheckActivity.getBundle(this.a).getMobileNumber(), paramString1, SmsCheckActivity.d(this.a));
      this.a.dismissProgressDialog();
      return localVerifyAuthCodeResp;
    }
    catch (RpcException localRpcException)
    {
      this.a.dismissProgressDialog();
      SmsCheckActivity.getBundleByComponentName(this.a);
      localRpcException.getMessage();
      throw localRpcException;
    }
  }

  public final void a(Object paramObject, int paramInt)
  {
    if ((this.a == null) || (this.a.isFinishing()))
      SmsCheckActivity.getBundleByComponentName(this.a);
    VerifyAuthCodeResp localVerifyAuthCodeResp1;
    do
    {
      do
      {
        do
        {
          do
          {
            return;
            if (paramInt != 1)
              break;
            SmsCheckActivity.getBundleByComponentName(this.a);
          }
          while ((paramObject == null) || (!(paramObject instanceof VerifyAuthCodeResp)));
          VerifyAuthCodeResp localVerifyAuthCodeResp2 = (VerifyAuthCodeResp)paramObject;
          if (localVerifyAuthCodeResp2.success)
          {
            this.a.setResult(6001);
            this.a.finish();
            return;
          }
          this.a.setResult(16001);
          this.a.toast(localVerifyAuthCodeResp2.message, 0);
          return;
        }
        while (paramInt != 2);
        SmsCheckActivity.getBundleByComponentName(this.a);
      }
      while ((paramObject == null) || (!(paramObject instanceof VerifyAuthCodeResp)));
      localVerifyAuthCodeResp1 = (VerifyAuthCodeResp)paramObject;
    }
    while (localVerifyAuthCodeResp1.success);
    if ("1107".equalsIgnoreCase(localVerifyAuthCodeResp1.resultCode))
    {
      this.a.alert(null, localVerifyAuthCodeResp1.message, "确定", new au(this), null, null);
      return;
    }
    this.a.toast(localVerifyAuthCodeResp1.message, 0);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.deviceAuthorization.ui.at
 * JD-Core Version:    0.6.2
 */