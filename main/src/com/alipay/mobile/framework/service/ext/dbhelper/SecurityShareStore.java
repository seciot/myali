package com.alipay.mobile.framework.service.ext.dbhelper;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.alipay.mobile.common.logging.LogCatLog;
import java.util.HashMap;

public class SecurityShareStore
{
  private static HashMap<String, String> a = new HashMap();

  public static String getString(Context paramContext, String paramString)
  {
    String str1 = (String)a.get(paramString);
    if ((str1 != null) && (!"".equals(str1)))
      return str1;
    try
    {
      String str3 = paramContext.getSharedPreferences("secuitySharedDataStore", 0).getString(paramString, null);
      a.put(paramString, str3);
      return str3;
    }
    catch (Exception localException1)
    {
      LogCatLog.printStackTraceAndMore(localException1);
      try
      {
        String str2 = paramContext.getSharedPreferences("secuitySharedDataStore", 0).getString(paramString, null);
        a.put(paramString, str2);
        return str2;
      }
      catch (Exception localException2)
      {
        LogCatLog.printStackTraceAndMore(localException2);
      }
    }
    return null;
  }

  public static boolean putString(Context paramContext, String paramString1, String paramString2)
  {
    try
    {
      paramContext.getSharedPreferences("secuitySharedDataStore", 0).edit().putString(paramString1, paramString2).commit();
      a.put(paramString1, paramString2);
      return true;
    }
    catch (Exception localException1)
    {
      LogCatLog.printStackTraceAndMore(localException1);
      try
      {
        paramContext.getSharedPreferences("secuitySharedDataStore", 0).edit().putString(paramString1, paramString2).commit();
        a.put(paramString1, paramString2);
        return true;
      }
      catch (Exception localException2)
      {
        LogCatLog.printStackTraceAndMore(localException2);
      }
    }
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.dbhelper.SecurityShareStore
 * JD-Core Version:    0.6.2
 */