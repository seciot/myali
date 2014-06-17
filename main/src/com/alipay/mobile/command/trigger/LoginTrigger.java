package com.alipay.mobile.command.trigger;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.alipay.mobile.command.engine.TaskExeService;
import com.alipay.mobile.command.manager.RuntimeInfoManager;
import com.alipay.mobile.command.model.TriggerTypeEnum;

public class LoginTrigger extends BaseTrigger
{
  public void doReceive(Context paramContext, Intent paramIntent)
  {
    new Object[] { "UserLogin recieive" };
    if (paramIntent != null)
    {
      String str = paramIntent.getStringExtra("userId");
      if (!TextUtils.isEmpty(str))
        RuntimeInfoManager.getInstance().updateCurrentUseId(str);
      Intent localIntent = new Intent(paramContext, TaskExeService.class);
      localIntent.putExtra("trigger_type", TriggerTypeEnum.LOGIN.getType());
      paramContext.startService(localIntent);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.trigger.LoginTrigger
 * JD-Core Version:    0.6.2
 */