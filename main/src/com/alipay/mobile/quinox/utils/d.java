package com.alipay.mobile.quinox.utils;

import android.util.Log;

public final class d
{
  private static boolean a = false;

  public static void a(String paramString1, String paramString2)
  {
    if (a)
      Log.v(paramString1, paramString2);
  }

  public static void a(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (a)
      Log.e(paramString1, paramString2, paramThrowable);
  }

  public static void b(String paramString1, String paramString2)
  {
    if (a)
      Log.d(paramString1, paramString2);
  }

  public static void c(String paramString1, String paramString2)
  {
    if (a)
      Log.i(paramString1, paramString2);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.quinox.utils.d
 * JD-Core Version:    0.6.2
 */