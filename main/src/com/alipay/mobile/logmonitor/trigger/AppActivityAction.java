package com.alipay.mobile.logmonitor.trigger;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.alipay.mobile.logmonitor.Logcat;

public class AppActivityAction extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ("com.alipay.mobile.framework.ACTIVITY_START".equalsIgnoreCase(paramIntent.getAction()))
      Logcat.start();
    if ("com.alipay.mobile.framework.USERLEAVEHINT".equalsIgnoreCase(paramIntent.getAction()))
    {
      Logcat.flushCurrentFile();
      Logcat.stop();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.logmonitor.trigger.AppActivityAction
 * JD-Core Version:    0.6.2
 */