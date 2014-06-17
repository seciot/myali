package com.alipay.mobile.core.app.impl;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.support.v4.content.LocalBroadcastManager;
import com.alipay.mobile.common.logging.LogCatLog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class LocalBroadcastManagerWrapper
{
  private static String a = "LocalBroadcastManagerWrapper";
  private static LocalBroadcastManager c;
  private static LocalBroadcastManagerWrapper d;
  private List<BroadcastReceiver> b = new ArrayList();

  private LocalBroadcastManagerWrapper(Context paramContext)
  {
    c = LocalBroadcastManager.getInstance(paramContext);
  }

  public static LocalBroadcastManagerWrapper getInstance(Context paramContext)
  {
    try
    {
      if (d == null)
        d = new LocalBroadcastManagerWrapper(paramContext);
      LocalBroadcastManagerWrapper localLocalBroadcastManagerWrapper = d;
      return localLocalBroadcastManagerWrapper;
    }
    finally
    {
    }
  }

  public void close()
  {
    Iterator localIterator = this.b.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
      {
        this.b.clear();
        return;
      }
      BroadcastReceiver localBroadcastReceiver = (BroadcastReceiver)localIterator.next();
      if (localBroadcastReceiver != null)
        c.unregisterReceiver(localBroadcastReceiver);
    }
  }

  public void registerReceiver(BroadcastReceiver paramBroadcastReceiver, IntentFilter paramIntentFilter)
  {
    Iterator localIterator = paramIntentFilter.actionsIterator();
    while (true)
    {
      if (!localIterator.hasNext())
      {
        this.b.add(paramBroadcastReceiver);
        c.registerReceiver(paramBroadcastReceiver, paramIntentFilter);
        return;
      }
      LogCatLog.v(a, "registerReceiver: " + paramBroadcastReceiver.getClass().getName() + ", action: " + (String)localIterator.next());
    }
  }

  public void unregisterReceiver(BroadcastReceiver paramBroadcastReceiver)
  {
    c.unregisterReceiver(paramBroadcastReceiver);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.core.app.impl.LocalBroadcastManagerWrapper
 * JD-Core Version:    0.6.2
 */