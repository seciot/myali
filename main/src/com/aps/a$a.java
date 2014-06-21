package com.aps;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.wifi.WifiManager;
import android.telephony.CellLocation;
import java.util.ArrayList;

class a$a extends BroadcastReceiver
{
  private a$a(a parama)
  {
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent == null);
    while (true)
    {
      return;
      String str = paramIntent.getAction();
      if (str.equals("android.net.wifi.SCAN_RESULTS"))
      {
        if (a.f(this.a) == null)
          continue;
        a.a(this.a, a.f(this.a).getScanResults());
        if (a.g(this.a) != null)
          continue;
        a.a(this.a, new ArrayList());
        return;
      }
      int n;
      if (str.equals("android.net.wifi.WIFI_STATE_CHANGED"))
      {
        if (a.f(this.a) == null)
          continue;
        n = 4;
      }
      try
      {
        int i1 = a.f(this.a).getWifiState();
        n = i1;
        switch (n)
        {
        case 2:
        case 3:
        default:
          return;
        case 0:
          a.h(this.a);
          return;
        case 1:
          label111: a.h(this.a);
          return;
        case 4:
        }
        a.h(this.a);
        return;
        if (str.equals("android.intent.action.SCREEN_ON"))
        {
          CellLocation.requestLocationUpdate();
          a.i(this.a);
          f.i = 15000L;
          f.j = 30000L;
          return;
        }
        if (str.equals("android.intent.action.SCREEN_OFF"))
        {
          if (a.j(this.a) < 5)
            continue;
          f.i = 30000L;
          f.j = 60000L;
          return;
        }
        if (str.equals("android.intent.action.AIRPLANE_MODE"))
        {
          a.a(this.a, n.getBundle(paramContext));
          return;
        }
        if (!str.equals("android.intent.action.BATTERY_CHANGED"))
          continue;
        int i = paramIntent.getIntExtra("level", 0);
        int j = paramIntent.getIntExtra("scale", 100);
        int k = paramIntent.getIntExtra("status", 0);
        int m = i * 100 / j;
        Object[] arrayOfObject = new Object[3];
        arrayOfObject[0] = "batt is ";
        arrayOfObject[1] = Integer.valueOf(m);
        arrayOfObject[2] = "%";
        n.getBundle(arrayOfObject);
        switch (k)
        {
        default:
          a.b(this.a, true);
          return;
        case 4:
        }
        if (m < 15)
        {
          if (a.j(this.a) >= 5)
          {
            a.b(this.a, false);
            return;
          }
          a.b(this.a, false);
          return;
        }
        a.b(this.a, true);
        return;
      }
      catch (SecurityException localSecurityException)
      {
        break label111;
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.aps.a.a
 * JD-Core Version:    0.6.2
 */