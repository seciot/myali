package com.alipay.mobile.common.ui.contacts.util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class MobileNumberUtilz
{
  public static String formatMobileNum(String paramString)
  {
    StringBuffer localStringBuffer = new StringBuffer(paramString);
    if ((paramString == null) || (paramString.length() < 11))
      return localStringBuffer.toString();
    int i = paramString.length();
    localStringBuffer.insert(i - 4, " ");
    localStringBuffer.insert(i - 8, " ");
    return localStringBuffer.toString();
  }

  public static String getMobileNum(String paramString)
  {
    if (paramString == null);
    Matcher localMatcher;
    do
    {
      return null;
      String str = paramString.replaceAll(" ", "").replaceAll("-", "");
      localMatcher = Pattern.compile("^((\\+{0,1}86){0,1})1[0-9]{10}").matcher(str);
    }
    while (!localMatcher.matches());
    return localMatcher.group(0).replaceFirst("^(\\+{0,1}86)", "");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.contacts.util.MobileNumberUtilz
 * JD-Core Version:    0.6.2
 */