package com.alipay.android.app.util;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.telephony.TelephonyManager;
import android.telephony.gsm.GsmCellLocation;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.Locale;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class BaseHelper
{
  public static String a()
  {
    String str = d();
    int i = str.indexOf("-");
    if (i != -1)
      str = str.substring(0, i);
    int j = str.indexOf("\n");
    if (j != -1)
      str = str.substring(0, j);
    return "Linux " + str;
  }

  public static String a(Context paramContext)
  {
    return paramContext.getResources().getConfiguration().locale.toString();
  }

  public static String b()
  {
    return "https";
  }

  public static String b(Context paramContext)
  {
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay().getMetrics(localDisplayMetrics);
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(localDisplayMetrics.widthPixels);
    localStringBuilder.append("*");
    localStringBuilder.append(localDisplayMetrics.heightPixels);
    return localStringBuilder.toString();
  }

  public static String c()
  {
    Random localRandom = new Random();
    StringBuffer localStringBuffer = new StringBuffer();
    int i = 0;
    if (i < 24)
    {
      switch (localRandom.nextInt(3))
      {
      default:
      case 0:
      case 1:
      case 2:
      }
      while (true)
      {
        i++;
        break;
        localStringBuffer.append(String.valueOf((char)(int)Math.round(65.0D + 25.0D * Math.random())));
        continue;
        localStringBuffer.append(String.valueOf((char)(int)Math.round(97.0D + 25.0D * Math.random())));
        continue;
        localStringBuffer.append(String.valueOf(new Random().nextInt(10)));
      }
    }
    return localStringBuffer.toString();
  }

  public static String c(Context paramContext)
  {
    try
    {
      GsmCellLocation localGsmCellLocation = (GsmCellLocation)((TelephonyManager)paramContext.getSystemService("phone")).getCellLocation();
      if (localGsmCellLocation != null)
      {
        int i = localGsmCellLocation.getCid();
        int j = localGsmCellLocation.getLac();
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append(j);
        localStringBuilder.append(";");
        localStringBuilder.append(i);
        String str = localStringBuilder.toString();
        return str;
      }
    }
    catch (Exception localException)
    {
      LogUtils.a(localException);
    }
    return "-1;-1";
  }

  private static String d()
  {
    Matcher localMatcher;
    try
    {
      BufferedReader localBufferedReader = new BufferedReader(new FileReader("/proc/version"), 256);
      try
      {
        String str1 = localBufferedReader.readLine();
        localBufferedReader.close();
        localMatcher = Pattern.compile("\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+(?:@[^\\s.]+)?)[^)]*\\)\\s+\\((?:[^(]*\\([^)]*\\))?[^)]*\\)\\s+([^\\s]+)\\s+(?:PREEMPT\\s+)?(.+)").matcher(str1);
        if (!localMatcher.matches())
          return "Unavailable";
      }
      finally
      {
        localBufferedReader.close();
      }
    }
    catch (IOException localIOException)
    {
      return "Unavailable";
    }
    if (localMatcher.groupCount() < 4)
      return "Unavailable";
    String str2 = localMatcher.group(1) + "\n" + localMatcher.group(2) + " " + localMatcher.group(3) + "\n" + localMatcher.group(4);
    return str2;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.util.BaseHelper
 * JD-Core Version:    0.6.2
 */