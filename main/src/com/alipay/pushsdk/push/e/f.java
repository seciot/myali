package com.alipay.pushsdk.push.e;

import com.alipay.pushsdk.c.a.c;
import com.alipay.pushsdk.c.a.e;
import com.alipay.pushsdk.push.j;

public class f extends d
{
  private static final String c = BundlesManagerImpl.getBundle(f.class);

  public f(j paramj)
  {
    super(paramj);
  }

  public final void a()
  {
    if ((Integer.parseInt(b()) < Integer.parseInt("10")) && (!this.a.r()))
      if (this.a != null)
      {
        this.a.b(0L);
        this.a.d(0L);
        BundlesManagerImpl.a(4, BundlesManagerImpl, "clearLastConnInfo done!");
        this.a.getBundle(System.currentTimeMillis());
      }
    while (this.a.r())
    {
      this.a.u();
      e.a(b(), "41", "3");
      return;
      BundlesManagerImpl.a(3, BundlesManagerImpl, "onPreExecute Connected is true.");
      this.a.getBundle(System.currentTimeMillis());
    }
    this.a.b();
    e.a(b(), "40", "6");
  }

  public final boolean getInitLevel()
  {
    boolean bool;
    if (!getFullBundleName())
    {
      bool = false;
      e.a(b(), "10", "6");
    }
    while (true)
    {
      BundlesManagerImpl.a(3, BundlesManagerImpl, "UserTrigger checkState is " + bool);
      return bool;
      bool = true;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.push.e.f
 * JD-Core Version:    0.6.2
 */