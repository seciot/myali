package com.alipay.mobile.framework.service.ext.openplatform.app;

import android.os.Bundle;
import com.alipay.mobile.framework.service.ext.openplatform.service.AuthorizeCallback;
import com.alipay.mobile.framework.service.ext.security.AuthService;

final class e
  implements AuthorizeCallback
{
  e(App paramApp, Bundle paramBundle)
  {
  }

  public final void onAuthFailed()
  {
    this.b.showToastCenter("支付宝账号登录异常");
  }

  public final void onAuthSuccess(String paramString1, String paramString2)
  {
    this.b.launchAppWithAuthCode(paramString1, paramString2, this.a);
  }

  public final void onNotNeedAuth()
  {
    if (this.b.isAlipayApp())
      this.b.launchAppWithAuthCode(null, null, this.a);
    do
    {
      return;
      if (App.access$400(this.b).isLogin())
      {
        this.b.launchAppWithAuthCode(null, null, this.a);
        return;
      }
    }
    while (!App.access$400(this.b).auth());
    this.b.launchAppWithAuthCode(null, null, this.a);
  }

  public final void onUserCancel()
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.openplatform.app.e
 * JD-Core Version:    0.6.2
 */