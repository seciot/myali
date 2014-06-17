package com.alipay.mobile.framework.service.ext.openplatform.apps;

import android.content.Context;
import android.content.res.AssetManager;
import android.os.Bundle;
import com.alipay.mobile.common.apkutil.ApkUtil;
import com.alipay.mobile.common.apkutil.AppInfoData;
import com.alipay.mobile.common.info.AppInfo;
import com.alipay.mobile.common.transport.Request;
import com.alipay.mobile.common.transport.Response;
import com.alipay.mobile.common.transport.TransportCallback;
import com.alipay.mobile.common.utils.FileUtils;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.AppLoadException;
import com.alipay.mobile.framework.service.common.DownloadService;
import com.alipay.mobile.framework.service.ext.download.DownloadRequest;
import com.alipay.mobile.framework.service.ext.download.ExternalDownloadManager;
import com.alipay.mobile.framework.service.ext.openplatform.app.App;
import com.alipay.mobile.framework.service.ext.openplatform.domain.AppEntity;
import java.io.File;
import java.io.IOException;

public class AndroidApp extends App
  implements TransportCallback
{
  private final String a = context.getFilesDir().getAbsolutePath() + File.separator + "apps" + File.separator;
  private final String b = context.getCacheDir().getAbsolutePath() + File.separator;
  private AppInfoData c;
  private boolean d = false;

  private String a()
  {
    return this.a + getAppId() + ".apk";
  }

  public void autoUpgradeApp()
  {
    String str = this.b + getAppId() + "-tmp.apk";
    getDownloadService().addDownload(getDownloadUrl(), str, null, this);
  }

  public void downloadApp()
  {
    ExternalDownloadManager localExternalDownloadManager = (ExternalDownloadManager)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(ExternalDownloadManager.class.getName());
    DownloadRequest localDownloadRequest = new DownloadRequest();
    localDownloadRequest.setDescription(getAppDesc());
    localDownloadRequest.setTitle(getAppName());
    localDownloadRequest.setDownloadUrl(getDownloadUrl());
    localDownloadRequest.setFileName(getAppName() + "-" + getAppVersion() + ".apk");
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
    return this.a;
  }

  public void installApp(String[] paramArrayOfString)
  {
    this.d = false;
    if ((paramArrayOfString != null) && (paramArrayOfString.length > 0))
    {
      String str = paramArrayOfString[0];
      uninstallApp();
      File localFile = new File(str);
      if (!FileUtils.copyFile(localFile, new File(this.a + getAppId() + ".apk")))
        break label92;
      onInstallComplete(true);
      if (localFile.exists())
        localFile.delete();
    }
    return;
    label92: onInstallComplete(false);
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
    MicroApplicationContext localMicroApplicationContext = ((AlipayApplication)context).getMicroApplicationContext();
    if ((paramString1 == null) || (paramString2 == null) || (paramBundle == null));
    try
    {
      paramBundle = new Bundle();
      paramBundle.putString("alipay_user_id", paramString1);
      paramBundle.putString("auth_code", paramString2);
      paramBundle.putString("app_id", getAppId());
      paramBundle.putString("version", "1.0");
      paramBundle.putString("alipay_client_version", AppInfo.getInstance().getmProductVersion());
      paramBundle.putString("source", "alipay_wallet");
      localMicroApplicationContext.startApp("20000001", getAppId(), paramBundle);
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
      showToastCenter("启动应用失败:" + localAppLoadException.getLocalizedMessage());
    }
  }

  public void onCancelled(Request paramRequest)
  {
  }

  public void onFailed(Request paramRequest, int paramInt, String paramString)
  {
  }

  public void onPostExecute(Request paramRequest, Response paramResponse)
  {
    installApp(new String[] { this.b + getAppId() + "-tmp.apk" });
  }

  public void onPreExecute(Request paramRequest)
  {
  }

  public void onProgressUpdate(Request paramRequest, double paramDouble)
  {
  }

  public boolean preInstallApp()
  {
    this.d = true;
    String str1 = this.appInfo.getAppId() + ".apk";
    String str2 = this.a + str1;
    try
    {
      boolean bool = FileUtils.copyToFile(context.getAssets().open("apps_preInstall" + File.separator + str1), new File(str2));
      return bool;
    }
    catch (IOException localIOException)
    {
      new StringBuilder().append(localIOException.getMessage()).toString();
    }
    return false;
  }

  public void uninstallApp()
  {
    File localFile = new File(this.a + getAppId() + ".apk");
    if (localFile.exists())
      localFile.delete();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.openplatform.apps.AndroidApp
 * JD-Core Version:    0.6.2
 */