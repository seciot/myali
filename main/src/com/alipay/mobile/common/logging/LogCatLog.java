package com.alipay.mobile.common.logging;

import com.alipay.mobile.common.info.AppInfo;

public class LogCatLog
{
  private static boolean a;

  public static void d(String paramString1, String paramString2)
  {
  }

  public static void e(String paramString1, String paramString2)
  {
  }

  public static void e(String paramString1, String paramString2, Throwable paramThrowable)
  {
  }

  public static void e(String paramString, Throwable paramThrowable)
  {
    if (paramThrowable != null)
      paramThrowable.getMessage();
  }

  public static void i(String paramString1, String paramString2)
  {
  }

  public static void init()
  {
    try
    {
      a = AppInfo.getInstance().isDebuggable();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static boolean isSwitch()
  {
    return a;
  }

  public static void printStackTraceAndMore(Throwable paramThrowable)
  {
    paramThrowable.printStackTrace();
  }

  public static void v(String paramString1, String paramString2)
  {
  }

  public static void w(String paramString1, String paramString2)
  {
  }

  public static void w(String paramString, Throwable paramThrowable)
  {
    if (paramThrowable != null)
      paramThrowable.getMessage();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.logging.LogCatLog
 * JD-Core Version:    0.6.2
 */