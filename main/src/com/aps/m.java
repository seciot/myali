package com.aps;

import java.text.DecimalFormat;
import java.text.SimpleDateFormat;

public class m
{
  private static m a = null;
  private static DecimalFormat b = null;
  private static SimpleDateFormat c = null;

  static String a(Object paramObject, String paramString)
  {
    if (b == null)
      b = new DecimalFormat("#");
    b.applyPattern(paramString);
    return b.format(paramObject);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.aps.m
 * JD-Core Version:    0.6.2
 */