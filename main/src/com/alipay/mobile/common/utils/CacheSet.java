package com.alipay.mobile.common.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public class CacheSet
{
  public static final String FILE_NAME = "AppHall.cache";
  static final String TAG = "AlixSet";
  private static CacheSet b = null;
  private Context a;

  public static CacheSet getInstance(Context paramContext)
  {
    try
    {
      if (b == null)
        b = new CacheSet();
      b.a = paramContext;
      CacheSet localCacheSet = b;
      return localCacheSet;
    }
    finally
    {
    }
  }

  public boolean getBoolean(String paramString, boolean paramBoolean)
  {
    SharedPreferences localSharedPreferences = this.a.getSharedPreferences("AppHall.cache", 0);
    if (localSharedPreferences == null)
      return paramBoolean;
    return localSharedPreferences.getBoolean(paramString, paramBoolean);
  }

  public String getString(String paramString)
  {
    SharedPreferences localSharedPreferences = this.a.getSharedPreferences("AppHall.cache", 0);
    if (localSharedPreferences == null)
      return "";
    return localSharedPreferences.getString(paramString, "");
  }

  public void putBoolean(String paramString, boolean paramBoolean)
  {
    this.a.getSharedPreferences("AppHall.cache", 0).edit().putBoolean(paramString, paramBoolean).commit();
  }

  public void putString(String paramString1, String paramString2)
  {
    this.a.getSharedPreferences("AppHall.cache", 0).edit().putString(paramString1, paramString2).commit();
  }

  public void remove(String paramString)
  {
    this.a.getSharedPreferences("AppHall.cache", 0).edit().remove(paramString).commit();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.utils.CacheSet
 * JD-Core Version:    0.6.2
 */