package com.alipay.android.app.util;

import android.text.TextUtils;
import com.alipay.android.app.sys.GlobalContext;

public class StringUtil
{
  public static boolean a(CharSequence paramCharSequence)
  {
    if (TextUtils.isEmpty(paramCharSequence))
      return false;
    int i = paramCharSequence.length();
    for (int j = 0; ; j++)
    {
      if (j >= i)
        break label42;
      if (!Character.isDigit(paramCharSequence.charAt(j)))
        break;
    }
    label42: return true;
  }

  public static boolean a(String paramString)
  {
    if (paramString != null)
      paramString = paramString.trim();
    return (paramString == null) || ("".equals(paramString)) || (paramString.length() == 0);
  }

  public static String b(String paramString)
  {
    try
    {
      int i = paramString.lastIndexOf("&slot=\"");
      if (i > 0)
      {
        int j = i + "&slot=\"".length();
        String str = paramString.substring(j, j + 1);
        try
        {
          if (!str.equalsIgnoreCase("-"))
            GlobalContext.a().a(Integer.valueOf(str).intValue());
          return paramString.substring(0, i);
        }
        catch (Exception localException2)
        {
          while (true)
            localException2.printStackTrace();
        }
      }
    }
    catch (Exception localException1)
    {
      localException1.printStackTrace();
    }
    return paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.util.StringUtil
 * JD-Core Version:    0.6.2
 */