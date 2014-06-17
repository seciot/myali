package com.alipay.mobile.security.authcenter.ui;

import com.alipay.mobile.login.bean.LoginInfo;
import com.alipay.mobile.security.securitycommon.data.SelectAccountInfo;
import com.alipay.mobile.security.securitycommon.fragment.SelectAccountFragment.SelectAccountCallBack;

final class z
  implements SelectAccountFragment.SelectAccountCallBack
{
  z(y paramy)
  {
  }

  public final void a(int paramInt, SelectAccountInfo paramSelectAccountInfo)
  {
    LoginInfo localLoginInfo = new LoginInfo();
    localLoginInfo.a(paramSelectAccountInfo.a());
    localLoginInfo.a(false);
    localLoginInfo.b(false);
    if (paramInt == -1)
    {
      this.a.b(localLoginInfo);
      return;
    }
    localLoginInfo.d("T");
    this.a.a(localLoginInfo);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.z
 * JD-Core Version:    0.6.2
 */