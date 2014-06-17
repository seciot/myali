package com.alipay.mobile.command.engine;

import com.alipay.mobile.command.manager.TaskManager;

final class c
  implements Runnable
{
  c(TaskExeService paramTaskExeService)
  {
  }

  public final void run()
  {
    new Object[] { "start taskManager loop" };
    TaskManager.loop();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.engine.c
 * JD-Core Version:    0.6.2
 */