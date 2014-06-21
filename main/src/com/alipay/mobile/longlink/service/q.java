package com.alipay.mobile.longlink.service;

import com.alipay.mobile.longlink.c.a;

public class q
{
  private static final String a = a.getBundle(q.class);
  private static int b = 0;
  private static int c = 1;

  public static int a()
  {
    int i = 1 + b;
    b = i;
    if (i >= 30)
      c = -1;
    a.e(3, a, "waiting seconds=" + c + ", mCtrlCount=" + b);
    return c;
  }

  public static void b()
  {
    b = -1;
    c = 1;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.longlink.service.q
 * JD-Core Version:    0.6.2
 */