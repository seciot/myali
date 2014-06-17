package com.alipay.android.mini.util;

import android.content.Context;
import android.text.TextUtils;
import com.alipay.android.app.sys.GlobalContext;
import com.alipay.android.app.tid.TidInfo;

public class ActionUtil
{
  private static String a = "#@";
  private static String b = "@#";

  public static String a(String paramString1, String paramString2)
  {
    int i = paramString1.indexOf(a);
    if (i <= 0)
      return paramString1;
    StringBuilder localStringBuilder = new StringBuilder();
    int j = paramString1.lastIndexOf(b);
    String str = paramString1.substring(0, i);
    if (!TextUtils.isEmpty(str))
      localStringBuilder.append(str);
    localStringBuilder.append(" " + paramString2);
    if ((j > 0) && (paramString1.length() > j + b.length()))
      localStringBuilder.append(paramString1.substring(j + b.length()));
    return localStringBuilder.toString();
  }

  public static String[] a(String paramString)
  {
    int i = 1 + paramString.indexOf('(');
    int j = paramString.lastIndexOf(')');
    if ((i == 0) || (j == -1))
      return null;
    String[] arrayOfString = paramString.substring(i, j).split(",");
    if (arrayOfString != null)
      for (int k = 0; k < arrayOfString.length; k++)
        if (!TextUtils.isEmpty(arrayOfString[k]))
        {
          arrayOfString[k] = arrayOfString[k].trim();
          arrayOfString[k] = arrayOfString[k].replaceAll("'", "").replaceAll("\"", "");
        }
    return arrayOfString;
  }

  public static void b(String paramString)
  {
    String[] arrayOfString = a(paramString);
    if (arrayOfString.length != 3);
    Context localContext;
    TidInfo localTidInfo;
    do
    {
      do
        return;
      while (!TextUtils.equals("tid", arrayOfString[0]));
      localContext = GlobalContext.a().b();
      localTidInfo = TidInfo.g();
    }
    while ((TextUtils.isEmpty(arrayOfString[1])) || (TextUtils.isEmpty(arrayOfString[2])));
    localTidInfo.a(arrayOfString[1]);
    localTidInfo.b(arrayOfString[2]);
    localTidInfo.a(localContext);
  }

  public static String c(String paramString)
  {
    if (TextUtils.isEmpty(paramString));
    while ((!paramString.contains(a)) && (!paramString.contains(b)))
      return null;
    return paramString.substring(paramString.indexOf(a) + a.length(), paramString.lastIndexOf(b));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.util.ActionUtil
 * JD-Core Version:    0.6.2
 */