package com.alipay.mobile.command.trigger;

import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.alipay.mobile.command.engine.TaskExeService;
import com.alipay.mobile.command.model.TriggerTypeEnum;
import com.alipay.mobile.command.util.CommandConfig;

public class NetChangeTrigger extends BaseTrigger
{
  public void doReceive(Context paramContext, Intent paramIntent)
  {
    CommandConfig.initial(paramContext);
    if ((paramIntent != null) && ("android.net.conn.CONNECTIVITY_CHANGE".equals(paramIntent.getAction())))
    {
      new Object[] { "network changed, check download policy" };
      NetworkInfo localNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
      if (localNetworkInfo == null)
        break label186;
      new Object[] { "----------NetworkInfo:----------" };
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = "Type: ";
      arrayOfObject1[1] = Integer.valueOf(localNetworkInfo.getType());
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = "Type Name: ";
      arrayOfObject2[1] = localNetworkInfo.getTypeName();
      Object[] arrayOfObject3 = new Object[2];
      arrayOfObject3[0] = "Available: ";
      arrayOfObject3[1] = Boolean.valueOf(localNetworkInfo.isAvailable());
      Object[] arrayOfObject4 = new Object[2];
      arrayOfObject4[0] = "Connected: ";
      arrayOfObject4[1] = Boolean.valueOf(localNetworkInfo.isConnected());
    }
    while (true)
    {
      Intent localIntent = new Intent(paramContext, TaskExeService.class);
      localIntent.putExtra("trigger_type", TriggerTypeEnum.CONNECTIVITY_CHANGE.getType());
      paramContext.startService(localIntent);
      return;
      label186: new Object[] { "no Active NetworkInfo" };
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.trigger.NetChangeTrigger
 * JD-Core Version:    0.6.2
 */