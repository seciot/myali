package com.taobao.securityjni;

import com.taobao.securityjni.tools.SEDelay;
import java.util.concurrent.TimeUnit;

final class DnameManager$a
  implements SEDelay
{
  public final long getDelay(TimeUnit paramTimeUnit)
  {
    return -1L;
  }

  public final void run()
  {
    try
    {
      DnameManager.access$100();
      return;
    }
    catch (Throwable localThrowable)
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.securityjni.DnameManager.a
 * JD-Core Version:    0.6.2
 */