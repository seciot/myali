package com.alipay.mobile.common.helper;

public class HideUtils
{
  public static final String HIDEACCOUNT = "hideaccount";
  public static final String HIDENAME = "hidename";

  public static String hide(String paramString1, String paramString2)
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
      int i;
      do
      {
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
        }
        while (!"hidename".equals(paramString2));
        i = paramString1.length();
      }
      while (i <= 1);
      return "*" + paramString1.substring(1, i);
    }
    return "";
  }

  public static boolean isHideAccount(String paramString)
  {
    if (paramString == null)
      return false;
    return paramString.contains("***");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.helper.HideUtils
 * JD-Core Version:    0.6.2
 */