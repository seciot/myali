package com.alipay.pushsdk.c;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import java.util.Locale;

public class c
{
  private static final String a = com.alipay.pushsdk.c.a.c.getBundle(c.class);

  public static String a(Context paramContext)
  {
    String str2;
    try
    {
      NetworkInfo localNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
      if (localNetworkInfo != null)
      {
        String str1 = localNetworkInfo.getTypeName();
        if ((str1 != null) && ("wifi".equals(str1.toLowerCase(Locale.US))))
          return "wifi";
        str2 = localNetworkInfo.getExtraInfo();
        if (str2 != null)
        {
          int i = str2.toLowerCase(Locale.getDefault()).length();
          if (i > 0)
            break label84;
        }
      }
      return "unknown";
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
    label84: return str2;
  }

  public static boolean b(Context paramContext)
  {
    NetworkInfo[] arrayOfNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getAllNetworkInfo();
    if (arrayOfNetworkInfo == null)
    {
      com.alipay.pushsdk.c.a.c.a(2, a, "isNetworkAvailable networkInfos Unavailable.");
      return false;
    }
    int i = arrayOfNetworkInfo.length;
    int j = 0;
    if (j < i)
    {
      NetworkInfo localNetworkInfo = arrayOfNetworkInfo[j];
      if ((localNetworkInfo == null) || ((localNetworkInfo.getState() != NetworkInfo.State.CONNECTED) && (localNetworkInfo.getState() != NetworkInfo.State.CONNECTING)));
    }
    for (boolean bool = true; ; bool = false)
    {
      com.alipay.pushsdk.c.a.c.a(4, a, "isNetworkAvailable=" + bool);
      return bool;
      j++;
      break;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.c.c
 * JD-Core Version:    0.6.2
 */