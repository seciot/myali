package com.taobao.securityjni;

import com.taobao.securityjni.tools.SEDelay;
import java.util.concurrent.TimeUnit;

final class GlobalInit$d
  implements SEDelay
{
  public final long getDelay(TimeUnit paramTimeUnit)
  {
    return -1L;
  }

  public final void run()
  {
    if (GlobalInit.access$300())
      GlobalInit.access$400(GlobalInit.access$000());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.securityjni.GlobalInit.d
 * JD-Core Version:    0.6.2
 */