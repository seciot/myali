package com.alipay.mobile.longlink.c;

import android.util.Log;

public final class a
{
  public static boolean a = false;
  public static int b = 1;
  public static int c = 1;
  public static int d = 2;
  public static int e = 3;
  public static int f = 4;
  public static int g = 5;

  public static String a(Class paramClass)
  {
    return "LongLink_" + paramClass.getSimpleName();
  }

  public static void a()
  {
    if (a == true)
    {
      b = f;
      return;
    }
    b = c;
  }

  public static void a(int paramInt, String paramString1, String paramString2)
  {
    if (b >= paramInt);
    switch (paramInt)
    {
    default:
      return;
    case 1:
      Log.e(paramString1, paramString2);
      return;
    case 2:
      Log.w(paramString1, paramString2);
      return;
    case 3:
      Log.i(paramString1, paramString2);
      return;
    case 4:
      Log.d(paramString1, paramString2);
      return;
    case 5:
    }
    Log.v(paramString1, paramString2);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.longlink.c.a
 * JD-Core Version:    0.6.2
 */