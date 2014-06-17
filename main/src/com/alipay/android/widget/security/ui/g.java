package com.alipay.android.widget.security.ui;

import android.os.Bundle;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;

final class g
  implements Runnable
{
  private g(SecurityWidgetGroupAcitivity paramSecurityWidgetGroupAcitivity)
  {
  }

  public final void run()
  {
    if (this.a.e.isLogin());
    for (UserInfo localUserInfo = this.a.e.getUserInfo(); ; localUserInfo = this.a.e.queryLatelyLoginUser())
    {
      if (localUserInfo == null)
      {
        if (this.a.e.auth(new Bundle()))
          this.a.e.getUserInfo();
      }
      else
        SecurityWidgetGroupAcitivity.f(this.a);
      return;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.g
 * JD-Core Version:    0.6.2
 */