package com.alipay.android.widgets.asset;

import android.os.Bundle;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.AppLoadException;
import com.alipay.mobile.framework.service.ext.security.AuthService;

final class b
  implements Runnable
{
  b(AssetWidgetGroup paramAssetWidgetGroup, AuthService paramAuthService)
  {
  }

  public final void run()
  {
    if (!this.a.auth());
    try
    {
      Bundle localBundle = new Bundle();
      localBundle.putString("actionType", "20000002");
      AssetWidgetGroup.a(this.b).startApp("20000004", "20000001", localBundle);
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
      AssetWidgetGroup.b();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widgets.asset.b
 * JD-Core Version:    0.6.2
 */