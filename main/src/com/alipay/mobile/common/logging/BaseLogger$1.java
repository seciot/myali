package com.alipay.mobile.common.logging;

import java.io.PrintWriter;
import java.util.concurrent.atomic.AtomicBoolean;

class BaseLogger$1
  implements Runnable
{
  BaseLogger$1(BaseLogger paramBaseLogger)
  {
  }

  public void run()
  {
    try
    {
      Thread.sleep(1000L);
    }
    catch (InterruptedException localInterruptedException)
    {
      synchronized (this.this$0.mPrintWriter)
      {
        this.this$0.mPrintWriter.flush();
        BaseLogger.access$000(this.this$0).set(false);
        return;
        localInterruptedException = localInterruptedException;
        new StringBuilder().append(localInterruptedException).toString();
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.logging.BaseLogger.1
 * JD-Core Version:    0.6.2
 */