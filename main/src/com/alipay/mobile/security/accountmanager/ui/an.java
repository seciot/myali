package com.alipay.mobile.security.accountmanager.ui;

import android.content.res.Resources;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.framework.service.ext.security.PwdHistoryClearCallBack;
import com.alipay.mobile.security.accountmanager.a.c;
import com.alipay.mobile.security.securitycommon.SecurityCommonDialogUtil;
import com.alipay.mobile.security.securitycommon.fragment.SetSimplePwdFragment.SetSimplePwdCallBack;
import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;

final class an
  implements SetSimplePwdFragment.SetSimplePwdCallBack
{
  an(ForgotLoginPwdActivity paramForgotLoginPwdActivity, String paramString)
  {
  }

  public final Object a(String paramString, PwdHistoryClearCallBack paramPwdHistoryClearCallBack)
  {
    try
    {
      ForgotLoginPwdActivity.g(this.b, paramString);
      this.b.showProgressDialog(null, true, null);
      MobileSecurityResult localMobileSecurityResult = ForgotLoginPwdActivity.w(this.b).a(ForgotLoginPwdActivity.u(this.b), paramString, this.a, ForgotLoginPwdActivity.v(this.b));
      this.b.dismissProgressDialog();
      return localMobileSecurityResult;
    }
    catch (RpcException localRpcException)
    {
      new StringBuilder("{[info=verifySimpleCode],[msg=").append(localRpcException.getMessage()).append("]}").toString();
      this.b.dismissProgressDialog();
      throw localRpcException;
    }
  }

  public final void a()
  {
  }

  public final void a(Object paramObject, PwdHistoryClearCallBack paramPwdHistoryClearCallBack)
  {
    if ((this.b == null) || (this.b.isFinishing()));
    while ((paramObject == null) || (!(paramObject instanceof MobileSecurityResult)))
      return;
    new StringBuilder("scene code: ").append(this.a).toString();
    MobileSecurityResult localMobileSecurityResult = (MobileSecurityResult)paramObject;
    if (localMobileSecurityResult.isSuccess())
    {
      this.b.alert(this.b.getResources().getString(R.string.cM), this.b.getResources().getString(R.string.cN), "我知道了", new ao(this), null, null);
      return;
    }
    if ("700".equalsIgnoreCase(localMobileSecurityResult.getResultCode()))
    {
      SecurityCommonDialogUtil.e(this.b, ForgotLoginPwdActivity.C(this.b), localMobileSecurityResult);
      return;
    }
    this.b.alert(null, localMobileSecurityResult.getMessage(), "确定", new ap(this, paramPwdHistoryClearCallBack), null, null);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.an
 * JD-Core Version:    0.6.2
 */