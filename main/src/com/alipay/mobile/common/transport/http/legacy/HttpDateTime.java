package com.alipay.mobile.common.transport.http.legacy;

import android.text.format.Time;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class HttpDateTime
{
  private static final Pattern a = Pattern.compile("([0-9]{1,2})[- ]([A-Za-z]{3,9})[- ]([0-9]{2,4})[ ]([0-9]{1,2}:[0-9][0-9]:[0-9][0-9])");
  private static final Pattern b = Pattern.compile("[ ]([A-Za-z]{3,9})[ ]+([0-9]{1,2})[ ]([0-9]{1,2}:[0-9][0-9]:[0-9][0-9])[ ]([0-9]{2,4})");

  private static int a(String paramString)
  {
    if (paramString.length() == 2)
      return 10 * ('\0*0' + paramString.charAt(0)) + ('\0*0' + paramString.charAt(1));
    return '\0*0' + paramString.charAt(0);
  }

  private static int b(String paramString)
  {
    int i = -291 + (Character.toLowerCase(paramString.charAt(0)) + Character.toLowerCase(paramString.charAt(1)) + Character.toLowerCase(paramString.charAt(2)));
    int j = 0;
    switch (i)
    {
    default:
      throw new IllegalArgumentException();
    case 10:
      j = 1;
    case 22:
      return j;
    case 29:
      return 2;
    case 32:
      return 3;
    case 36:
      return 4;
    case 42:
      return 5;
    case 40:
      return 6;
    case 26:
      return 7;
    case 37:
      return 8;
    case 35:
      return 9;
    case 48:
      return 10;
    case 9:
    }
    return 11;
  }

  private static int c(String paramString)
  {
    if (paramString.length() == 2)
    {
      int i = 10 * ('\0*0' + paramString.charAt(0)) + ('\0*0' + paramString.charAt(1));
      if (i >= 70)
        return i + 1900;
      return i + 2000;
    }
    if (paramString.length() == 3)
      return 1900 + (100 * ('\0*0' + paramString.charAt(0)) + 10 * ('\0*0' + paramString.charAt(1)) + ('\0*0' + paramString.charAt(2)));
    if (paramString.length() == 4)
      return 1000 * ('\0*0' + paramString.charAt(0)) + 100 * ('\0*0' + paramString.charAt(1)) + 10 * ('\0*0' + paramString.charAt(2)) + ('\0*0' + paramString.charAt(3));
    return 1970;
  }

  private static HttpDateTime.TimeOfDay d(String paramString)
  {
    int i = '\0*0' + paramString.charAt(0);
    int j;
    if (paramString.charAt(1) != ':')
    {
      int i5 = i * 10;
      j = 2;
      i = i5 + ('\0*0' + paramString.charAt(1));
    }
    while (true)
    {
      int k = j + 1;
      int m = k + 1;
      int n = 10 * ('\0*0' + paramString.charAt(k));
      int i1 = m + 1;
      int i2 = n + ('\0*0' + paramString.charAt(m));
      int i3 = i1 + 1;
      int i4 = i3 + 1;
      return new HttpDateTime.TimeOfDay(i, i2, 10 * ('\0*0' + paramString.charAt(i3)) + ('\0*0' + paramString.charAt(i4)));
      j = 1;
    }
  }

  public static long parse(String paramString)
  {
    int i = 1;
    Matcher localMatcher1 = a.matcher(paramString);
    int j;
    int m;
    Object localObject;
    int n;
    if (localMatcher1.find())
    {
      int i1 = a(localMatcher1.group(i));
      j = b(localMatcher1.group(2));
      m = c(localMatcher1.group(3));
      localObject = d(localMatcher1.group(4));
      n = i1;
      if (m < 2038)
        break label194;
      m = 2038;
      j = 0;
    }
    while (true)
    {
      Time localTime = new Time("UTC");
      localTime.set(((HttpDateTime.TimeOfDay)localObject).second, ((HttpDateTime.TimeOfDay)localObject).minute, ((HttpDateTime.TimeOfDay)localObject).hour, i, j, m);
      return localTime.toMillis(false);
      Matcher localMatcher2 = b.matcher(paramString);
      if (localMatcher2.find())
      {
        j = b(localMatcher2.group(i));
        int k = a(localMatcher2.group(2));
        HttpDateTime.TimeOfDay localTimeOfDay = d(localMatcher2.group(3));
        m = c(localMatcher2.group(4));
        localObject = localTimeOfDay;
        n = k;
        break;
      }
      throw new IllegalArgumentException();
      label194: i = n;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.http.legacy.HttpDateTime
 * JD-Core Version:    0.6.2
 */