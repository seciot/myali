package com.alipay.android.app.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;

public class FileUtils
{
  public static int a = -1;
  public static int b = -2;

  public static boolean a(Context paramContext, String paramString)
  {
    try
    {
      PackageInfo localPackageInfo = paramContext.getPackageManager().getPackageArchiveInfo(paramString, 0);
      boolean bool;
      if (localPackageInfo != null)
      {
        ApplicationInfo localApplicationInfo = localPackageInfo.applicationInfo;
        bool = false;
        if (localApplicationInfo != null);
      }
      else
      {
        bool = true;
      }
      return bool;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
    return true;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.util.FileUtils
 * JD-Core Version:    0.6.2
 */