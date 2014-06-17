package com.alipay.mobile.alipassapp.a;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public final class a
{
  public static final int a(Date paramDate1, Date paramDate2)
  {
    Date localDate1 = a("yyyy-MM-dd").parse(a(paramDate1));
    Date localDate2 = a("yyyy-MM-dd").parse(a(paramDate2));
    long l = localDate1.getTime();
    return (int)((localDate2.getTime() - l) / 1000L / 3600L / 24L);
  }

  private static String a(Date paramDate)
  {
    if (paramDate == null)
      return "";
    return a("yyyy-MM-dd").format(paramDate);
  }

  private static final DateFormat a(String paramString)
  {
    return new SimpleDateFormat(paramString);
  }

  public static Date a(String paramString1, String paramString2)
  {
    if (paramString1 == null)
      return null;
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat(paramString2);
    try
    {
      Date localDate = localSimpleDateFormat.parse(paramString1);
      return localDate;
    }
    catch (ParseException localParseException)
    {
      throw new IllegalArgumentException(localParseException);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.a.a
 * JD-Core Version:    0.6.2
 */