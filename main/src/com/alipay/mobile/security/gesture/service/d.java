package com.alipay.mobile.security.gesture.service;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningTaskInfo;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.alipay.mobile.framework.service.ext.security.GestureService;
import com.alipay.mobile.security.gesture.util.GestureDataCenter;
import java.util.List;

final class d extends BroadcastReceiver
{
  d(ScreenOnOffService paramScreenOnOffService)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    try
    {
      ComponentName localComponentName = ((ActivityManager.RunningTaskInfo)this.a.b.getRunningTasks(1).get(0)).topActivity;
      if (localComponentName != null)
      {
        GestureDataCenter.getInstance();
        if ((!"com.alipay.mobile.security.gesture.ui.GestureActivity_".equalsIgnoreCase(localComponentName.getClassName())) && (paramContext.getPackageName().equalsIgnoreCase(localComponentName.getPackageName())) && (paramIntent.getAction().equalsIgnoreCase("android.intent.action.SCREEN_OFF")) && (!localComponentName.getShortClassName().startsWith("com.alipay.android.app.activity")))
          this.a.a.validateGesture();
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.gesture.service.d
 * JD-Core Version:    0.6.2
 */