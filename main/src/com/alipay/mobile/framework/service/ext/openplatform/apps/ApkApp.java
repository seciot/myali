package com.alipay.mobile.framework.service.ext.openplatform.apps;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import android.os.Bundle;
import com.alipay.mobile.common.info.AppInfo;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.download.DownloadRequest;
import com.alipay.mobile.framework.service.ext.download.ExternalDownloadManager;
import com.alipay.mobile.framework.service.ext.openplatform.AppUtils;
import com.alipay.mobile.framework.service.ext.openplatform.InstallStatus;
import com.alipay.mobile.framework.service.ext.openplatform.app.App;
import com.alipay.mobile.framework.service.ext.openplatform.domain.AppEntity;

public class ApkApp extends App
{
  private BroadcastReceiver a;

  private void a()
  {
    if (this.a != null);
    try
    {
      AlipayApplication.getInstance().getApplicationContext().unregisterReceiver(this.a);
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
    }
  }

  public void autoUpgradeApp()
  {
    downloadApp();
  }

  public void downloadApp()
  {
    AlipayApplication.getInstance().getMicroApplicationContext().Toast("已开始下载:" + getAppName(), 0);
    ExternalDownloadManager localExternalDownloadManager = (ExternalDownloadManager)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(ExternalDownloadManager.class.getName());
    DownloadRequest localDownloadRequest = new DownloadRequest();
    localDownloadRequest.setDescription(getAppDesc());
    localDownloadRequest.setTitle(getAppName());
    localDownloadRequest.setFileName(getAppName() + "-" + getAppVersion() + ".apk");
    localDownloadRequest.setDownloadUrl(getDownloadUrl());
    boolean bool1 = isNeedAutoUpgrade();
    boolean bool2 = false;
    if (!bool1)
      bool2 = true;
    localDownloadRequest.setShowRunningNotification(bool2);
    localDownloadRequest.setAppId(getAppId());
    localExternalDownloadManager.addDownload(localDownloadRequest, this);
  }

  public String getInstalledPath()
  {
    return null;
  }

  public void installApp(String[] paramArrayOfString)
  {
    if (this.a != null)
      a();
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.intent.action.PACKAGE_REPLACED");
    localIntentFilter.addAction("android.intent.action.PACKAGE_ADDED");
    localIntentFilter.addDataScheme("package");
    this.a = new a(this);
    AlipayApplication.getInstance().getApplicationContext().registerReceiver(this.a, localIntentFilter);
    String str = null;
    if (paramArrayOfString != null)
    {
      int i = paramArrayOfString.length;
      str = null;
      if (i > 0)
        str = paramArrayOfString[0];
    }
    if (str != null)
    {
      Intent localIntent = new Intent("android.intent.action.VIEW");
      localIntent.setFlags(268435456);
      localIntent.setDataAndType(Uri.parse("file://" + str), "application/vnd.android.package-archive");
      AlipayApplication.getInstance().getApplicationContext().startActivity(localIntent);
    }
    InstallStatus localInstallStatus = getInstallStatus();
    localInstallStatus.setStatus(4);
    setChanged();
    notifyObservers(localInstallStatus);
  }

  public boolean isDownloading()
  {
    if ((getDownloadUrl() == null) || ("".equals(getDownloadUrl().trim())))
      return false;
    return ((ExternalDownloadManager)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(ExternalDownloadManager.class.getName())).isDownloading(getDownloadUrl());
  }

  public boolean isInstallBySystem()
  {
    return true;
  }

  public boolean isInstalled()
  {
    PackageManager localPackageManager = AlipayApplication.getInstance().getApplicationContext().getPackageManager();
    try
    {
      PackageInfo localPackageInfo = localPackageManager.getPackageInfo(getPackageName(), 0);
      boolean bool = false;
      if (localPackageInfo != null)
        bool = true;
      return bool;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      new StringBuilder("package not find:").append(getPackageName()).toString();
      return false;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return false;
  }

  public boolean isNeedUpgrade()
  {
    PackageManager localPackageManager = AlipayApplication.getInstance().getApplicationContext().getPackageManager();
    int i;
    int j;
    try
    {
      PackageInfo localPackageInfo = localPackageManager.getPackageInfo(getPackageName(), 0);
      bool = false;
      if (localPackageInfo == null)
        break label107;
      i = Integer.valueOf(localPackageInfo.versionCode).intValue();
      if (getMinSupportAppVersionCode() == null)
      {
        j = 0;
      }
      else
      {
        int k = Integer.valueOf(getMinSupportAppVersionCode()).intValue();
        j = k;
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      localNameNotFoundException.getMessage();
      return false;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return false;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      return false;
    }
    boolean bool = false;
    if (i < j)
      bool = true;
    label107: return bool;
  }

  public boolean isPreInstall()
  {
    return false;
  }

  public void launchAppWithAuthCode(String paramString1, String paramString2, Bundle paramBundle)
  {
    Intent localIntent = AppUtils.getApkAppLaunchIntent(getAppInfo().getPackageName());
    if (localIntent != null)
    {
      if ((paramString1 != null) && (paramString2 != null))
      {
        localIntent.putExtra("alipay_user_id", paramString1);
        localIntent.putExtra("auth_code", paramString2);
        localIntent.putExtra("app_id", getAppId());
        localIntent.putExtra("version", "1.0");
        localIntent.putExtra("alipay_client_version", AppInfo.getInstance().getmProductVersion());
        localIntent.putExtra("ext_params", paramBundle);
        localIntent.putExtra("source", "alipay_wallet");
        localIntent.addFlags(67108864);
        showToastCenter("支付宝正在带你去登录...");
      }
      localIntent.addFlags(268435456);
      AlipayApplication.getInstance().startActivity(localIntent);
    }
  }

  public boolean preInstallApp()
  {
    return true;
  }

  public void uninstallApp()
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.openplatform.apps.ApkApp
 * JD-Core Version:    0.6.2
 */