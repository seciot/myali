package com.alipay.mobile.command.engine;

import com.alipay.mobile.command.manager.ListenerManager;

final class d
  implements Runnable
{
  d(TaskExeService paramTaskExeService)
  {
  }

  public final void run()
  {
    new Object[] { "start listenerManager loop" };
    ListenerManager.loop();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.engine.d
 * JD-Core Version:    0.6.2
 */