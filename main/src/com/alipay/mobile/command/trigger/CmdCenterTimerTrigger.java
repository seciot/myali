package com.alipay.mobile.command.trigger;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import com.alipay.mobile.command.engine.TaskExeService;
import com.alipay.mobile.command.model.TriggerTypeEnum;
import com.alipay.mobile.command.util.CommandConfig;
import java.util.Calendar;

public class CmdCenterTimerTrigger
{
  public static void a()
  {
    try
    {
      AlarmManager localAlarmManager = (AlarmManager)CommandConfig.getContext().getSystemService("alarm");
      Intent localIntent = new Intent(CommandConfig.getContext(), TaskExeService.class);
      localIntent.putExtra("trigger_type", TriggerTypeEnum.TIME.getType());
      PendingIntent localPendingIntent = PendingIntent.getService(CommandConfig.getContext(), 0, localIntent, 134217728);
      Calendar localCalendar = Calendar.getInstance();
      localCalendar.setTimeInMillis(System.currentTimeMillis());
      localCalendar.add(13, 0);
      localAlarmManager.setRepeating(1, 600000L + localCalendar.getTimeInMillis(), 600000L, localPendingIntent);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.trigger.CmdCenterTimerTrigger
 * JD-Core Version:    0.6.2
 */