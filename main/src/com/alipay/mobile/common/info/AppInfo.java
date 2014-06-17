package com.alipay.mobile.common.info;

import android.app.ActivityManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Debug.MemoryInfo;
import android.os.Process;
import java.io.File;
import java.util.UUID;

public class AppInfo
{
  private static AppInfo a;
  private Context b;
  private ActivityManager c;
  private String d;
  private String e;
  private String f;
  private boolean g;
  private int h;
  private String i;
  private SharedPreferences j;

  private AppInfo(Context paramContext)
  {
    this.b = paramContext;
    try
    {
      String str1 = this.b.getPackageName();
      new StringBuilder("getPackageName ").append(str1).toString();
      this.j = this.b.getSharedPreferences(str1 + "_config", 0);
      String str2 = this.j.getString("version", null);
      String str3 = this.b.getPackageManager().getPackageInfo(str1, 0).versionName;
      if (str3.contains("ctch1"))
        str3 = str3.replace("ctch1", "");
      this.e = str3;
      if ((str2 != null) && (a(str2, this.e)))
        this.e = str2;
      if ((0x2 & this.b.getPackageManager().getApplicationInfo(this.b.getPackageName(), 16384).flags) != 0)
        this.g = true;
      this.c = ((ActivityManager)this.b.getSystemService("activity"));
      this.h = Process.myPid();
      this.d = "";
      this.f = "alipay";
      this.i = UUID.randomUUID().toString();
      return;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while ("init: " + localNameNotFoundException == null);
      localNameNotFoundException.getMessage();
    }
  }

  private static boolean a(String paramString1, String paramString2)
  {
    String[] arrayOfString1 = paramString1.split("\\.");
    String[] arrayOfString2 = paramString2.split("\\.");
    for (int k = 0; ; k++)
    {
      int m = arrayOfString1.length;
      boolean bool = false;
      int n;
      int i1;
      if (k < m)
      {
        n = Integer.parseInt(arrayOfString1[k]);
        i1 = Integer.parseInt(arrayOfString2[k]);
        if (n <= i1)
          break label62;
        bool = true;
      }
      label62: 
      do
      {
        return bool;
        bool = false;
      }
      while (n != i1);
    }
  }

  public static AppInfo createInstance(Context paramContext)
  {
    try
    {
      if (a == null)
        a = new AppInfo(paramContext);
      AppInfo localAppInfo = a;
      return localAppInfo;
    }
    finally
    {
    }
  }

  public static AppInfo getInstance()
  {
    if (a == null)
      throw new IllegalStateException("AppManager must be created by calling createInstance(Context context)");
    return a;
  }

  public String getCacheDirPath()
  {
    return this.b.getCacheDir().getAbsolutePath();
  }

  public String getFilesDirPath()
  {
    return this.b.getFilesDir().getAbsolutePath();
  }

  public int getPid()
  {
    return this.h;
  }

  public String getProductID()
  {
    if (this.d.equals(""))
      return "Android-container";
    return this.d;
  }

  public long getTotalMemory()
  {
    ActivityManager localActivityManager = this.c;
    int[] arrayOfInt = new int[1];
    arrayOfInt[0] = this.h;
    return localActivityManager.getProcessMemoryInfo(arrayOfInt)[0].getTotalPrivateDirty();
  }

  public String getmAwid()
  {
    return this.i;
  }

  public String getmChannels()
  {
    return this.f;
  }

  public String getmProductVersion()
  {
    return this.e;
  }

  public boolean isDebuggable()
  {
    return this.g;
  }

  public void recoverProductVersion()
  {
    this.j.edit().remove("version").commit();
  }

  public void setChannels(String paramString)
  {
    this.j.edit().putString("channels", paramString).commit();
    this.f = paramString;
  }

  public void setProductID(String paramString)
  {
    this.j.edit().putString("productId", paramString).commit();
    this.d = paramString;
  }

  public void setProductVersion(String paramString)
  {
    if (paramString != null)
    {
      this.j.edit().putString("version", paramString).commit();
      this.e = paramString;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.info.AppInfo
 * JD-Core Version:    0.6.2
 */