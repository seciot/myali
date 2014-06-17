package com.alipay.mobile.security.accountmanager.service;

import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobilesecurity.taobao.sso.util.TaobaoSsoLoginUtils;
import com.taobao.android.ssologin.a;

final class c
  implements Runnable
{
  c(LogoutServiceImpl paramLogoutServiceImpl)
  {
  }

  public final void run()
  {
    try
    {
      if (TaobaoSsoLoginUtils.parseTaobaoSsoToken(AlipayApplication.getInstance()))
        new a(new d(this), AlipayApplication.getInstance()).a(TaobaoSsoLoginUtils.getParsedNickName());
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.service.c
 * JD-Core Version:    0.6.2
 */