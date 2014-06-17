package com.alipay.mobile.security.gesture.msg;

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
import java.util.List;

public class GestureMsgReceiver extends BroadcastReceiver
{
  public final String a = "GestureMsgReceiver";
  GestureService b;
  ActivityManager c;
  private long d = -1L;

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    try
    {
      String str = paramIntent.getAction();
      new StringBuilder("收到了应用的广播类型： ").append(str).toString();
      if (this.b == null)
        this.b = ((GestureService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(GestureService.class.getName()));
      if (this.c == null)
        this.c = ((ActivityManager)AlipayApplication.getInstance().getApplicationContext().getSystemService("activity"));
      if ("com.alipay.mobile.framework.ACTIVITY_START".equalsIgnoreCase(str))
      {
        long l = System.currentTimeMillis();
        new StringBuilder("currentTimes-leaveTimes").append(l - GestureDataCenter.getInstance().getLastUserLeavehint()).toString();
        ComponentName localComponentName = ((ActivityManager.RunningTaskInfo)this.c.getRunningTasks(1).get(0)).topActivity;
        if ((localComponentName != null) && (this.d > 0L) && (paramContext.getPackageName().equalsIgnoreCase(localComponentName.getPackageName())) && ((GestureDataCenter.getInstance().isChangeTime()) || (GestureDataCenter.getInstance().isOverrangingLeavehintTime())))
        {
          this.b.validateGesture();
          GestureDataCenter.getInstance().setNeedAuthGesture(true);
        }
        GestureDataCenter.getInstance().setLastUserLeavehint(l);
        this.d = -1L;
        return;
      }
      if ("com.alipay.mobile.framework.USERLEAVEHINT".equalsIgnoreCase(str))
      {
        this.d = System.currentTimeMillis();
        new StringBuilder("leaveTimes:").append(this.d).toString();
        GestureDataCenter.getInstance().setLastUserLeavehint(this.d);
        return;
      }
    }
    catch (Exception localException)
    {
      new StringBuilder("压后台广播出现异常").append(localException.toString()).toString();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.gesture.msg.GestureMsgReceiver
 * JD-Core Version:    0.6.2
 */