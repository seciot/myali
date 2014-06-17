package com.alipay.mobile.security.gesture.service;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningTaskInfo;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.security.GestureService;
import com.alipay.mobile.security.gesture.util.GestureDataCenter;
import java.lang.ref.WeakReference;
import java.util.List;

public class ActivityResumeService extends BroadcastReceiver
{
  GestureService a;
  ActivityManager b;
  private final String c = "ActivityResumeService";

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str = paramIntent.getAction();
    new StringBuilder("收到了应用的广播类型： ").append(str).toString();
    if (this.b == null)
      this.b = ((ActivityManager)AlipayApplication.getInstance().getApplicationContext().getSystemService("activity"));
    if (this.a == null)
      this.a = ((GestureService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(GestureService.class.getName()));
    if ("com.alipay.mobile.framework.ACTIVITY_RESUME".equalsIgnoreCase(str))
      try
      {
        ComponentName localComponentName = ((ActivityManager.RunningTaskInfo)this.b.getRunningTasks(1).get(0)).topActivity;
        if (!GestureDataCenter.getInstance().isNeedAuthGesture())
          return;
        Activity localActivity = (Activity)AlipayApplication.getInstance().getMicroApplicationContext().getTopActivity().get();
        if ((localActivity != null) && (localActivity.getComponentName() != null))
        {
          GestureDataCenter.getInstance();
          if ((!"com.alipay.mobile.security.gesture.ui.GestureActivity_".equals(localActivity.getComponentName().getClassName())) && (localComponentName != null) && (paramContext.getPackageName().equalsIgnoreCase(localComponentName.getPackageName())))
          {
            this.a.startGestureIfNecessary(false);
            return;
          }
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.gesture.service.ActivityResumeService
 * JD-Core Version:    0.6.2
 */