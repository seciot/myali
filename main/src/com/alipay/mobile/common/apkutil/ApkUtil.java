package com.alipay.mobile.common.apkutil;

import android.app.Application;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.content.res.Resources;
import java.io.File;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class ApkUtil
{
  public static AppInfoData getApkFileInfo(Context paramContext, String paramString)
  {
    File localFile = new File(paramString);
    if ((!localFile.exists()) || ((!paramString.toLowerCase().endsWith(".apk")) && (!paramString.toLowerCase().endsWith(".jar"))))
      return null;
    try
    {
      PackageManager localPackageManager = paramContext.getPackageManager();
      PackageInfo localPackageInfo = localPackageManager.getPackageArchiveInfo(paramString, 1);
      if (localPackageInfo != null)
      {
        AppInfoData localAppInfoData1 = new AppInfoData();
        localAppInfoData1.setApppackage(localPackageInfo.packageName);
        localAppInfoData1.setAppversion(localPackageInfo.versionName);
        localAppInfoData1.setAppversionCode(localPackageInfo.versionCode);
        ApplicationInfo localApplicationInfo = localPackageInfo.applicationInfo;
        if (localApplicationInfo != null)
        {
          localApplicationInfo.publicSourceDir = paramString;
          localApplicationInfo.sourceDir = paramString;
          localAppInfoData1.setAppicon(localApplicationInfo.loadIcon(localPackageManager));
        }
        Resources localResources = getResourcesForApplication(paramString, (Application)paramContext.getApplicationContext());
        if (localApplicationInfo.labelRes != 0)
        {
          localAppInfoData1.setAppname((String)localResources.getText(localApplicationInfo.labelRes));
          localAppInfoData2 = localAppInfoData1;
        }
        else
        {
          String str = localFile.getName();
          localAppInfoData1.setAppname(str.substring(0, str.lastIndexOf(".")));
          localAppInfoData2 = localAppInfoData1;
        }
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return null;
    }
    AppInfoData localAppInfoData2 = null;
    return localAppInfoData2;
  }

  public static Resources getResourcesForApplication(String paramString, Application paramApplication)
  {
    try
    {
      AssetManager localAssetManager = (AssetManager)AssetManager.class.newInstance();
      if (((Integer)localAssetManager.getClass().getMethod("addAssetPath", new Class[] { String.class }).invoke(localAssetManager, new Object[] { paramString })).intValue() == 0)
        return null;
      Resources localResources = new Resources(localAssetManager, paramApplication.getResources().getDisplayMetrics(), paramApplication.getResources().getConfiguration());
      return localResources;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      localIllegalArgumentException.printStackTrace();
      return null;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      while (true)
        localIllegalAccessException.printStackTrace();
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      while (true)
        localInvocationTargetException.printStackTrace();
    }
    catch (InstantiationException localInstantiationException)
    {
      while (true)
        localInstantiationException.printStackTrace();
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      while (true)
        localNoSuchMethodException.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.apkutil.ApkUtil
 * JD-Core Version:    0.6.2
 */