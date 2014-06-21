package com.alipay.mobile.a.a;

public final class a
{
  public static String getBundle(String paramString)
  {
    if ((paramString != null) && (paramString.length() == 11))
      paramString = paramString.substring(0, 3) + " " + paramString.substring(3, 7) + " " + paramString.substring(7);
    return paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.a.a.a
 * JD-Core Version:    0.6.2
 */