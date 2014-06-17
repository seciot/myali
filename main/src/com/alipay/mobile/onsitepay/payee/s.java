package com.alipay.mobile.onsitepay.payee;

import android.os.Handler;
import com.alipay.mobile.framework.service.ext.security.AuthService;

final class s
  implements Runnable
{
  s(FacePayeeApp paramFacePayeeApp, AuthService paramAuthService, Handler paramHandler)
  {
  }

  public final void run()
  {
    this.a.auth();
    if (this.a.isLogin())
      this.b.post(new t(this));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payee.s
 * JD-Core Version:    0.6.2
 */