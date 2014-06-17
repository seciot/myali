package com.alipay.mobile.common.logagent;

import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;

public class LogUtil
{
  private static String a = "http://mdap.alipay.com/loggw/log.do";

  private static boolean a(Context paramContext)
  {
    try
    {
      int i = paramContext.getPackageManager().getApplicationInfo(paramContext.getPackageName(), 16384).flags;
      int j = i & 0x2;
      boolean bool = false;
      if (j != 0)
        bool = true;
      return bool;
    }
    catch (Exception localException)
    {
    }
    return false;
  }

  public static final String getStatisticsUrl(Context paramContext)
  {
    if (a(paramContext))
      return getValue(paramContext, "content://com.alipay.setting/StatisticsServerUrl", a);
    return a;
  }

  public static String getValue(Context paramContext, String paramString1, String paramString2)
  {
    Cursor localCursor = paramContext.getContentResolver().query(Uri.parse(paramString1), null, null, null, null);
    if ((localCursor != null) && (localCursor.getCount() > 0))
    {
      localCursor.moveToFirst();
      paramString2 = localCursor.getString(0);
      localCursor.close();
    }
    return paramString2;
  }

  public static void logAnyTime(String paramString1, String paramString2)
  {
    new StringBuilder("Alipay_").append(paramString1).toString();
  }

  public static void logAnyTime(String paramString1, String paramString2, Exception paramException)
  {
    new StringBuilder("Alipay_").append(paramString1).toString();
  }

  public static void logContainerDebuggable(String paramString1, String paramString2)
  {
  }

  public static void logMsg(int paramInt, String paramString1, String paramString2)
  {
    if (Constants.LOG_LEVEL >= paramInt);
    switch (paramInt)
    {
    case 3:
    case 4:
    default:
      return;
    case 1:
      logAnyTime(paramString1, paramString2);
      return;
    case 2:
    }
    logAnyTime(paramString1, paramString2);
  }

  public static void logOnlyDebuggable(String paramString1, String paramString2)
  {
  }

  public static void setmStatisticsUrl(String paramString)
  {
    a = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.logagent.LogUtil
 * JD-Core Version:    0.6.2
 */