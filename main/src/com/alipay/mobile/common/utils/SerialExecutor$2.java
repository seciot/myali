package com.alipay.mobile.common.utils;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

class SerialExecutor$2
  implements ThreadFactory
{
  private final AtomicInteger a = new AtomicInteger(0);

  SerialExecutor$2(SerialExecutor paramSerialExecutor)
  {
  }

  public Thread newThread(Runnable paramRunnable)
  {
    if (SerialExecutor.access$000(this.this$0) == null)
      SerialExecutor.access$002(this.this$0, "SerialExecutor");
    return new Thread(paramRunnable, SerialExecutor.access$000(this.this$0) + "  #" + this.a.incrementAndGet());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.utils.SerialExecutor.2
 * JD-Core Version:    0.6.2
 */