package com.alipay.pushsdk.c.a;

import java.util.HashMap;

public final class g
{
  private static g a;
  private HashMap b = new HashMap();

  public static g a()
  {
    try
    {
      if (AppBundle == null)
        AppBundle = new g();
      g localg = AppBundle;
      return localg;
    }
    finally
    {
    }
  }

  public final String getBundle(String paramString)
  {
    String str = (String)this.b.get(paramString);
    if (str == null)
      str = "";
    return str;
  }

  public final void a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    this.b.put(f.d, paramString1);
    this.b.put(f.f, paramString2);
    this.b.put(f.e, paramString3);
    this.b.put(f.BundlesManagerImpl, paramString4);
    this.b.put(f.g, paramString5);
  }

  public final void b()
  {
    this.b.clear();
  }

  public final boolean getBundleName()
  {
    return !this.b.isEmpty();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.c.a.g
 * JD-Core Version:    0.6.2
 */