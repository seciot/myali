package com.alipay.mobile.longlink.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;

public class j extends BroadcastReceiver
{
  private static final String a = com.alipay.mobile.longlink.c.a.getBundle(j.class);
  private LongLinkService b;

  public j(LongLinkService paramLongLinkService)
  {
    this.b = paramLongLinkService;
  }

  private static boolean a(Context paramContext)
  {
    NetworkInfo[] arrayOfNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getAllNetworkInfo();
    if (arrayOfNetworkInfo == null)
    {
      com.alipay.mobile.longlink.c.a.a(2, a, "isNetworkAvailable networkInfos Unavailable.");
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
      com.alipay.mobile.longlink.c.a.a(4, a, "isNetworkAvailable=" + bool);
      return bool;
      j++;
      break;
    }
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str = paramIntent.getAction();
    com.alipay.mobile.longlink.c.a.a(3, a, "onReceive() getAction=" + str);
    if (str.equals("android.net.conn.CONNECTIVITY_CHANGE"))
    {
      if (!a(paramContext))
        break label137;
      if (LongLinkService.d().o())
        LongLinkService.d().s();
    }
    else
    {
      return;
    }
    if ((LongLinkService.d().e() != null) && (LongLinkService.d().e().length() > 0) && (!LongLinkService.d().q()))
    {
      LongLinkService.d().b();
      return;
    }
    com.alipay.mobile.longlink.c.a.a(3, a, "onReceive() no valid user.");
    return;
    label137: com.alipay.mobile.longlink.c.a.a(3, a, "onReceive() Nothing to do.");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.longlink.service.j
 * JD-Core Version:    0.6.2
 */