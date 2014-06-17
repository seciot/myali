package org.android.agoo.service;

import android.content.Context;
import android.content.Intent;
import android.util.Log;

public class AgooWakeup
{
  public static void wakeup(Context paramContext)
  {
    if (paramContext != null)
      try
      {
        if (paramContext.checkCallingPermission("org.agoo.android.permission.MESSAGE") == 0)
        {
          Log.w("AgooWake", "checkCallingPermission(org.agoo.android.permission.MESSAGE) failed");
          return;
        }
        Intent localIntent = new Intent();
        localIntent.setAction("org.agoo.android.intent.action.PING");
        paramContext.bindService(localIntent, new AgooWakeup.1(paramContext), 1);
        return;
      }
      catch (Exception localException)
      {
        Log.w("AgooWake", "onPingMessage", localException);
      }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     org.android.agoo.service.AgooWakeup
 * JD-Core Version:    0.6.2
 */