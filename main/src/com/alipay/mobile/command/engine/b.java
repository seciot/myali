package com.alipay.mobile.command.engine;

import com.alipay.mobile.command.trigger.CmdCenterTimerTrigger;

final class b
  implements Runnable
{
  b(TaskExeService paramTaskExeService)
  {
  }

  public final void run()
  {
    new Object[] { "initial env(time trigger、 clear date.)" };
    TaskExeService.a();
    CmdCenterTimerTrigger.a();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.engine.b
 * JD-Core Version:    0.6.2
 */