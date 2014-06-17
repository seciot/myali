package com.alipay.android.app.display.uielement;

import java.net.URLDecoder;
import java.net.URLEncoder;

public final class ValueItem
{
  private String a;
  private String b;

  public ValueItem(String paramString)
  {
    if ((paramString == null) || ("".equals(paramString)));
    String[] arrayOfString;
    do
    {
      return;
      arrayOfString = paramString.split("=");
    }
    while (arrayOfString.length != 2);
    this.a = b(arrayOfString[0]);
    this.b = b(arrayOfString[1]);
  }

  public ValueItem(String paramString1, String paramString2)
  {
    this.a = paramString1;
    this.b = paramString2;
  }

  private static String a(String paramString)
  {
    if ((paramString == null) || ("".equals(paramString)))
      return "";
    try
    {
      String str = URLEncoder.encode(paramString, "UTF-8");
      return str;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return paramString;
  }

  private static String b(String paramString)
  {
    if ((paramString == null) || ("".equals(paramString)))
      return "";
    try
    {
      String str = URLDecoder.decode(paramString, "UTF-8");
      return str;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return paramString;
  }

  public final String a()
  {
    this.a = a(this.a);
    this.b = a(this.b);
    return this.a + "=" + this.b;
  }

  public final String b()
  {
    return this.a;
  }

  public final String c()
  {
    return this.b;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.ValueItem
 * JD-Core Version:    0.6.2
 */