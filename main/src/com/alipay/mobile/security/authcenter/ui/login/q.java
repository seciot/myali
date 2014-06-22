package com.alipay.mobile.security.authcenter.ui.login;

import com.alipay.mobile.framework.service.ext.security.GestureCallBack;

final class q
  implements GestureCallBack
{
  q(BaseLoginFragment paramBaseLoginFragment, String paramString, boolean paramBoolean)
  {
  }

  public final void onGestureResult(boolean paramBoolean)
  {
    if ("registbindToFundBao".equals(this.a))
      this.c.getBundleByComponentName(this.b);
    do
      while (true)
      {
        BaseLoginFragment.b(this.c);
        return;
        if (!"registBindToCard".equals(this.a))
          break;
        this.c.b(this.b);
      }
    while (!this.b);
    BaseLoginFragment.getBundle(this.c);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.login.q
 * JD-Core Version:    0.6.2
 */