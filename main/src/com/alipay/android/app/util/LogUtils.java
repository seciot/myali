package com.alipay.android.app.util;

import com.alipay.android.app.sys.GlobalContext;

public class LogUtils
{
  public static void a()
  {
    GlobalContext.a().d();
  }

  public static void a(Object paramObject)
  {
    if (!(paramObject instanceof Exception));
    while (!GlobalContext.a().d())
      return;
    try
    {
      ((Exception)paramObject).printStackTrace();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public static void b()
  {
    GlobalContext.a().d();
  }

  public static void c()
  {
    d();
  }

  public static void d()
  {
    if (GlobalContext.a().d());
  }

  public static void e()
  {
    f();
  }

  public static void f()
  {
    if (GlobalContext.a().d());
  }

  public static void g()
  {
    h();
  }

  public static void h()
  {
    if (GlobalContext.a().d());
  }

  public static void i()
  {
    if (GlobalContext.a().d());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.util.LogUtils
 * JD-Core Version:    0.6.2
 */