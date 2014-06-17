package com.alipay.mobile.framework.service.ext.openplatform.apps;

import android.content.Context;
import android.content.res.AssetManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.alipay.mobile.common.apkutil.ApkUtil;
import com.alipay.mobile.common.apkutil.AppInfoData;
import com.alipay.mobile.common.info.AppInfo;
import com.alipay.mobile.common.utils.BundleUtil;
import com.alipay.mobile.common.utils.FileUtils;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.AppLoadException;
import com.alipay.mobile.framework.service.ext.download.DownloadRequest;
import com.alipay.mobile.framework.service.ext.download.ExternalDownloadManager;
import com.alipay.mobile.framework.service.ext.openplatform.app.App;
import com.alipay.mobile.framework.service.ext.openplatform.domain.AppEntity;
import com.googlecode.androidannotations.api.BackgroundExecutor;
import java.io.File;
import java.io.IOException;

public class InnerApp extends App
{
  Runnable a = new d(this);
  private final String b = context.getFilesDir().getAbsolutePath() + File.separator + "apps" + File.separator;
  private AppInfoData c;
  private boolean d = false;
  private Handler e = new Handler(Looper.getMainLooper());

  public final String a()
  {
    return this.b + getAppId() + ".jar";
  }

  public final void a(String paramString1, String paramString2, Bundle paramBundle)
  {
    Bundle localBundle = new Bundle();
    if (paramBundle != null)
      localBundle.putString("param", BundleUtil.deserialBundle(paramBundle));
    if ("10000007".equals(getAppId()))
      localBundle.putString("sourceId", "10000111#paiIcon");
    if ((paramString1 != null) && (paramString2 != null));
    try
    {
      localBundle.putString("alipay_user_id", paramString1);
      localBundle.putString("auth_code", paramString2);
      localBundle.putString("app_id", getAppId());
      localBundle.putString("version", "1.0");
      localBundle.putString("alipay_client_version", AppInfo.getInstance().getmProductVersion());
      localBundle.putString("source", "alipay_wallet");
      AlipayApplication.getInstance().getMicroApplicationContext().startApp("20000001", getAppId(), localBundle);
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
      localAppLoadException.getMessage();
      showToastCenter("启动应用失败：" + localAppLoadException.getLocalizedMessage());
    }
  }

  public void autoUpgradeApp()
  {
    downloadApp();
  }

  public void downloadApp()
  {
    ExternalDownloadManager localExternalDownloadManager = (ExternalDownloadManager)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(ExternalDownloadManager.class.getName());
    DownloadRequest localDownloadRequest = new DownloadRequest();
    localDownloadRequest.setDescription(getAppDesc());
    localDownloadRequest.setTitle(getAppName());
    localDownloadRequest.setDownloadUrl(getDownloadUrl());
    localDownloadRequest.setFileName(getAppName() + "-" + getAppVersion() + ".jar");
    if (!isNeedAutoUpgrade());
    for (boolean bool = true; ; bool = false)
    {
      localDownloadRequest.setShowRunningNotification(bool);
      localDownloadRequest.setAppId(getAppId());
      localExternalDownloadManager.addDownload(localDownloadRequest, this);
      return;
    }
  }

  public String getInstalledPath()
  {
    return this.b;
  }

  public void installApp(String[] paramArrayOfString)
  {
    this.d = false;
    if ((paramArrayOfString != null) && (paramArrayOfString.length > 0))
    {
      String str = paramArrayOfString[0];
      uninstallApp();
      File localFile = new File(str);
      if (!FileUtils.copyFile(localFile, new File(this.b + getAppId() + ".jar")))
        break label94;
      BackgroundExecutor.execute(this.a);
      if (localFile.exists())
        localFile.delete();
    }
    return;
    label94: onInstallComplete(false);
  }

  public boolean isDownloading()
  {
    if ((getDownloadUrl() == null) || ("".equals(getDownloadUrl().trim())))
      return false;
    return ((ExternalDownloadManager)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(ExternalDownloadManager.class.getName())).isDownloading(getDownloadUrl());
  }

  public boolean isInstallBySystem()
  {
    return false;
  }

  public boolean isInstalled()
  {
    return new File(a()).exists();
  }

  public boolean isNeedUpgrade()
  {
    if (!isInstalled());
    while (true)
    {
      return false;
      this.c = ApkUtil.getApkFileInfo(context, a());
      if ((this.c == null) || (this.c.getAppversionCode() == null))
        return true;
      if (getMinSupportAppVersionCode() != null);
      try
      {
        int i = Integer.valueOf(this.c.getAppversionCode()).intValue();
        int j = Integer.valueOf(getMinSupportAppVersionCode()).intValue();
        if (i < j)
        {
          return true;
          if ((getAppVersion() != null) && (this.c.getAppversion().compareTo(getAppVersion()) < 0))
            return true;
        }
      }
      catch (NumberFormatException localNumberFormatException)
      {
      }
    }
    return false;
  }

  public boolean isPreInstall()
  {
    return this.d;
  }

  public void launchAppWithAuthCode(String paramString1, String paramString2, Bundle paramBundle)
  {
    if (AlipayApplication.getInstance().getMicroApplicationContext().findDescriptionById(getAppId()) == null)
    {
      BackgroundExecutor.execute(new b(this, paramString1, paramString2, paramBundle));
      return;
    }
    a(paramString1, paramString2, paramBundle);
  }

  public boolean preInstallApp()
  {
    this.d = true;
    String str1 = this.appInfo.getAppId() + ".jar";
    String str2 = this.b + str1;
    try
    {
      boolean bool = FileUtils.copyToFile(context.getAssets().open("apps_preInstall" + File.separator + str1), new File(str2));
      return bool;
    }
    catch (IOException localIOException)
    {
      new StringBuilder().append(localIOException.getMessage()).toString();
      return false;
    }
    catch (Exception localException)
    {
      new StringBuilder().append(localException.getMessage()).toString();
    }
    return false;
  }

  public void uninstallApp()
  {
    File localFile = new File(a());
    if (localFile.exists())
      localFile.delete();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.openplatform.apps.InnerApp
 * JD-Core Version:    0.6.2
 */