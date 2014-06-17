package com.alipay.mobile.security.authcenter.ui;

import android.content.res.Resources;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.framework.app.ui.BaseFragmentActivity;
import com.alipay.mobile.framework.service.ext.security.PwdHistoryClearCallBack;
import com.alipay.mobile.security.authcenter.a.a;
import com.alipay.mobile.security.securitycommon.fragment.SetSimplePwdFragment.SetSimplePwdCallBack;
import com.alipay.mobileapp.biz.rpc.register.vo.SetMobilePayPwdRes;

final class aa
  implements SetSimplePwdFragment.SetSimplePwdCallBack
{
  aa(y paramy, String paramString)
  {
  }

  public final Object a(String paramString, PwdHistoryClearCallBack paramPwdHistoryClearCallBack)
  {
    String str = this.a;
    SetMobilePayPwdRes localSetMobilePayPwdRes = null;
    if (str != null);
    try
    {
      y.a(this.b, paramString);
      y.a(this.b).showProgressDialog(null, true, null);
      localSetMobilePayPwdRes = y.b(this.b).b(this.a, paramString, "");
      y.a(this.b).dismissProgressDialog();
      return localSetMobilePayPwdRes;
    }
    catch (RpcException localRpcException)
    {
      y.a(this.b).dismissProgressDialog();
      localRpcException.getMessage();
      throw localRpcException;
    }
  }

  public final void a()
  {
  }

  public final void a(Object paramObject, PwdHistoryClearCallBack paramPwdHistoryClearCallBack)
  {
    if ((y.a(this.b) == null) || (y.a(this.b).isFinishing()));
    while ((paramObject == null) || (!(paramObject instanceof SetMobilePayPwdRes)))
      return;
    SetMobilePayPwdRes localSetMobilePayPwdRes = (SetMobilePayPwdRes)paramObject;
    if ((1000 == localSetMobilePayPwdRes.resultStatus) || (1103 == localSetMobilePayPwdRes.resultStatus))
    {
      y.a(this.b).alert(y.a(this.b).getResources().getString(R.string.cM), y.a(this.b).getResources().getString(R.string.cN), "我知道了", new ab(this), null, null);
      return;
    }
    y.a(this.b).alert(null, localSetMobilePayPwdRes.memo, "确定", new ac(this, paramPwdHistoryClearCallBack), null, null);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.aa
 * JD-Core Version:    0.6.2
 */