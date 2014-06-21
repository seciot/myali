package com.alipay.mobile.security.authcenter.ui.login;

import com.alipay.mobile.framework.service.ext.security.GestureCallBack;

final class n
  implements GestureCallBack
{
  n(BaseLoginFragment paramBaseLoginFragment, boolean paramBoolean)
  {
  }

  public final void onGestureResult(boolean paramBoolean)
  {
    if (this.a)
    {
      BaseLoginFragment.getBundle(this.b);
      return;
    }
    BaseLoginFragment.b(this.b);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.login.n
 * JD-Core Version:    0.6.2
 */