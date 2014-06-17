package com.aps;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiManager;
import java.util.List;
import java.util.Timer;

final class ai extends BroadcastReceiver
{
  private ai(ac paramac)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    if ((paramContext != null) && (paramIntent != null) && (ac.f(this.a) != null) && (ac.g(this.a) != null) && (ac.h(this.a) != null) && (paramIntent.getAction() != null) && ("android.net.wifi.SCAN_RESULTS".equals(paramIntent.getAction())))
    {
      List localList = ac.f(this.a).getScanResults();
      ac.a(this.a, localList);
      ac.h(this.a).clear();
      ac.a(this.a, System.currentTimeMillis());
      if ((localList != null) && (localList.size() > 0))
        for (int i = 0; i < localList.size(); i++)
        {
          ScanResult localScanResult = (ScanResult)localList.get(i);
          ac.h(this.a).add(localScanResult);
        }
      aj localaj = new aj(this);
      if (ac.g(this.a) != null)
      {
        ac.g(this.a).cancel();
        ac.a(this.a, null);
      }
      ac.a(this.a, new Timer());
      ac.g(this.a).schedule(localaj, ac.z());
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.aps.ai
 * JD-Core Version:    0.6.2
 */