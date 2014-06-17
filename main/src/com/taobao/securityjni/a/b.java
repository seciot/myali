package com.taobao.securityjni.a;

import com.taobao.securityjni.DnameManager;
import com.taobao.securityjni.tools.SEDelay;
import java.util.concurrent.TimeUnit;

public final class b
  implements SEDelay
{
  private static long a = System.currentTimeMillis();

  public final long getDelay(TimeUnit paramTimeUnit)
  {
    long l = System.currentTimeMillis();
    return 30000L + a - l;
  }

  public final void run()
  {
    a locala = new a();
    com.taobao.securityjni.connector.a locala1 = new com.taobao.securityjni.connector.a();
    locala1.a(locala);
    Object localObject = locala;
    for (int i = 0; i < 2; i++)
    {
      localObject = (com.taobao.securityjni.connector.b)locala1.a();
      if (((com.taobao.securityjni.connector.b)localObject).a == 0)
        break;
    }
    DnameManager.RegisterConfig((String)((com.taobao.securityjni.connector.b)localObject).d);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.securityjni.a.b
 * JD-Core Version:    0.6.2
 */