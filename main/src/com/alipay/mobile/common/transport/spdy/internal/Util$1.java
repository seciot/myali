package com.alipay.mobile.common.transport.spdy.internal;

import java.util.concurrent.ThreadFactory;

final class Util$1
  implements ThreadFactory
{
  Util$1(String paramString)
  {
  }

  public final Thread newThread(Runnable paramRunnable)
  {
    Thread localThread = new Thread(paramRunnable, this.val$name);
    localThread.setDaemon(true);
    return localThread;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.Util.1
 * JD-Core Version:    0.6.2
 */