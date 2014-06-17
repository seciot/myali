package android.support.v4.net;

import android.net.ConnectivityManager;

class ConnectivityManagerCompat$JellyBeanConnectivityManagerCompatImpl
  implements ConnectivityManagerCompat.ConnectivityManagerCompatImpl
{
  public boolean isActiveNetworkMetered(ConnectivityManager paramConnectivityManager)
  {
    return ConnectivityManagerCompatJellyBean.isActiveNetworkMetered(paramConnectivityManager);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.net.ConnectivityManagerCompat.JellyBeanConnectivityManagerCompatImpl
 * JD-Core Version:    0.6.2
 */