package com.alipay.mobile.longlink.service;

public final class l
{
  private static l a;
  private String b = "";
  private String c = "";
  private String d = "";

  public static l a()
  {
    if (a == null)
      throw new IllegalStateException("PushAppInfo must be created by calling createInstance...");
    return a;
  }

  public static l b()
  {
    try
    {
      if (a == null)
        a = new l();
      l locall = a;
      return locall;
    }
    finally
    {
    }
  }

  public final void a(String paramString)
  {
    this.b = paramString;
  }

  public final void b(String paramString)
  {
    this.c = paramString;
  }

  public final String c()
  {
    return this.b;
  }

  public final void c(String paramString)
  {
    this.d = paramString;
  }

  public final String d()
  {
    return this.c;
  }

  public final String e()
  {
    return this.d;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.longlink.service.l
 * JD-Core Version:    0.6.2
 */