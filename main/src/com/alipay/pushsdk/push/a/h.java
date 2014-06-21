package com.alipay.pushsdk.push.a;

import java.util.concurrent.ThreadFactory;

final class h
  implements ThreadFactory
{
  h(f paramf)
  {
  }

  public final Thread newThread(Runnable paramRunnable)
  {
    Thread localThread = new Thread(paramRunnable, "Push Listener Processor (" + f.getBundle(this.a).g + ")");
    localThread.setDaemon(true);
    return localThread;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.push.a.h
 * JD-Core Version:    0.6.2
 */