package com.alipay.mobile.common.utils;

public class SecurityUtil
{
  public static final String HIDEACCOUNT = "hideaccount";
  public static final String HIDEIDCARD = "hideidcard";
  public static final String HIDENAME = "hidename";

  public static String accountHide(String paramString1, String paramString2)
  {
    if (paramString1 != null)
    {
      String str3;
      String str4;
      if ("hideaccount".equals(paramString2))
        if (paramString1.contains("@"))
        {
          int j = paramString1.indexOf("@");
          str3 = paramString1.substring(0, j);
          str4 = paramString1.substring(j, paramString1.length());
          if (str3.length() >= 3)
            paramString1 = str3.substring(0, 3) + "***" + str4;
        }
      do
      {
        int i;
        do
        {
          do
          {
            return paramString1;
            return str3 + "***" + str4;
          }
          while (!paramString1.matches("1\\d{10}"));
          String str1 = paramString1.substring(0, 3);
          String str2 = paramString1.substring(7, paramString1.length());
          return str1 + "****" + str2;
          if (!"hidename".equals(paramString2))
            break;
          i = paramString1.length();
        }
        while (i <= 1);
        return "*" + paramString1.substring(1, i);
      }
      while (!"hideidcard".equals(paramString2));
      return paramString1.substring(0, 1) + "****************" + paramString1.substring(-1 + paramString1.length());
    }
    return "";
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.utils.SecurityUtil
 * JD-Core Version:    0.6.2
 */