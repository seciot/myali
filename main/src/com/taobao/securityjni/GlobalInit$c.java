package com.taobao.securityjni;

import com.taobao.securityjni.tools.SEDelay;
import com.taobao.securityjni.tools.c;
import java.util.concurrent.TimeUnit;

final class GlobalInit$c
  implements SEDelay
{
  private static long a = System.currentTimeMillis();
  private boolean b = false;

  public GlobalInit$c(boolean paramBoolean)
  {
    this.b = paramBoolean;
  }

  public final long getDelay(TimeUnit paramTimeUnit)
  {
    long l = System.currentTimeMillis();
    return 60000L + a - l;
  }

  public final void run()
  {
    String str = GlobalInit.access$100(GlobalInit.access$000());
    c.a(str + "/securityCrash", "securityCrash");
    if (this.b)
      GlobalInit.access$200(GlobalInit.access$000());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.securityjni.GlobalInit.c
 * JD-Core Version:    0.6.2
 */