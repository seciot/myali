package com.alipay.android.phone.home.ui;

import com.alipay.android.phone.home.manager.AppCenterItemAdapter;
import com.alipay.mobile.framework.service.ext.openplatform.InstallStatus;
import com.alipay.mobile.framework.service.ext.openplatform.app.App;

final class b
  implements Runnable
{
  b(AppsCenterFragment paramAppsCenterFragment, InstallStatus paramInstallStatus)
  {
  }

  public final void run()
  {
    AppsCenterFragment.access$000(this.b).getBundleByComponentName(this.a.getApp());
    if ((AppsCenterFragment.b != null) && (AppsCenterFragment.b.getAppId().equals(this.a.getApp().getAppId())))
    {
      this.a.getApp().authAndLaunch(null);
      AppsCenterFragment.b = null;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.ui.b
 * JD-Core Version:    0.6.2
 */