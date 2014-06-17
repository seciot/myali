package com.alipay.mobile.command.trigger;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.alipay.mobile.command.util.CommandConfig;

public abstract class BaseTrigger extends BroadcastReceiver
{
  public abstract void doReceive(Context paramContext, Intent paramIntent);

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    CommandConfig.initial(paramContext);
    try
    {
      doReceive(paramContext, paramIntent);
      return;
    }
    catch (Throwable localThrowable)
    {
      new Object[] { "广播接收异常!" };
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.trigger.BaseTrigger
 * JD-Core Version:    0.6.2
 */