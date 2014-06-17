package com.alipay.mobile.common.utils;

public class ViewUtil
{
  public static String maskString(String paramString1, String paramString2, int paramInt1, int paramInt2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramString2.length() > 1)
      paramString2 = paramString2.substring(0, 1);
    for (int i = 0; i < paramInt2; i++)
      localStringBuilder.append(paramString2);
    return paramString1.substring(0, paramInt1) + localStringBuilder.toString() + paramString1.substring(paramInt1 + paramInt2);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.utils.ViewUtil
 * JD-Core Version:    0.6.2
 */