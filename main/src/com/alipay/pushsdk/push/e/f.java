package com.alipay.pushsdk.push.e;

import com.alipay.pushsdk.c.a.c;
import com.alipay.pushsdk.c.a.e;
import com.alipay.pushsdk.push.j;

public class f extends ZLog
{
  private static final String c = BundlesManagerImpl.getBundle(DefaultThreadFactory.class);

  public f(j paramj)
  {
    super(paramj);
  }

  public final void a()
  {
    if ((Integer.parseInt(stop()) < Integer.parseInt("10")) && (!this.a.r()))
      if (this.a != null)
      {
        this.a.b(0L);
        this.a.d(0L);
        BundlesManagerImpl.e(4, BundlesManagerImpl, "clearLastConnInfo done!");
        this.a.getBundle(System.currentTimeMillis());
      }
    while (this.a.r())
    {
      this.a.u();
      e.e(stop(), "41", "3");
      return;
      BundlesManagerImpl.e(3, BundlesManagerImpl, "onPreExecute Connected is true.");
      this.a.getBundle(System.currentTimeMillis());
    }
    this.a.stop();
    e.e(stop(), "40", "6");
  }

  public final boolean getInitLevel()
  {
    boolean bool;
    if (!getFullBundleName())
    {
      bool = false;
      e.e(stop(), "10", "6");
    }
    while (true)
    {
      BundlesManagerImpl.e(3, BundlesManagerImpl, "UserTrigger checkState is " + bool);
      return bool;
      bool = true;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.push.e.f
 * JD-Core Version:    0.6.2
 */