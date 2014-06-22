package com.alipay.android.widget.security.ui;

import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.security.accountmanager.a.c;
import com.alipay.mobile.security.securitycommon.fragment.CheckUserIdFragment.SetIdCallBack;
import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;

class ModifySimplePwdActivity$3
  implements CheckUserIdFragment.SetIdCallBack
{
  ModifySimplePwdActivity$3(ModifySimplePwdActivity paramModifySimplePwdActivity)
  {
  }

  public final Object a(String paramString)
  {
    UserInfo localUserInfo = ModifySimplePwdActivity.getBundle(this.a);
    MobileSecurityResult localMobileSecurityResult = null;
    if (localUserInfo != null);
    try
    {
      this.a.showProgressDialog(null, true, null);
      localMobileSecurityResult = ModifySimplePwdActivity.dexopt(this.a).d(ModifySimplePwdActivity.getBundle(this.a).getLogonId(), paramString);
      this.a.dismissProgressDialog();
      ModifySimplePwdActivity.d(this.a, paramString);
      return localMobileSecurityResult;
    }
    catch (RpcException localRpcException)
    {
      this.a.dismissProgressDialog();
      localRpcException.getMessage();
      throw localRpcException;
    }
  }

  public final void a(Object paramObject)
  {
    if ((this.a == null) || (this.a.isFinishing()))
      return;
    if ((paramObject != null) && ((paramObject instanceof MobileSecurityResult)))
    {
      MobileSecurityResult localMobileSecurityResult = (MobileSecurityResult)paramObject;
      if (localMobileSecurityResult.isSuccess())
      {
        this.a.getBundle(ModifySimplePwdActivity.FragId.SetPwd);
        return;
      }
      this.a.toast(localMobileSecurityResult.getMessage(), 0);
      return;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.ModifySimplePwdActivity.3
 * JD-Core Version:    0.6.2
 */