package com.alipay.mobile.security.accountmanager.service;

import android.support.v4.content.LocalBroadcastManager;
import com.alipay.mobile.framework.MicroApplicationContext;

final class e
  implements Runnable
{
  String a = null;

  public e(LogoutServiceImpl paramLogoutServiceImpl, String paramString)
  {
    this.a = paramString;
  }

  public final void run()
  {
    this.b.b = LocalBroadcastManager.getInstance(this.b.getMicroApplicationContext().getApplicationContext());
    LogoutServiceImpl.access$000(this.b, this.a);
    LogoutServiceImpl.access$100(this.b);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.service.e
 * JD-Core Version:    0.6.2
 */