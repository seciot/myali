package com.alipay.android.phone.home.app;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import com.alipay.android.phone.home.ui.AppsCenterActivity;
import com.alipay.mobile.common.logging.LogCatLog;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.AppLoadException;
import com.alipay.mobile.framework.app.MicroApplication;
import com.alipay.mobile.framework.service.ext.openplatform.app.App;
import com.alipay.mobile.framework.service.ext.openplatform.domain.AppEntity;
import com.alipay.mobile.openplatform.common.R.drawable;

public class HomeMoreApp extends App
{
  private static final String a = HomeMoreApp.class.getName();
  private static HomeMoreApp b = new HomeMoreApp();

  private HomeMoreApp()
  {
    this.appInfo = new AppEntity();
    this.appInfo.setAppId("20000081");
    this.appInfo.setName("更多");
    this.appInfo.setDesc("更多支付宝应用");
    this.appInfo.setInstallerType("nativeApp");
    this.appInfo.setAlipayApp(true);
    b();
  }

  public static HomeMoreApp a()
  {
    return b;
  }

  private void b()
  {
    if (c())
    {
      this.appInfo.setTipsType("new_for_more_app");
      return;
    }
    this.appInfo.setTipsType("");
  }

  private static boolean c()
  {
    return AlipayApplication.getInstance().getApplicationContext().getSharedPreferences("NEW_FOR_MORE_APP", 0).getBoolean("NEW_FOR_MORE_APP", true);
  }

  public void authAndLaunch(Bundle paramBundle)
  {
    MicroApplicationContext localMicroApplicationContext = AlipayApplication.getInstance().getMicroApplicationContext();
    try
    {
      MicroApplication localMicroApplication = localMicroApplicationContext.findAppById("20000001");
      if (localMicroApplication == null)
        return;
      localMicroApplicationContext.startActivity(localMicroApplication, AppsCenterActivity.class.getName());
      if (c())
      {
        SharedPreferences.Editor localEditor = AlipayApplication.getInstance().getApplicationContext().getSharedPreferences("NEW_FOR_MORE_APP", 0).edit();
        localEditor.putBoolean("NEW_FOR_MORE_APP", false);
        localEditor.commit();
        b();
        return;
      }
    }
    catch (AppLoadException localAppLoadException)
    {
      LogCatLog.e(a, localAppLoadException.getLocalizedMessage());
    }
  }

  public void autoUpgradeApp()
  {
  }

  public void downloadApp()
  {
    LogCatLog.e(a, "本地应用，已经内置，无需下载");
  }

  public Bitmap getIcon()
  {
    return BitmapFactory.decodeResource(AlipayApplication.getInstance().getResources(), R.drawable.app_more);
  }

  public String getInstalledPath()
  {
    return null;
  }

  public boolean iconHasLoaded()
  {
    return true;
  }

  public void installApp(String[] paramArrayOfString)
  {
    LogCatLog.e(a, "本地应用，已经内置，无需安装");
  }

  public boolean isAlipayApp()
  {
    return true;
  }

  public boolean isDisplay()
  {
    return true;
  }

  public boolean isDownloading()
  {
    return false;
  }

  public boolean isInstallBySystem()
  {
    return true;
  }

  public boolean isInstalled()
  {
    return true;
  }

  public boolean isNeedAuth()
  {
    return false;
  }

  public boolean isNeedUpgrade()
  {
    return false;
  }

  public boolean isOffline()
  {
    return false;
  }

  public boolean isPreInstall()
  {
    return false;
  }

  public void launchAppWithAuthCode(String paramString1, String paramString2, Bundle paramBundle)
  {
  }

  public boolean preInstallApp()
  {
    return true;
  }

  public void uninstallApp()
  {
    LogCatLog.e(a, "本地应用，无法卸载");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.app.HomeMoreApp
 * JD-Core Version:    0.6.2
 */