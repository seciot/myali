package com.alipay.android.app;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.alipay.android.app.helper.MspConfig;
import com.alipay.android.app.monitor.MonitorThread;
import com.alipay.android.app.monitor.TaskManager;
import com.alipay.android.app.net.MspHttpClient;
import com.alipay.android.app.sys.GlobalContext;

public final class AlarmReciver extends BroadcastReceiver
{
  private static boolean a = false;

  public static void a(Context paramContext)
  {
    if (a)
      return;
    a = true;
    AlarmManager localAlarmManager = (AlarmManager)paramContext.getSystemService("alarm");
    Intent localIntent = new Intent(paramContext, AlarmReciver.class);
    localIntent.setAction("alipay.intent.action.MONITOR");
    PendingIntent localPendingIntent = PendingIntent.getBroadcast(paramContext, 0, localIntent, 0);
    localAlarmManager.setRepeating(0, 60000L + System.currentTimeMillis(), 10800000L, localPendingIntent);
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    GlobalContext.a().a(paramContext, MspConfig.u());
    try
    {
      MonitorThread.b();
      String str = paramIntent.getAction();
      if ((!"android.intent.action.PACKAGE_ADDED".equals(str)) && (!"android.intent.action.PACKAGE_REMOVED".equals(str)) && ("alipay.intent.action.MONITOR".equals(str)))
      {
        TaskManager.a().a("monitor");
        TaskManager.a().a("lbs");
      }
      MspHttpClient.a().b();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.AlarmReciver
 * JD-Core Version:    0.6.2
 */