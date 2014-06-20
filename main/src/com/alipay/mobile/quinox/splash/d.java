package com.alipay.mobile.quinox.splash;

import android.os.Handler;

final class d
  implements Runnable
{
  d(c paramc)
  {
  }

  public final void run()
  {
    try
    {
      c.removeBundle(this.a);
      int i = Integer.parseInt(c.f(this.a));
      if (i > 0);
      for (int j = -500 + i * 1000; ; j = i * 1000)
      {
        Thread.sleep(j);
        return;
      }
    }
    catch (InterruptedException localInterruptedException2)
    {
      localInterruptedException2.printStackTrace();
      c.d(this.a).sendEmptyMessage(2);
      return;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      try
      {
        Thread.sleep(1000L);
        return;
      }
      catch (InterruptedException localInterruptedException1)
      {
        while (true)
          localInterruptedException1.printStackTrace();
      }
    }
    finally
    {
      c.d(this.a).sendEmptyMessage(2);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.quinox.splash.d
 * JD-Core Version:    0.6.2
 */