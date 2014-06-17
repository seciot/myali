package com.alipay.mobile.common.utils;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class TextUtil
{
  public static String ToSBC(String paramString)
  {
    char[] arrayOfChar = paramString.toCharArray();
    int i = 0;
    if (i < arrayOfChar.length)
    {
      if (arrayOfChar[i] == '　')
        arrayOfChar[i] = ' ';
      while (true)
      {
        i++;
        break;
        if ((arrayOfChar[i] > 65280) && (arrayOfChar[i] < 65375))
          arrayOfChar[i] = ((char)(arrayOfChar[i] - 65248));
      }
    }
    return new String(arrayOfChar);
  }

  public static String stringFilter(String paramString)
  {
    String str = paramString.replaceAll("【", "[").replaceAll("】", "]").replaceAll("！", "!").replaceAll("：", ":");
    return Pattern.compile("[『』]").matcher(str).replaceAll("").trim();
  }

  public static String toDBC(String paramString)
  {
    char[] arrayOfChar = paramString.toCharArray();
    int i = 0;
    if (i < arrayOfChar.length)
    {
      if (arrayOfChar[i] == '　')
        arrayOfChar[i] = ' ';
      while (true)
      {
        i++;
        break;
        if ((arrayOfChar[i] > 65280) && (arrayOfChar[i] < 65375))
          arrayOfChar[i] = ((char)(arrayOfChar[i] - 65248));
      }
    }
    return new String(arrayOfChar);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.utils.TextUtil
 * JD-Core Version:    0.6.2
 */