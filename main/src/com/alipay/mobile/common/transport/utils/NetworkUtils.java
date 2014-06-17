package com.alipay.mobile.common.transport.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import android.net.Proxy;
import org.apache.http.HttpHost;

public class NetworkUtils
{
  public static NetworkInfo getActiveNetworkInfo(Context paramContext)
  {
    return ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
  }

  public static int getNetType(Context paramContext)
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
    if (localNetworkInfo == null)
      return -1;
    return localNetworkInfo.getType();
  }

  public static HttpHost getProxy(Context paramContext)
  {
    NetworkInfo localNetworkInfo = getActiveNetworkInfo(paramContext);
    HttpHost localHttpHost = null;
    if (localNetworkInfo != null)
    {
      boolean bool = localNetworkInfo.isAvailable();
      localHttpHost = null;
      if (bool)
      {
        int i = localNetworkInfo.getType();
        localHttpHost = null;
        if (i == 0)
        {
          String str = Proxy.getDefaultHost();
          int j = Proxy.getDefaultPort();
          localHttpHost = null;
          if (str != null)
            localHttpHost = new HttpHost(str, j);
        }
      }
    }
    return localHttpHost;
  }

  public static boolean isNetworkAvailable(Context paramContext)
  {
    NetworkInfo[] arrayOfNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getAllNetworkInfo();
    if (arrayOfNetworkInfo == null)
      return false;
    int i = arrayOfNetworkInfo.length;
    int j = 0;
    if (j < i)
    {
      NetworkInfo localNetworkInfo = arrayOfNetworkInfo[j];
      if ((localNetworkInfo == null) || ((localNetworkInfo.getState() != NetworkInfo.State.CONNECTED) && (localNetworkInfo.getState() != NetworkInfo.State.CONNECTING)));
    }
    for (boolean bool = true; ; bool = false)
    {
      return bool;
      j++;
      break;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.utils.NetworkUtils
 * JD-Core Version:    0.6.2
 */