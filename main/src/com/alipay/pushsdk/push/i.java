package com.alipay.pushsdk.push;

import android.content.Context;
import com.alipay.pushsdk.c.d;

public final class i
{
  private Context a;

  public i(Context paramContext)
  {
    this.a = paramContext;
  }

  public final long a()
  {
    long l = 0L;
    String str = d.a(this.a).a("APP_LAUNCH_TIME");
    if ((str != null) && (str.length() > 0))
      l = Long.parseLong(str);
    return l;
  }

  public final void a(long paramLong)
  {
    d.a(this.a).a("APP_LAUNCH_TIME", String.valueOf(paramLong));
  }

  public final long b()
  {
    long l = 0L;
    String str = d.a(this.a).a("LAST_CONNECTED_TIME");
    if ((str != null) && (str.length() > 0))
      l = Long.parseLong(str);
    return l;
  }

  public final void b(long paramLong)
  {
    d.a(this.a).a("LAST_CONNECTED_TIME", String.valueOf(paramLong));
  }

  public final long c()
  {
    long l = 0L;
    String str = d.a(this.a).a("LAST_LOSTED_TIME");
    if ((str != null) && (str.length() > 0))
      l = Long.parseLong(str);
    return l;
  }

  public final void c(long paramLong)
  {
    d.a(this.a).a("LAST_LOSTED_TIME", String.valueOf(paramLong));
  }

  public final long d()
  {
    long l = 0L;
    String str = d.a(this.a).a("CREATE_CONNECT_TIME");
    if ((str != null) && (str.length() > 0))
      l = Long.parseLong(str);
    return l;
  }

  public final void d(long paramLong)
  {
    d.a(this.a).a("CREATE_CONNECT_TIME", String.valueOf(paramLong));
  }

  public final String e()
  {
    String str = d.a(this.a).a("trigger");
    if (str == null)
      str = "";
    return str;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.push.i
 * JD-Core Version:    0.6.2
 */