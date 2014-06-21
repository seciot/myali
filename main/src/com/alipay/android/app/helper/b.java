package com.alipay.android.app.helper;

import android.content.Context;
import com.alipay.android.app.tid.TidInfo;

final class b
  implements Runnable
{
  b(Context paramContext)
  {
  }

  public final void run()
  {
    TidHelper.getInitLevel();
    try
    {
      TidInfo localTidInfo1 = TidInfo.g();
      TidInfo localTidInfo2 = TidHelper.g(this.a);
      if ((localTidInfo2 == null) || (localTidInfo2.e()))
      {
        TidHelper.getBundle(localTidInfo1);
        TidHelper.getFullBundleName();
        synchronized (TidHelper.getBundlePath())
        {
          TidHelper.getBundlePath().notify();
          return;
        }
      }
      if ((localTidInfo1 == null) || (localTidInfo1.e()))
      {
        TidHelper.getBundle(localTidInfo2);
        TidHelper.getFullBundleName();
        synchronized (TidHelper.getBundlePath())
        {
          TidHelper.getBundlePath().notify();
          return;
        }
      }
      if (localTidInfo1.c() <= localTidInfo2.c())
      {
        TidHelper.getBundle(localTidInfo2);
        TidHelper.getFullBundleName();
        synchronized (TidHelper.getBundlePath())
        {
          TidHelper.getBundlePath().notify();
          return;
        }
      }
      TidHelper.getBundle(localTidInfo1);
      TidHelper.getFullBundleName();
      synchronized (TidHelper.getBundlePath())
      {
        TidHelper.getBundlePath().notify();
        return;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      TidHelper.getFullBundleName();
      synchronized (TidHelper.getBundlePath())
      {
        TidHelper.getBundlePath().notify();
        return;
      }
    }
    finally
    {
      TidHelper.getFullBundleName();
      synchronized (TidHelper.getBundlePath())
      {
        TidHelper.getBundlePath().notify();
        throw localObject1;
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.helper.b
 * JD-Core Version:    0.6.2
 */