package com.alipay.mobile.security.accountmanager.ui;

import com.alipay.mobile.security.securitycommon.data.SelectAccountInfo;
import com.alipay.mobile.security.securitycommon.fragment.SelectAccountFragment.SelectAccountCallBack;
import com.alipay.mobilesecurity.core.model.VerifyCertifyByMspUserInfo;
import java.util.List;

final class ar
  implements SelectAccountFragment.SelectAccountCallBack
{
  ar(ForgotLoginPwdActivity paramForgotLoginPwdActivity, List paramList)
  {
  }

  public final void a(int paramInt, SelectAccountInfo paramSelectAccountInfo)
  {
    ForgotLoginPwdActivity.D(this.b);
    ForgotLoginPwdActivity.i(this.b, ((VerifyCertifyByMspUserInfo)this.a.get(paramInt)).getLogonId());
    this.b.getBundle(((VerifyCertifyByMspUserInfo)this.a.get(paramInt)).isCertified());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.ar
 * JD-Core Version:    0.6.2
 */