package com.alipay.asset.common.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import java.util.HashMap;

public class ShareStoreForAsset
{
  private static HashMap<String, String> a = new HashMap();

  public static String getString(Context paramContext, String paramString)
  {
    String str1 = (String)a.get(paramString);
    if ((str1 != null) && (!"".equals(str1)))
      return str1;
    try
    {
      String str3 = paramContext.getSharedPreferences("assetSharedDataStore", 0).getString(paramString, null);
      a.put(paramString, str3);
      return str3;
    }
    catch (Exception localException1)
    {
      try
      {
        String str2 = paramContext.getSharedPreferences("assetSharedDataStore", 0).getString(paramString, null);
        a.put(paramString, str2);
        return str2;
      }
      catch (Exception localException2)
      {
      }
    }
    return null;
  }

  public static String getString(Context paramContext, String paramString1, String paramString2)
  {
    String str1 = paramString2 + paramString1;
    String str2 = (String)a.get(str1);
    if ((str2 != null) && (!"".equals(str2)))
      return str2;
    try
    {
      String str4 = paramContext.getSharedPreferences("assetSharedDataStore", 0).getString(str1, null);
      a.put(str1, str4);
      return str4;
    }
    catch (Exception localException1)
    {
      try
      {
        String str3 = paramContext.getSharedPreferences("assetSharedDataStore", 0).getString(str1, null);
        a.put(str1, str3);
        return str3;
      }
      catch (Exception localException2)
      {
      }
    }
    return null;
  }

  public static boolean putString(Context paramContext, String paramString1, String paramString2)
  {
    try
    {
      paramContext.getSharedPreferences("assetSharedDataStore", 0).edit().putString(paramString1, paramString2).commit();
      a.put(paramString1, paramString2);
      return true;
    }
    catch (Exception localException1)
    {
      try
      {
        paramContext.getSharedPreferences("assetSharedDataStore", 0).edit().putString(paramString1, paramString2).commit();
        a.put(paramString1, paramString2);
        return true;
      }
      catch (Exception localException2)
      {
      }
    }
    return false;
  }

  public static boolean putString(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    String str = paramString2 + paramString1;
    try
    {
      paramContext.getSharedPreferences("assetSharedDataStore", 0).edit().putString(str, paramString3).commit();
      a.put(str, paramString3);
      return true;
    }
    catch (Exception localException1)
    {
      try
      {
        paramContext.getSharedPreferences("assetSharedDataStore", 0).edit().putString(str, paramString3).commit();
        a.put(str, paramString3);
        return true;
      }
      catch (Exception localException2)
      {
      }
    }
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.asset.common.util.ShareStoreForAsset
 * JD-Core Version:    0.6.2
 */