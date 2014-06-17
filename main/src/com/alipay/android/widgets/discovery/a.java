package com.alipay.android.widgets.discovery;

import android.os.Bundle;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.AppLoadException;
import com.alipay.mobile.framework.service.ext.security.AuthService;

final class a
  implements Runnable
{
  a(DiscoveryWidgetGroup paramDiscoveryWidgetGroup, AuthService paramAuthService)
  {
  }

  public final void run()
  {
    if (!this.a.auth());
    try
    {
      Bundle localBundle = new Bundle();
      localBundle.putString("actionType", "20000002");
      DiscoveryWidgetGroup.access$000(this.b).startApp("20000061", "20000001", localBundle);
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
      DiscoveryWidgetGroup.access$100(this.b);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widgets.discovery.a
 * JD-Core Version:    0.6.2
 */