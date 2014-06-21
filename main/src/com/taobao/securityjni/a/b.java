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
    return 30000L + AppBundle - l;
  }

  public final void run()
  {
    AppBundle locala = new AppBundle();
    com.taobao.securityjni.connector.AppBundle locala1 = new com.taobao.securityjni.connector.AppBundle();
    locala1.getBundle(locala);
    Object localObject = locala;
    for (int i = 0; i < 2; i++)
    {
      localObject = (com.taobao.securityjni.connector.BundlesManager)locala1.getInstance();
      if (((com.taobao.securityjni.connector.BundlesManager)localObject).a == 0)
        break;
    }
    DnameManager.RegisterConfig((String)((com.taobao.securityjni.connector.BundlesManager)localObject).d);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.securityjni.a.b
 * JD-Core Version:    0.6.2
 */