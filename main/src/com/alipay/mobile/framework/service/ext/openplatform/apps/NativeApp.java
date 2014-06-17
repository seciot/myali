package com.alipay.mobile.framework.service.ext.openplatform.apps;

import android.os.Bundle;
import com.alipay.mobile.common.utils.BundleUtil;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.AppLoadException;
import com.alipay.mobile.framework.service.ext.openplatform.app.App;

public class NativeApp extends App
{
  public void autoUpgradeApp()
  {
  }

  public void downloadApp()
  {
  }

  public String getInstalledPath()
  {
    return null;
  }

  public void installApp(String[] paramArrayOfString)
  {
  }

  public boolean isDownloading()
  {
    return false;
  }

  public boolean isInstallBySystem()
  {
    return false;
  }

  public boolean isInstalled()
  {
    return true;
  }

  public boolean isNeedUpgrade()
  {
    return false;
  }

  public boolean isPreInstall()
  {
    return false;
  }

  public void launchAppWithAuthCode(String paramString1, String paramString2, Bundle paramBundle)
  {
    Bundle localBundle = new Bundle();
    if (paramBundle != null)
      localBundle.putString("param", BundleUtil.deserialBundle(paramBundle));
    if ("10000007".equals(getAppId()))
      localBundle.putString("sourceId", "10000111#paiIcon");
    try
    {
      AlipayApplication.getInstance().getMicroApplicationContext().startApp("20000001", getAppId(), localBundle);
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
      localAppLoadException.getMessage();
      showToastCenter("启动应用失败：" + localAppLoadException.getLocalizedMessage());
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
 * Qualified Name:     com.alipay.mobile.framework.service.ext.openplatform.apps.NativeApp
 * JD-Core Version:    0.6.2
 */