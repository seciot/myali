package com.alipay.android.app.net;

import com.alipay.android.app.IAppConfig;
import com.alipay.android.app.sys.GlobalContext;
import com.alipay.android.app.util.LogUtils;

public class Envelope
{
  private String a;
  private String b;
  private String c;
  private String d;
  private String e = "com.alipay.quickpay";

  public final String a()
  {
    return this.e;
  }

  public final void a(String paramString)
  {
    this.e = paramString;
  }

  public final String b()
  {
    return this.a;
  }

  public final void b(String paramString)
  {
    boolean bool = GlobalContext.a().c().j();
    new StringBuilder("filterHost, GlobalConstant.PRE = ").append(bool).toString();
    LogUtils.c();
    if (bool)
    {
      int i = paramString.indexOf(".");
      if (i > 0)
      {
        String str = paramString.substring(0, i);
        if (!str.endsWith("pre"))
          paramString = str + "pre" + paramString.substring(i);
      }
    }
    this.a = paramString;
  }

  public final String c()
  {
    return this.b;
  }

  public final void c(String paramString)
  {
    this.b = paramString;
  }

  public final String d()
  {
    return this.c;
  }

  public final void d(String paramString)
  {
    this.c = paramString;
  }

  public final String e()
  {
    return this.d;
  }

  public final void e(String paramString)
  {
    this.d = paramString;
  }

  public String toString()
  {
    return "requestUrl = " + this.a + ", namespace = " + this.b + ", apiName = " + this.c + ", apiVersion = " + this.d;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.net.Envelope
 * JD-Core Version:    0.6.2
 */