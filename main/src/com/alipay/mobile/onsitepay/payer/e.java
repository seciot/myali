package com.alipay.mobile.onsitepay.payer;

import android.os.Handler;
import com.alipay.mobile.framework.service.ext.security.AuthService;

final class e
  implements Runnable
{
  e(BasicFacePayerActivity paramBasicFacePayerActivity, AuthService paramAuthService, Handler paramHandler)
  {
  }

  public final void run()
  {
    this.c.f = true;
    this.a.auth();
    if (this.a.isLogin())
      this.b.post(new f(this));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payer.e
 * JD-Core Version:    0.6.2
 */