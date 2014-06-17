package com.alipay.mobile.framework.service.ext.openplatform.service;

import android.os.Bundle;
import com.alipay.mobile.framework.service.ext.ExternalService;
import com.alipay.mobile.framework.service.ext.openplatform.app.App;
import java.util.ArrayList;
import java.util.List;
import java.util.Observer;

public abstract class AppManageService extends ExternalService
{
  private static final String LOG_TAG = "AppManageService";
  protected List<Observer> observers = new ArrayList();

  public void addObserver(Observer paramObserver)
  {
    if (!this.observers.contains(paramObserver))
    {
      new StringBuilder("添加监听者").append(paramObserver.toString()).toString();
      this.observers.add(paramObserver);
    }
  }

  public abstract void addToDownloadedAppsMap(String paramString1, String paramString2);

  public abstract void auth(String paramString, AuthorizeCallback paramAuthorizeCallback);

  public abstract void auth(String paramString1, AuthorizeCallback paramAuthorizeCallback, String paramString2);

  public abstract void authAndLaunch(String paramString1, String paramString2, boolean paramBoolean, Bundle paramBundle);

  public abstract App getAppById(String paramString);

  public abstract List<App> getAppCenterAppsFromLocal();

  public abstract List<App> getAppCenterAppsFromRemote();

  public abstract List<App> getAppsByPage(int paramInt1, int paramInt2);

  public abstract List<App> getHomeAndAppCenterAppsFromRemote();

  public abstract List<App> getHomeAppsFromLocal();

  public abstract List<App> getHomeAppsFromRemote();

  public abstract List<App> getThirdAppsFromLocal();

  public abstract void initAndSyncApps();

  public abstract void initConfig();

  public abstract boolean isAppInstalledById(String paramString);

  public void removeObserver(Observer paramObserver)
  {
    if (this.observers.contains(paramObserver))
    {
      new StringBuilder("删除监听者").append(paramObserver.toString()).toString();
      this.observers.remove(paramObserver);
    }
  }

  public abstract List<App> syncAppAndAutoUpdate();

  public abstract App syncOneAppInfo(String paramString);

  public abstract void upgradeDownloadedApps();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.openplatform.service.AppManageService
 * JD-Core Version:    0.6.2
 */