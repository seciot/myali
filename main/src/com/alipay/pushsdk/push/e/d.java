package com.alipay.pushsdk.push.e;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.alipay.pushsdk.c.a.e;
import com.alipay.pushsdk.push.j;
import com.alipay.pushsdk.push.p;

public abstract class d
{
  private static final String c = com.alipay.pushsdk.BundlesManagerImpl.AppBundle.c.getBundle(ZLog.class);
  public j a;
  public Context b;
  private String d;

  public d(j paramj)
  {
    this.a = paramj;
    this.b = this.a.a();
    com.alipay.pushsdk.push.AppBundle.o.getBundle(this.a.getBundlePath());
  }

  public abstract void a();

  public final void getBundle(String paramString)
  {
    this.d = paramString;
  }

  public final String stop()
  {
    return this.d;
  }

  public final void getBundleName()
  {
    if (getInitLevel())
      a();
  }

  public boolean getInitLevel()
  {
    boolean bool1 = true;
    if (!getFullBundleName())
    {
      e.e(this.d, "40", "6");
      if (p.a() < 0)
        e.e(this.d, "70", "8");
    }
    label118: 
    while (true)
    {
      com.alipay.pushsdk.BundlesManagerImpl.AppBundle.c.e(3, BundlesManagerImpl, "checkState is " + bool1);
      return bool1;
      bool1 = false;
      continue;
      com.alipay.pushsdk.push.o localo = new com.alipay.pushsdk.push.o(this.b);
      if ((localo.a()) && (localo.getBundlePath()));
      for (boolean bool2 = bool1; ; bool2 = false)
      {
        if (bool2)
          break label118;
        e.e(this.d, "20", "6");
        bool1 = false;
        break;
      }
    }
  }

  public final boolean getFullBundleName()
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)this.b.getSystemService("connectivity")).getActiveNetworkInfo();
    if (localNetworkInfo != null)
    {
      boolean bool = com.alipay.pushsdk.BundlesManagerImpl.c.b(this.b);
      com.alipay.pushsdk.BundlesManagerImpl.AppBundle.ZLog.a(com.alipay.pushsdk.BundlesManagerImpl.AppBundle.ZLog.h, com.alipay.pushsdk.BundlesManagerImpl.AppBundle.ZLog.E, System.currentTimeMillis(), com.alipay.pushsdk.BundlesManagerImpl.AppBundle.ZLog.C, 10000L + System.currentTimeMillis(), "Trigger_checkNetworkState: Network_Type=" + localNetworkInfo.getTypeName() + ", Network_State=" + localNetworkInfo.getState());
      com.alipay.pushsdk.BundlesManagerImpl.AppBundle.c.e(4, BundlesManagerImpl, "Network_Type=" + localNetworkInfo.getTypeName() + ", Network_State = " + localNetworkInfo.getState() + ", net=" + bool + ", isconnected=" + localNetworkInfo.isConnected());
      return bool;
    }
    com.alipay.pushsdk.BundlesManagerImpl.AppBundle.c.e(2, BundlesManagerImpl, "Network unavailable");
    this.a.r();
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.push.e.d
 * JD-Core Version:    0.6.2
 */