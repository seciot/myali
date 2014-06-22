package com.alipay.mobile.security.authcenter.ui;

import android.content.res.Resources;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.framework.service.ext.security.PwdHistoryClearCallBack;
import com.alipay.mobile.security.authcenter.a.a;
import com.alipay.mobile.security.securitycommon.fragment.SetSimplePwdFragment.SetSimplePwdCallBack;
import com.alipay.mobileapp.biz.rpc.register.vo.SetMobilePayPwdRes;

final class d
  implements SetSimplePwdFragment.SetSimplePwdCallBack
{
  d(CompletePhoneUserInfoActivity paramCompletePhoneUserInfoActivity)
  {
  }

  public final Object a(String paramString, PwdHistoryClearCallBack paramPwdHistoryClearCallBack)
  {
    String str = CompletePhoneUserInfoActivity.getBundle(this.a);
    SetMobilePayPwdRes localSetMobilePayPwdRes = null;
    if (str != null);
    try
    {
      CompletePhoneUserInfoActivity.d(this.a, paramString);
      this.a.showProgressDialog(null, true, null);
      localSetMobilePayPwdRes = CompletePhoneUserInfoActivity.dexopt(this.a).b(CompletePhoneUserInfoActivity.getBundle(this.a), paramString, CompletePhoneUserInfoActivity.getBundleByComponentName(this.a));
      this.a.dismissProgressDialog();
      return localSetMobilePayPwdRes;
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
    if ((paramObject != null) && ((paramObject instanceof SetMobilePayPwdRes)))
    {
      SetMobilePayPwdRes localSetMobilePayPwdRes = (SetMobilePayPwdRes)paramObject;
      if (1000 == localSetMobilePayPwdRes.resultStatus)
      {
        this.a.alert(this.a.getResources().getString(R.string.cM), this.a.getResources().getString(R.string.cN), "我知道了", new e(this), null, null);
        return;
      }
      if (1103 == localSetMobilePayPwdRes.resultStatus)
      {
        this.a.alert(null, localSetMobilePayPwdRes.memo, "确定", new f(this), null, null);
        return;
      }
      this.a.alert(null, localSetMobilePayPwdRes.memo, "确定", new g(this, paramPwdHistoryClearCallBack), null, null);
      return;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.d
 * JD-Core Version:    0.6.2
 */