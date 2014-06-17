package com.alipay.mobile.common.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import java.util.HashMap;

public class ConnectionUtil
{
  public static final String TYPE_3GNET = "3gnet";
  public static final String TYPE_3GWAP = "3gwap";
  public static final String TYPE_CMNET = "cmnet";
  public static final String TYPE_CMWAP = "cmwap";
  public static final String TYPE_CTNET = "ctnet";
  public static final String TYPE_CTWAP = "ctwap";
  public static final String TYPE_UNINET = "uninet";
  public static final String TYPE_UNIWAP = "uniwap";
  public static final String TYPE_WIFI = "wifi";
  private static final HashMap a;

  static
  {
    HashMap localHashMap = new HashMap();
    a = localHashMap;
    localHashMap.clear();
    a.put("wifi", "0");
    a.put("cmwap", "1");
    a.put("cmnet", "2");
    a.put("uniwap", "3");
    a.put("uninet", "4");
    a.put("ctnet", "5");
    a.put("ctwap", "6");
    a.put("3gnet", "7");
    a.put("3gwap", "8");
  }

  public static int getConnType(Context paramContext)
  {
    int i;
    try
    {
      ConnectivityManager localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
      if (localConnectivityManager != null)
      {
        NetworkInfo localNetworkInfo = localConnectivityManager.getActiveNetworkInfo();
        if ((localNetworkInfo != null) && (localNetworkInfo.isAvailable()))
        {
          String str1 = localNetworkInfo.getTypeName();
          if (str1.equalsIgnoreCase("WIFI"))
            return 0;
          if (str1.equalsIgnoreCase("MOBILE"))
          {
            String str2 = localNetworkInfo.getExtraInfo().toLowerCase();
            return Integer.valueOf((String)a.get(str2)).intValue();
          }
          i = -1;
          if (!str1.contains("777"))
            break label122;
          boolean bool = isWapAPN();
          if (bool)
            return 6;
          return 5;
        }
      }
      return 0;
    }
    catch (Exception localException)
    {
      i = 0;
    }
    label122: return i;
  }

  public static String getWapIP()
  {
    String str = Proxy.getDefaultHost();
    if (str == null)
      str = "10.0.0.172";
    return str;
  }

  public static int getWapPort()
  {
    int i = Proxy.getDefaultPort();
    if (i == -1)
      i = 80;
    return i;
  }

  public static boolean isWapAPN()
  {
    String str = getWapIP();
    int i = getWapPort();
    return (str != null) && (!str.equals("")) && (i != -1);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.utils.ConnectionUtil
 * JD-Core Version:    0.6.2
 */