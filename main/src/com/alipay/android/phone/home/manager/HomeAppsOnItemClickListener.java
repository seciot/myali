package com.alipay.android.phone.home.manager;

import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.alipay.android.phone.home.app.HomeMoreApp;
import com.alipay.android.phone.home.util.HomeLogAgentUtil;
import com.alipay.mobile.common.logging.LogCatLog;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.AppLoadException;
import com.alipay.mobile.framework.service.ext.openplatform.AppInstallerTypeEnum;
import com.alipay.mobile.framework.service.ext.openplatform.app.App;
import com.alipay.mobile.framework.service.ext.openplatform.service.AppManageService;

public class HomeAppsOnItemClickListener
  implements AdapterView.OnItemClickListener
{
  private MicroApplicationContext a = AlipayApplication.getInstance().getMicroApplicationContext();

  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    HomeAppsItemAdapter localHomeAppsItemAdapter = (HomeAppsItemAdapter)paramAdapterView.getAdapter();
    App localApp;
    if (paramInt < localHomeAppsItemAdapter.a())
    {
      localApp = localHomeAppsItemAdapter.a(paramInt);
      com.alipay.android.phone.home.ui.HomeFragment.c = localApp;
      if (!(localApp instanceof HomeMoreApp))
        break label54;
      localApp.authAndLaunch(null);
      localHomeAppsItemAdapter.notifyDataSetChanged();
      HomeLogAgentUtil.c();
    }
    label54: 
    do
    {
      return;
      HomeLogAgentUtil.b(localApp.getAppId());
      if (!localApp.isOffline())
        break;
      localApp.offline();
      localHomeAppsItemAdapter.a(localApp);
      localHomeAppsItemAdapter.notifyDataSetChanged();
      this.a.Toast("该应用已停止服务", 1);
    }
    while (localHomeAppsItemAdapter == null);
    localHomeAppsItemAdapter.a(((AppManageService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(AppManageService.class.getName())).getHomeAppsFromLocal());
    return;
    if (((!localApp.isDownloading()) || (localApp.getInstallerType() != AppInstallerTypeEnum.independantApp)) && (localApp.isInstalled()))
    {
      if (localApp.isNeedUpgrade())
      {
        if (localApp.getInstallerType() == AppInstallerTypeEnum.independantApp)
        {
          this.a.Alert(null, localApp.getName() + "有新版本，需要更新才能使用", "更新", new i(this, localApp), "取消", null);
          return;
        }
        localApp.authAndLaunch(null);
        return;
      }
      localApp.authAndLaunch(null);
      return;
    }
    try
    {
      Bundle localBundle = new Bundle();
      localBundle.putString("TARGET", "DETAIL");
      localBundle.putString("APP_ID", localApp.getAppId());
      this.a.startApp("20000002", "10000111", localBundle);
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
      LogCatLog.e("AppCenterOnItemClickListener", localAppLoadException.getLocalizedMessage());
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.manager.HomeAppsOnItemClickListener
 * JD-Core Version:    0.6.2
 */