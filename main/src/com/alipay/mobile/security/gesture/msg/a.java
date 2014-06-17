package com.alipay.mobile.security.gesture.msg;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningTaskInfo;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.alipay.mobile.security.gesture.util.GestureDataCenter;
import java.util.List;

final class a extends BroadcastReceiver
{
  a(ChangedTimeReceiver paramChangedTimeReceiver)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    try
    {
      ComponentName localComponentName = ((ActivityManager.RunningTaskInfo)this.a.b.getRunningTasks(1).get(0)).topActivity;
      if ((localComponentName != null) && (ChangedTimeReceiver.access$000(this.a, paramContext)))
      {
        GestureDataCenter.getInstance();
        if ((!"com.alipay.mobile.security.gesture.ui.GestureActivity_".equalsIgnoreCase(localComponentName.getClassName())) && ((paramIntent.getAction().equalsIgnoreCase("android.intent.action.DATE_CHANGED")) || (paramIntent.getAction().equalsIgnoreCase("android.intent.action.TIME_SET"))))
        {
          GestureDataCenter.getInstance().setChangeTime(true);
          GestureDataCenter.getInstance().setNeedAuthGesture(true);
        }
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
 * Qualified Name:     com.alipay.mobile.security.gesture.msg.a
 * JD-Core Version:    0.6.2
 */