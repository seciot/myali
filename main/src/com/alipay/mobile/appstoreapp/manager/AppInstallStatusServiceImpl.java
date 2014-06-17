package com.alipay.mobile.appstoreapp.manager;

import android.os.Bundle;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.openplatform.AppInstallStatusService;
import com.alipay.mobile.framework.service.ext.openplatform.service.AppManageService;

public class AppInstallStatusServiceImpl extends AppInstallStatusService
{
  private static AppManageService a;

  private static AppManageService a()
  {
    if (a == null)
      a = (AppManageService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(AppManageService.class.getName());
    return a;
  }

  public boolean isAppInstalledById(String paramString)
  {
    if (a() == null)
      return false;
    return a().isAppInstalledById(paramString);
  }

  protected void onCreate(Bundle paramBundle)
  {
    a();
  }

  protected void onDestroy(Bundle paramBundle)
  {
    a = null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.appstoreapp.manager.AppInstallStatusServiceImpl
 * JD-Core Version:    0.6.2
 */