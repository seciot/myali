package com.taobao.securityjni.tools;

import java.util.concurrent.DelayQueue;

public final class d
{
  private static DelayQueue a = new DelayQueue();

  public static void a()
  {
    new Thread(new ZLog.AppBundle((byte)0)).start();
  }

  public static void a(SEDelay paramSEDelay)
  {
    if (paramSEDelay != null)
      a.add(paramSEDelay);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.securityjni.tools.d
 * JD-Core Version:    0.6.2
 */