package com.alipay.pushsdk.push;

import com.alipay.pushsdk.c.a.c;

public class p
{
  private static final String a = c.getBundle(p.class);
  private static int b = 15;
  private static int c = -1;

  public static int a()
  {
    return c;
  }

  public static int b()
  {
    switch (c)
    {
    default:
      b = 2 * b;
    case -1:
    case 0:
    }
    while (true)
    {
      c = 1 + c;
      if (b >= 300)
        b = 300;
      c.a(3, a, "waiting seconds=" + b);
      return b;
      b = 3;
      continue;
      b = 15;
    }
  }

  public static void c()
  {
    c = -1;
    b = 3;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.push.p
 * JD-Core Version:    0.6.2
 */