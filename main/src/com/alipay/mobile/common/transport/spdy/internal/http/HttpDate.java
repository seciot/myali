package com.alipay.mobile.common.transport.spdy.internal.http;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

final class HttpDate
{
  private static final ThreadLocal a = new HttpDate.1();
  private static final String[] b = arrayOfString;
  private static final DateFormat[] c = new DateFormat[arrayOfString.length];

  static
  {
    String[] arrayOfString = { "EEEE, dd-MMM-yy HH:mm:ss zzz", "EEE MMM d HH:mm:ss yyyy", "EEE, dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MMM-yyyy HH-mm-ss z", "EEE, dd MMM yy HH:mm:ss z", "EEE dd-MMM-yyyy HH:mm:ss z", "EEE dd MMM yyyy HH:mm:ss z", "EEE dd-MMM-yyyy HH-mm-ss z", "EEE dd-MMM-yy HH:mm:ss z", "EEE dd MMM yy HH:mm:ss z", "EEE,dd-MMM-yy HH:mm:ss z", "EEE,dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MM-yyyy HH:mm:ss z", "EEE MMM d yyyy HH:mm:ss z" };
  }

  public static String format(Date paramDate)
  {
    return ((DateFormat)a.get()).format(paramDate);
  }

  public static Date parse(String paramString)
  {
    try
    {
      Date localDate2 = ((DateFormat)a.get()).parse(paramString);
      return localDate2;
    }
    catch (ParseException localParseException1)
    {
      while (true)
      {
        int j;
        Object localObject2;
        synchronized (b)
        {
          int i = b.length;
          j = 0;
          if (j >= i)
            break;
          localObject2 = c[j];
          if (localObject2 == null)
          {
            localObject2 = new SimpleDateFormat(b[j], Locale.US);
            c[j] = localObject2;
          }
        }
        try
        {
          Date localDate1 = ((DateFormat)localObject2).parse(paramString);
          return localDate1;
          localObject1 = finally;
          throw localObject1;
        }
        catch (ParseException localParseException2)
        {
          j++;
        }
      }
    }
    return null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.http.HttpDate
 * JD-Core Version:    0.6.2
 */