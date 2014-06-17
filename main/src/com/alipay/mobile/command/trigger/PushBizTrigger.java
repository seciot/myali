package com.alipay.mobile.command.trigger;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.alipay.mobile.command.engine.TaskExeService;
import com.alipay.mobile.command.model.TriggerTypeEnum;

public class PushBizTrigger extends BaseTrigger
{
  public void doReceive(Context paramContext, Intent paramIntent)
  {
    if ((paramIntent != null) && ("com.alipay.mobile.push.CMD_RESUPDATE".equals(paramIntent.getAction())))
    {
      String str1 = paramIntent.getStringExtra("push_ext");
      new Object[] { "PushTrigger recieive:", str1 };
      try
      {
        if ((!TextUtils.isEmpty(str1)) && (str1.matches("^\\{\"push_ext\":\"[0-9a-z]*#(true|false)(,[0-9a-z]*#(true|false))*\"\\}$")))
        {
          String str2 = str1.replace("{\"push_ext\":\"", "").replace("\"}", "");
          new Object[] { "Push Trigger output:", str2 };
          Intent localIntent = new Intent(paramContext, TaskExeService.class);
          localIntent.putExtra("trigger_type", TriggerTypeEnum.PUSH.getType());
          localIntent.putExtra("trigger_fm_context", str2);
          paramContext.startService(localIntent);
          return;
        }
        new Object[] { "执行push指令数据格式不正确.detail:", str1 };
        return;
      }
      catch (Exception localException)
      {
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.trigger.PushBizTrigger
 * JD-Core Version:    0.6.2
 */