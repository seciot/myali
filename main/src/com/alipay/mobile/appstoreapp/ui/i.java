package com.alipay.mobile.appstoreapp.ui;

import com.alipay.mobile.framework.service.ext.openplatform.AppInstallerTypeEnum;
import com.alipay.mobile.framework.service.ext.openplatform.InstallStatus;
import com.alipay.mobile.framework.service.ext.openplatform.app.App;

final class i
  implements Runnable
{
  i(h paramh)
  {
  }

  public final void run()
  {
    if (AppInstallerTypeEnum.getEnum(AppDetailActivity.removeBundle(this.a.a).getInstallerType().toString()) == AppInstallerTypeEnum.independantApp);
    while ((AppDetailActivity.removeBundle(this.a.a).getInstallStatus().getStatus() == 4) || (AppDetailActivity.removeBundle(this.a.a).getInstallStatus().getStatus() == 7) || (AppDetailActivity.k(this.a.a) == null))
      return;
    this.a.a.finish();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.appstoreapp.ui.i
 * JD-Core Version:    0.6.2
 */