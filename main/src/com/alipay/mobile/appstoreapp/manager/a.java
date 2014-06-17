package com.alipay.mobile.appstoreapp.manager;

import java.io.IOException;

final class a
  implements Runnable
{
  a(AppManageServiceImpl paramAppManageServiceImpl)
  {
  }

  public final void run()
  {
    try
    {
      this.a.initConfig();
      try
      {
        label7: this.a.syncAppAndAutoUpdate();
        return;
      }
      catch (Exception localException)
      {
      }
    }
    catch (IOException localIOException)
    {
      break label7;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.appstoreapp.manager.a
 * JD-Core Version:    0.6.2
 */