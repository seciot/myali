package com.alipay.mobile.command.trigger;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.alipay.mobile.command.engine.TaskExeService;
import com.alipay.mobile.command.model.TriggerTypeEnum;

public class SysEventChangeTrigger extends BaseTrigger
{
  public void doReceive(Context paramContext, Intent paramIntent)
  {
    int i = 1;
    Intent localIntent;
    if (paramIntent != null)
    {
      localIntent = new Intent(paramContext, TaskExeService.class);
      if (!"android.intent.action.USER_PRESENT".equals(paramIntent.getAction()))
        break label56;
      localIntent.putExtra("trigger_type", TriggerTypeEnum.USER_PRESENT.getType());
    }
    while (true)
    {
      if (i != 0)
        paramContext.startService(localIntent);
      return;
      label56: if ("android.intent.action.ACTION_POWER_CONNECTED".equals(paramIntent.getAction()))
      {
        localIntent.putExtra("trigger_type", TriggerTypeEnum.ACTION_POWER_CONNECTED.getType());
      }
      else if ("android.intent.action.PACKAGE_ADDED".equals(paramIntent.getAction()))
      {
        localIntent.putExtra("trigger_type", TriggerTypeEnum.PACKAGE_ADDED.getType());
        Uri localUri2 = paramIntent.getData();
        if (localUri2 != null)
        {
          String str2 = localUri2.getSchemeSpecificPart();
          boolean bool2 = paramIntent.getBooleanExtra("android.intent.extra.REPLACING", false);
          localIntent.putExtra("trigger_biz_context", "PACKAGE_NAME=" + str2 + "&INSTALL=PACKAGE_ADDED&REPLACE=" + bool2);
        }
        else
        {
          i = 0;
        }
      }
      else if ("android.intent.action.PACKAGE_REMOVED".equals(paramIntent.getAction()))
      {
        localIntent.putExtra("trigger_type", TriggerTypeEnum.PACKAGE_REMOVED.getType());
        Uri localUri1 = paramIntent.getData();
        if (localUri1 != null)
        {
          String str1 = localUri1.getSchemeSpecificPart();
          boolean bool1 = paramIntent.getBooleanExtra("android.intent.extra.REPLACING", false);
          localIntent.putExtra("trigger_biz_context", "PACKAGE_NAME=" + str1 + "&INSTALL=PACKAGE_REMOVED&REPLACE=" + bool1);
        }
        else
        {
          i = 0;
        }
      }
      else
      {
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = "system event,not match:";
        arrayOfObject[i] = paramIntent.getAction();
        i = 0;
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.trigger.SysEventChangeTrigger
 * JD-Core Version:    0.6.2
 */