package com.alipay.android.widget.security.ui;

import android.content.res.Resources;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.framework.service.ext.security.PwdHistoryClearCallBack;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.security.accountmanager.a.c;
import com.alipay.mobile.security.securitycommon.SecurityCommonDialogUtil;
import com.alipay.mobile.security.securitycommon.fragment.SetSimplePwdFragment.SetSimplePwdCallBack;
import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;

class ModifySimplePwdActivity$4
  implements SetSimplePwdFragment.SetSimplePwdCallBack
{
  ModifySimplePwdActivity$4(ModifySimplePwdActivity paramModifySimplePwdActivity)
  {
  }

  public final Object a(String paramString, PwdHistoryClearCallBack paramPwdHistoryClearCallBack)
  {
    UserInfo localUserInfo = ModifySimplePwdActivity.a(this.a);
    MobileSecurityResult localMobileSecurityResult = null;
    if (localUserInfo != null);
    try
    {
      this.a.showProgressDialog(null, true, null);
      localMobileSecurityResult = ModifySimplePwdActivity.b(this.a).c(ModifySimplePwdActivity.a(this.a).getLogonId(), paramString, ModifySimplePwdActivity.c(this.a));
      this.a.dismissProgressDialog();
      return localMobileSecurityResult;
    }
    catch (RpcException localRpcException)
    {
      this.a.dismissProgressDialog();
      localRpcException.getMessage();
      throw localRpcException;
    }
  }

  public final void a()
  {
  }

  public final void a(Object paramObject, PwdHistoryClearCallBack paramPwdHistoryClearCallBack)
  {
    if ((this.a == null) || (this.a.isFinishing()))
      return;
    if ((paramObject != null) && ((paramObject instanceof MobileSecurityResult)))
    {
      MobileSecurityResult localMobileSecurityResult = (MobileSecurityResult)paramObject;
      if (localMobileSecurityResult.isSuccess())
      {
        this.a.alert(this.a.getResources().getString(R.string.cM), this.a.getResources().getString(R.string.cN), "我知道了", new ModifySimplePwdActivity.4.1(this), null, null);
        return;
      }
      if ("700".equalsIgnoreCase(localMobileSecurityResult.getResultCode()))
      {
        SecurityCommonDialogUtil.a(this.a, ModifySimplePwdActivity.f(this.a), localMobileSecurityResult);
        return;
      }
      this.a.alert(null, localMobileSecurityResult.getMessage(), "确定", new ModifySimplePwdActivity.4.2(this, paramPwdHistoryClearCallBack), null, null);
      return;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.ModifySimplePwdActivity.4
 * JD-Core Version:    0.6.2
 */