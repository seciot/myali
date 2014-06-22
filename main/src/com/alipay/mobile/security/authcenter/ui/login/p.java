package com.alipay.mobile.security.authcenter.ui.login;

import android.net.Uri;
import com.alipay.mobile.common.utils.CacheSet;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.service.common.SchemeService;
import com.alipay.mobile.framework.service.ext.security.GestureCallBack;

final class p
  implements GestureCallBack
{
  p(BaseLoginFragment paramBaseLoginFragment, boolean paramBoolean, Uri paramUri)
  {
  }

  public final void onGestureResult(boolean paramBoolean)
  {
    if (this.a)
    {
      BaseLoginFragment.getBundle(this.c);
      return;
    }
    BaseLoginFragment.getBundleByComponentName(this.c).process(this.b);
    BaseLoginFragment.dexopt(this.c);
    CacheSet.getInstance(AlipayApplication.getInstance()).putString("isValidScheme", "false");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.login.p
 * JD-Core Version:    0.6.2
 */