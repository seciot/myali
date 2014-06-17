package com.alipay.mobile.mobilerechargeapp.utils;

import android.content.Context;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Validator
{
  public static void a(Context paramContext, View paramView)
  {
    try
    {
      ((InputMethodManager)paramContext.getSystemService("input_method")).hideSoftInputFromWindow(paramView.getWindowToken(), 0);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public static boolean a(String paramString)
  {
    if (paramString == null)
      return false;
    return Pattern.compile("1\\d{10}").matcher(paramString).matches();
  }

  public static boolean a(String paramString1, String paramString2)
  {
    if ((paramString1 == null) || (paramString2 == null))
      return false;
    return paramString1.equals(paramString2);
  }

  public static String b(String paramString)
  {
    return paramString.replaceAll("(.*)\\((.*)\\)", "$1");
  }

  public static void b(Context paramContext, View paramView)
  {
    if ((paramContext == null) || (paramView == null))
      return;
    paramView.requestFocus();
    ((InputMethodManager)paramContext.getSystemService("input_method")).showSoftInput(paramView, 0);
  }

  public static boolean c(String paramString)
  {
    return (paramString == null) || (paramString.trim().length() == 0);
  }

  public static String d(String paramString)
  {
    if (paramString != null)
    {
      if (paramString.matches("1\\d{10}"))
      {
        String str1 = paramString.substring(0, 3);
        String str2 = paramString.substring(7, paramString.length());
        paramString = str1 + "****" + str2;
      }
      return paramString;
    }
    return "";
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.utils.Validator
 * JD-Core Version:    0.6.2
 */