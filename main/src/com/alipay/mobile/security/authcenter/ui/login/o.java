package com.alipay.mobile.security.authcenter.ui.login;

import android.os.Bundle;
import com.alipay.mobile.framework.service.ext.security.GestureCallBack;
import com.alipay.mobile.framework.service.ext.security.GestureService;

final class o
  implements Runnable
{
  o(BaseLoginFragment paramBaseLoginFragment, GestureService paramGestureService, Bundle paramBundle, GestureCallBack paramGestureCallBack)
  {
  }

  public final void run()
  {
    this.a.setGesture(this.b, this.c);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.login.o
 * JD-Core Version:    0.6.2
 */