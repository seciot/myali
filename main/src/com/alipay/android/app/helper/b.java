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
    TidHelper.d();
    try
    {
      TidInfo localTidInfo1 = TidInfo.g();
      TidInfo localTidInfo2 = TidHelper.g(this.a);
      if ((localTidInfo2 == null) || (localTidInfo2.e()))
      {
        TidHelper.a(localTidInfo1);
        TidHelper.e();
        synchronized (TidHelper.f())
        {
          TidHelper.f().notify();
          return;
        }
      }
      if ((localTidInfo1 == null) || (localTidInfo1.e()))
      {
        TidHelper.a(localTidInfo2);
        TidHelper.e();
        synchronized (TidHelper.f())
        {
          TidHelper.f().notify();
          return;
        }
      }
      if (localTidInfo1.c() <= localTidInfo2.c())
      {
        TidHelper.a(localTidInfo2);
        TidHelper.e();
        synchronized (TidHelper.f())
        {
          TidHelper.f().notify();
          return;
        }
      }
      TidHelper.a(localTidInfo1);
      TidHelper.e();
      synchronized (TidHelper.f())
      {
        TidHelper.f().notify();
        return;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      TidHelper.e();
      synchronized (TidHelper.f())
      {
        TidHelper.f().notify();
        return;
      }
    }
    finally
    {
      TidHelper.e();
      synchronized (TidHelper.f())
      {
        TidHelper.f().notify();
        throw localObject1;
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.helper.b
 * JD-Core Version:    0.6.2
 */