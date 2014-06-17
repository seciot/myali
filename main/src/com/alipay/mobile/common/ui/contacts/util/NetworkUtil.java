package com.alipay.mobile.common.ui.contacts.util;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.alipay.mobile.framework.AlipayApplication;

public class NetworkUtil
{
  public static boolean isGoodNetwork()
  {
    return ((ConnectivityManager)AlipayApplication.getInstance().getSystemService("connectivity")).getNetworkInfo(1).isConnected();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.contacts.util.NetworkUtil
 * JD-Core Version:    0.6.2
 */