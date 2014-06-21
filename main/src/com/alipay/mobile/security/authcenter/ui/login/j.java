package com.alipay.mobile.security.authcenter.ui.login;

import com.alipay.mobile.commonui.widget.APCheckCodeGetter.CheckCodeGetCallback;
import com.alipay.mobile.security.authcenter.ui.x;

final class j
  implements APCheckCodeGetter.CheckCodeGetCallback
{
  j(BaseLoginFragment paramBaseLoginFragment)
  {
  }

  public final void onRefresh()
  {
    String str = "";
    if ("alipay".equals(this.a.p))
      str = this.a.s.stop();
    while (true)
    {
      this.a.b(str);
      return;
      if ("taobao".equals(this.a.p))
        str = this.a.s.getBundleName();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.login.j
 * JD-Core Version:    0.6.2
 */