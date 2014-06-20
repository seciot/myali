package com.taobao.security;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;

public class NetWorkReceiver extends BroadcastReceiver
{
  private static boolean a = false;
  private static Object b = new Object();

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (a);
    ConnectivityManager localConnectivityManager;
    do
    {
      return;
      localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
    }
    while (localConnectivityManager == null);
    NetworkInfo localNetworkInfo1 = localConnectivityManager.getNetworkInfo(1);
    if (localNetworkInfo1 != null);
    for (NetworkInfo.State localState1 = localNetworkInfo1.getState(); ; localState1 = null)
      while (true)
      {
        NetworkInfo localNetworkInfo2 = localConnectivityManager.getNetworkInfo(0);
        NetworkInfo.State localState2 = null;
        if (localNetworkInfo2 != null)
          localState2 = localNetworkInfo2.getState();
        if ((localState1 == null) || (localState2 == null) || ((NetworkInfo.State.CONNECTED != localState1) && (NetworkInfo.State.CONNECTED != localState2)))
          break;
        synchronized (b)
        {
          boolean bool = a;
          if (bool)
            break;
          new Thread(new NetWorkReceiver.AppBundle(this, paramContext)).start();
          return;
        }
      }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.security.NetWorkReceiver
 * JD-Core Version:    0.6.2
 */