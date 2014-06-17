package com.alipay.pushsdk.push;

import android.content.Context;
import com.alipay.pushsdk.c.d;

public final class h
{
  private Context a;

  public h(Context paramContext)
  {
    this.a = paramContext;
  }

  public final String a()
  {
    String str = d.a(this.a).a("userId");
    if (str == null)
      str = "";
    return str;
  }

  public final void a(String paramString)
  {
    d.a(this.a).a("userId", paramString);
  }

  public final String b()
  {
    String str = d.a(this.a).a("channelId");
    if (str == null)
      str = "";
    return str;
  }

  public final void b(String paramString)
  {
    d.a(this.a).a("channelId", paramString);
  }

  public final String c()
  {
    String str = d.a(this.a).a("versionId");
    if (str == null)
      str = "";
    return str;
  }

  public final void c(String paramString)
  {
    d.a(this.a).a("versionId", paramString);
  }

  public final String d()
  {
    String str = d.a(this.a).a("utdId");
    if (str == null)
      str = "";
    return str;
  }

  public final void d(String paramString)
  {
    d.a(this.a).a("clientId", paramString);
  }

  public final String e()
  {
    String str = d.a(this.a).a("msptId");
    if (str == null)
      str = "";
    return str;
  }

  public final void e(String paramString)
  {
    d.a(this.a).a("utdId", paramString);
  }

  public final void f(String paramString)
  {
    d.a(this.a).a("msptId", paramString);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.push.h
 * JD-Core Version:    0.6.2
 */