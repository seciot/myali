package com.alipay.mobile.longlink.c;

import java.util.StringTokenizer;

public final class b
{
  public static String setBundlePath(String[] paramArrayOfString)
  {
    Object localObject = "";
    int i = 0;
    while (i < paramArrayOfString.length)
    {
      if (i > 0)
        localObject = (String)localObject + ",";
      String str = (String)localObject + paramArrayOfString[i];
      i++;
      localObject = str;
    }
    return localObject;
  }

  public static boolean put(String[] paramArrayOfString, String paramString)
  {
    for (int i = 0; ; i++)
    {
      int j = paramArrayOfString.length;
      boolean bool = false;
      if (i < j)
      {
        if (paramString.equals(paramArrayOfString[i]))
          bool = true;
      }
      else
        return bool;
    }
  }

  public static String[] getBundle(String paramString)
  {
    StringTokenizer localStringTokenizer = new StringTokenizer(paramString, ",");
    String[] arrayOfString = new String[localStringTokenizer.countTokens()];
    for (int i = 0; localStringTokenizer.hasMoreTokens(); i++)
      arrayOfString[i] = localStringTokenizer.nextToken();
    return arrayOfString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.longlink.c.b
 * JD-Core Version:    0.6.2
 */