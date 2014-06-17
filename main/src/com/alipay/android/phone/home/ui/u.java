package com.alipay.android.phone.home.ui;

import com.alipay.android.phone.home.manager.HomeAppsItemAdapter;
import com.alipay.mobile.framework.service.ext.openplatform.InstallStatus;
import com.alipay.mobile.framework.service.ext.openplatform.app.App;

final class u
  implements Runnable
{
  u(HomeFragment paramHomeFragment, InstallStatus paramInstallStatus)
  {
  }

  public final void run()
  {
    HomeFragment.access$300(this.b).c(this.a.getApp());
    if ((HomeFragment.c != null) && (HomeFragment.c.getAppId().equals(this.a.getApp().getAppId())))
    {
      this.a.getApp().authAndLaunch(null);
      HomeFragment.c = null;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.ui.u
 * JD-Core Version:    0.6.2
 */