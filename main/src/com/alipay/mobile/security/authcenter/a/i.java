package com.alipay.mobile.security.authcenter.a;

import android.os.Bundle;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.service.ext.security.LoginService;
import com.alipay.mobile.framework.service.ext.security.bean.UserLoginResultBiz;
import com.alipay.mobile.framework.service.ext.security.domain.WapLoginToken;

public final class i extends d
{
  public i(ActivityApplication paramActivityApplication, Bundle paramBundle)
  {
    this.b = paramActivityApplication;
    this.a = AlipayApplication.getInstance();
    this.c = paramBundle;
  }

  public final UserLoginResultBiz a()
  {
    if (this.c == null)
      return null;
    WapLoginToken localWapLoginToken = new WapLoginToken();
    localWapLoginToken.setInnerToken(this.c.getString("token"));
    String str = this.c.getString("tokenSource");
    if (str == null)
      str = "tokenByWap";
    localWapLoginToken.setSource(str);
    return ((LoginService)this.b.getMicroApplicationContext().getExtServiceByInterface(LoginService.class.getName())).wapTokenLogin(localWapLoginToken);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.a.i
 * JD-Core Version:    0.6.2
 */