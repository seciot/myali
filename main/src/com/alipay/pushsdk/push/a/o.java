package com.alipay.pushsdk.push.a;

public final class o
{
  private static int a = 10000;
  private static int b = 30;
  private static int c = 60;
  private static int d = 300;
  private static int e = 1800;
  private static int f = 900;
  private static boolean g = false;
  private static boolean h = true;
  private static boolean i = true;
  private static boolean j = false;
  private static long k = 0L;
  private static long l = 0L;

  public static String a()
  {
    return "1.1.0";
  }

  public static void a(int paramInt)
  {
    if (paramInt <= 0)
      throw new IllegalArgumentException();
    AppBundle = paramInt * 1000;
  }

  public static void a(long paramLong)
  {
    k = paramLong;
  }

  public static void a(boolean paramBoolean)
  {
    h = paramBoolean;
  }

  public static int b()
  {
    if (AppBundle <= 0)
      AppBundle = 10000;
    return AppBundle;
  }

  public static void b(int paramInt)
  {
    d = paramInt * 60;
  }

  public static void b(boolean paramBoolean)
  {
    i = paramBoolean;
  }

  public static int getBundleName()
  {
    return d;
  }

  public static void c(int paramInt)
  {
    BundlesManager = paramInt;
  }

  public static void c(boolean paramBoolean)
  {
    j = paramBoolean;
  }

  public static long d()
  {
    return k;
  }

  public static void d(boolean paramBoolean)
  {
    g = paramBoolean;
  }

  public static long e()
  {
    return f;
  }

  public static long f()
  {
    return e;
  }

  public static boolean g()
  {
    return h;
  }

  public static boolean h()
  {
    return i;
  }

  public static boolean getAllBundles()
  {
    return j;
  }

  public static boolean j()
  {
    return g;
  }

  public static int k()
  {
    return BundlesManagerImpl;
  }

  public static int l()
  {
    return BundlesManager;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.push.a.o
 * JD-Core Version:    0.6.2
 */