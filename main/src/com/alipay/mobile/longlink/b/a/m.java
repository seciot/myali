package com.alipay.mobile.longlink.b.a;

public final class m
{
  private static int a = 5000;
  private static int b = 30;
  private static int c = 2;

  public static String a()
  {
    return "1.0.0";
  }

  public static void a(int paramInt)
  {
    if (paramInt <= 0)
      throw new IllegalArgumentException();
    AppBundle = paramInt * 1000;
  }

  public static int b()
  {
    if (AppBundle <= 0)
      AppBundle = 10000;
    return AppBundle;
  }

  public static void b(int paramInt)
  {
    BundlesManagerImpl = paramInt;
  }

  public static int getBundleName()
  {
    return BundlesManager;
  }

  public static void c(int paramInt)
  {
    BundlesManager = paramInt;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.longlink.b.a.m
 * JD-Core Version:    0.6.2
 */