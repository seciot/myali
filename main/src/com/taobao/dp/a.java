package com.taobao.dp;

import android.content.Context;

public final class a extends com.taobao.dp.b.a
{
  private static a e;

  private a(Context paramContext)
  {
    super(paramContext);
  }

  public static a a(Context paramContext)
  {
    if (e == null)
      e = new a(paramContext);
    return e;
  }

  public static void b()
  {
    com.taobao.dp.c.a.a = true;
    com.taobao.dp.b.a.a = "umidprod.stable.alibaba-inc.com";
    com.taobao.dp.b.a.b = "http://umidprod.stable.alibaba-inc.com/m/um.htm";
  }

  public final void a()
  {
    super.a();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.dp.a
 * JD-Core Version:    0.6.2
 */