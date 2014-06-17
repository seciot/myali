package com.alipay.mobile.quinox.utils;

public final class b
{
  public static String a(String paramString1, String paramString2)
  {
    if ((paramString1 == null) || (paramString2 == null))
      return null;
    StringBuilder localStringBuilder = new StringBuilder(80);
    localStringBuilder.append(paramString2);
    if (!paramString2.endsWith("/"))
      localStringBuilder.append("/");
    int i = paramString1.lastIndexOf("/");
    if (i >= 0)
      paramString1 = paramString1.substring(i + 1);
    int j = paramString1.lastIndexOf(".");
    if (j < 0)
      localStringBuilder.append(paramString1);
    while (true)
    {
      localStringBuilder.append(".dex");
      return localStringBuilder.toString();
      localStringBuilder.append(paramString1, 0, j);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.quinox.utils.b
 * JD-Core Version:    0.6.2
 */