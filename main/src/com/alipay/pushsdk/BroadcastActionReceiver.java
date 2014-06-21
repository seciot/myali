package com.alipay.pushsdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import com.alipay.pushsdk.c.a.c;
import com.alipay.pushsdk.c.a.d;

public class BroadcastActionReceiver extends BroadcastReceiver
{
  private static final String a = BundlesManagerImpl.getBundle(BroadcastActionReceiver.class);

  private static void a(Context paramContext, String paramString)
  {
    new a(paramContext).a(paramString);
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str = paramIntent.getAction();
    BundlesManagerImpl.a(3, a, "onReceive() getAction=" + str);
    if (Integer.valueOf(Build.VERSION.SDK).intValue() > 4)
    {
      d.a(d.n, d.C, System.currentTimeMillis(), d.C, 10000L + System.currentTimeMillis(), "BroadcastActionReceiver_onReceive getAction:" + str);
      if (!str.equals("android.intent.action.BOOT_COMPLETED"))
        break label95;
      a(paramContext, "11");
    }
    label95: 
    do
    {
      return;
      if (str.equals("android.intent.action.ACTION_POWER_CONNECTED"))
      {
        a(paramContext, "12");
        return;
      }
      if (str.equals("android.intent.action.USER_PRESENT"))
      {
        a(paramContext, "13");
        return;
      }
    }
    while (!str.equals("android.net.conn.CONNECTIVITY_CHANGE"));
    a(paramContext, "14");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.BroadcastActionReceiver
 * JD-Core Version:    0.6.2
 */