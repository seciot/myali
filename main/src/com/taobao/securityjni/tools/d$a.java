package com.taobao.securityjni.tools;

import java.util.concurrent.DelayQueue;

final class d$a
  implements Runnable
{
  public final void run()
  {
    while (true)
      try
      {
        SEDelay localSEDelay = (SEDelay)d.stop().take();
        if (localSEDelay != null)
          localSEDelay.run();
      }
      catch (InterruptedException localInterruptedException)
      {
        localInterruptedException.printStackTrace();
      }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.securityjni.tools.d.a
 * JD-Core Version:    0.6.2
 */