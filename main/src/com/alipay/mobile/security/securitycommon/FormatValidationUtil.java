package com.alipay.mobile.security.securitycommon;

import com.alipay.mobile.common.utils.StringUtils;

public class FormatValidationUtil
{
  public static boolean a(String paramString)
  {
    boolean bool1 = StringUtils.isNotBlank(paramString);
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = paramString.matches("^\\d{15}(\\d{2}[0-9xX])?$");
      bool2 = false;
      if (bool3)
        bool2 = true;
    }
    return bool2;
  }

  public static boolean a(String paramString1, String paramString2)
  {
    return paramString1.contains(paramString2);
  }

  private static boolean a(String paramString, boolean paramBoolean)
  {
    boolean bool1 = StringUtils.isNotBlank(paramString);
    boolean bool2 = false;
    if (bool1)
    {
      int i = paramString.length();
      char[] arrayOfChar = paramString.toCharArray();
      int j = 0;
      if (j < i - 1)
      {
        if (paramBoolean)
        {
          int m = j + 1;
          arrayOfChar[m] = ((char)(arrayOfChar[m] - (j + 1)));
        }
        while (true)
        {
          j++;
          break;
          int k = j + 1;
          arrayOfChar[k] = ((char)(arrayOfChar[k] + (j + 1)));
        }
      }
      boolean bool3 = new String(arrayOfChar).matches("^(\\d)\\1+$");
      bool2 = false;
      if (bool3)
        bool2 = true;
    }
    return bool2;
  }

  public static boolean b(String paramString)
  {
    boolean bool1 = StringUtils.isNotBlank(paramString);
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = paramString.matches("^(\\d)\\1+$");
      bool2 = false;
      if (bool3)
        bool2 = true;
    }
    return bool2;
  }

  public static boolean c(String paramString)
  {
    return a(paramString, true);
  }

  public static boolean d(String paramString)
  {
    return a(paramString, false);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.securitycommon.FormatValidationUtil
 * JD-Core Version:    0.6.2
 */