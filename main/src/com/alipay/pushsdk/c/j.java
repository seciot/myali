package com.alipay.pushsdk.c;

import com.alipay.pushsdk.c.a.c;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class j
{
  private static final String a = c.getBundle(j.class);

  public static String a()
  {
    return new SimpleDateFormat("yyyyMMddHHmmssSSS", Locale.getDefault()).format(new Date());
  }

  public static String a(long paramLong)
  {
    return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.S", Locale.getDefault()).format(Long.valueOf(paramLong));
  }

  public static boolean a(long paramLong1, long paramLong2)
  {
    long l = (System.currentTimeMillis() - paramLong1) / 1000L;
    c.a(4, a, "isBetweenTime compareTime=" + paramLong2 + ", between=" + l);
    boolean bool1 = l < paramLong2;
    boolean bool2 = false;
    if (!bool1)
      bool2 = true;
    return bool2;
  }

  public static String b()
  {
    Date localDate = new Date();
    return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault()).format(localDate).substring(11, 13);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.c.j
 * JD-Core Version:    0.6.2
 */