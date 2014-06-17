package com.alipay.mobile.appstoreapp.ui;

import android.app.Activity;
import com.alipay.mobile.framework.service.ext.openplatform.service.AuthorizeCallback;

final class m
  implements AuthorizeCallback
{
  m(AppLaunchFromShortcutActivityImpl paramAppLaunchFromShortcutActivityImpl)
  {
  }

  public final void onAuthFailed()
  {
    AppLaunchFromShortcutActivityImpl.access$400(this.a, AppLaunchFromShortcutActivityImpl.access$100(this.a).getString(AppLaunchFromShortcutActivityImpl.access$300(this.a, "string", "auth_fail")));
    AppLaunchFromShortcutActivityImpl.access$200(this.a, "", -101);
  }

  public final void onAuthSuccess(String paramString1, String paramString2)
  {
    AppLaunchFromShortcutActivityImpl.access$200(this.a, paramString2, 1000);
  }

  public final void onNotNeedAuth()
  {
    AppLaunchFromShortcutActivityImpl.access$200(this.a, "", 100);
  }

  public final void onUserCancel()
  {
    AppLaunchFromShortcutActivityImpl.access$100(this.a).finish();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.appstoreapp.ui.m
 * JD-Core Version:    0.6.2
 */