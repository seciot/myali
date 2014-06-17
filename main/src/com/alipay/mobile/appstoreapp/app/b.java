package com.alipay.mobile.appstoreapp.app;

import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.openplatform.service.AuthorizeCallback;

final class b
  implements AuthorizeCallback
{
  b(AppStoreApp paramAppStoreApp, String paramString)
  {
  }

  public final void onAuthFailed()
  {
    this.b.getMicroApplicationContext().Toast("授权失败。", 0);
    AppStoreApp.access$200(this.b, AppStoreApp.access$100(this.b, AppStoreApp.access$000(this.b), null, null));
  }

  public final void onAuthSuccess(String paramString1, String paramString2)
  {
    AppStoreApp.access$200(this.b, AppStoreApp.access$100(this.b, AppStoreApp.access$000(this.b), paramString1, paramString2));
  }

  public final void onNotNeedAuth()
  {
    new StringBuilder("open url:").append(this.a).toString();
    AppStoreApp.access$200(this.b, AppStoreApp.access$100(this.b, AppStoreApp.access$000(this.b), null, null));
  }

  public final void onUserCancel()
  {
    this.b.getMicroApplicationContext().Toast("您取消了本次授权。", 0);
    AppStoreApp.access$200(this.b, AppStoreApp.access$100(this.b, AppStoreApp.access$000(this.b), null, null));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.appstoreapp.app.b
 * JD-Core Version:    0.6.2
 */