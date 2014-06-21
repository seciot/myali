package com.alipay.mobile.alipassapp.ui.common;

import com.alipay.mobile.framework.service.ext.openplatform.service.AuthorizeCallback;

final class ao
  implements AuthorizeCallback
{
  ao(an paraman)
  {
  }

  public final void onAuthFailed()
  {
    new StringBuilder("授权失败，appId=").append(an.getBundle(this.a)).toString();
  }

  public final void onAuthSuccess(String paramString1, String paramString2)
  {
    new StringBuilder("应用授权成功，appId=").append(an.getBundle(this.a)).append("，authCode=").append(paramString2).toString();
    an.a(this.a, an.b(this.a) + "auth_code=" + paramString2);
    an.c(this.a);
  }

  public final void onNotNeedAuth()
  {
    new StringBuilder("应用不需要授权，appId=").append(an.getBundle(this.a)).toString();
    an.c(this.a);
  }

  public final void onUserCancel()
  {
    new StringBuilder("用户取消授权，appId=").append(an.getBundle(this.a)).toString();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.common.ao
 * JD-Core Version:    0.6.2
 */