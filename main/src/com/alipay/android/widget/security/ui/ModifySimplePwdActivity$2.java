package com.alipay.android.widget.security.ui;

import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.framework.service.ext.security.SmsCheckCallBack;
import com.alipay.mobile.framework.service.ext.security.SmsCheckResultCallBack;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.security.accountmanager.a.c;
import com.alipay.mobilesecurity.core.model.mainpage.password.PreCheckAndSendSmsResp;
import com.alipay.mobilesecurity.core.model.mainpage.password.VerifySmsAndUserStatusResp;

class ModifySimplePwdActivity$2
  implements SmsCheckCallBack
{
  ModifySimplePwdActivity$2(ModifySimplePwdActivity paramModifySimplePwdActivity)
  {
  }

  public final Object a(SmsCheckResultCallBack paramSmsCheckResultCallBack)
  {
    UserInfo localUserInfo = ModifySimplePwdActivity.a(this.a);
    PreCheckAndSendSmsResp localPreCheckAndSendSmsResp = null;
    if (localUserInfo != null);
    try
    {
      this.a.showProgressDialog(null, true, null);
      localPreCheckAndSendSmsResp = ModifySimplePwdActivity.b(this.a).a(ModifySimplePwdActivity.a(this.a).getLogonId(), "LOGIN");
      this.a.dismissProgressDialog();
      return localPreCheckAndSendSmsResp;
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
    UserInfo localUserInfo = ModifySimplePwdActivity.a(this.a);
    VerifySmsAndUserStatusResp localVerifySmsAndUserStatusResp = null;
    if (localUserInfo != null);
    try
    {
      ModifySimplePwdActivity.a(this.a, paramString2);
      this.a.showProgressDialog(null, true, null);
      localVerifySmsAndUserStatusResp = ModifySimplePwdActivity.b(this.a).b(ModifySimplePwdActivity.a(this.a).getLogonId(), paramString1, ModifySimplePwdActivity.c(this.a));
      this.a.dismissProgressDialog();
      return localVerifySmsAndUserStatusResp;
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
    PreCheckAndSendSmsResp localPreCheckAndSendSmsResp;
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
        while ((paramObject == null) || (!(paramObject instanceof VerifySmsAndUserStatusResp)));
        VerifySmsAndUserStatusResp localVerifySmsAndUserStatusResp = (VerifySmsAndUserStatusResp)paramObject;
        if (localVerifySmsAndUserStatusResp.isSuccess())
        {
          if ("5310".equalsIgnoreCase(localVerifySmsAndUserStatusResp.getResultCode()))
          {
            this.a.a(ModifySimplePwdActivity.FragId.SetPwd);
            return;
          }
          if ("5313".equalsIgnoreCase(localVerifySmsAndUserStatusResp.getResultCode()))
          {
            this.a.a(ModifySimplePwdActivity.FragId.CheckId);
            return;
          }
          new StringBuilder("scene code: ").append(localVerifySmsAndUserStatusResp.getResultCode()).toString();
          this.a.toast("系统异常，请稍后再试。", 0);
          return;
        }
        this.a.toast(localVerifySmsAndUserStatusResp.getMessage(), 0);
        return;
      }
      while ((paramInt != 2) || (paramObject == null) || (!(paramObject instanceof PreCheckAndSendSmsResp)));
      localPreCheckAndSendSmsResp = (PreCheckAndSendSmsResp)paramObject;
    }
    while (localPreCheckAndSendSmsResp.isSuccess());
    if ("5201".equalsIgnoreCase(localPreCheckAndSendSmsResp.getResultCode()))
    {
      this.a.alert(null, localPreCheckAndSendSmsResp.getMessage(), "确定", new ModifySimplePwdActivity.2.1(this), null, null);
      return;
    }
    this.a.toast(localPreCheckAndSendSmsResp.getMessage(), 0);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.ModifySimplePwdActivity.2
 * JD-Core Version:    0.6.2
 */