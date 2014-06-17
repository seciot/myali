package android.taobao.service.appdevice.net.async;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;

public class NetworkHelper
{
  public static boolean checkNetWork(Context paramContext)
  {
    ConnectivityManager localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
    if (localConnectivityManager == null);
    NetworkInfo[] arrayOfNetworkInfo;
    do
    {
      return false;
      arrayOfNetworkInfo = localConnectivityManager.getAllNetworkInfo();
    }
    while (arrayOfNetworkInfo == null);
    int i = arrayOfNetworkInfo.length;
    int j = 0;
    if (j < i)
    {
      NetworkInfo localNetworkInfo = arrayOfNetworkInfo[j];
      if (localNetworkInfo != null)
      {
        NetworkInfo.State localState = localNetworkInfo.getState();
        if ((localState == null) || ((localState != NetworkInfo.State.CONNECTED) && (localState != NetworkInfo.State.CONNECTING)));
      }
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
 * Qualified Name:     android.taobao.service.appdevice.net.async.NetworkHelper
 * JD-Core Version:    0.6.2
 */