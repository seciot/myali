package com.alipay.pushsdk.push.e;

import com.alipay.pushsdk.c.a.c;
import com.alipay.pushsdk.c.a.e;
import com.alipay.pushsdk.push.j;

public class f extends d
{
  private static final String c = c.a(f.class);

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
        c.a(4, c, "clearLastConnInfo done!");
        this.a.a(System.currentTimeMillis());
      }
    while (this.a.r())
    {
      this.a.u();
      e.a(b(), "41", "3");
      return;
      c.a(3, c, "onPreExecute Connected is true.");
      this.a.a(System.currentTimeMillis());
    }
    this.a.b();
    e.a(b(), "40", "6");
  }

  public final boolean d()
  {
    boolean bool;
    if (!e())
    {
      bool = false;
      e.a(b(), "10", "6");
    }
    while (true)
    {
      c.a(3, c, "UserTrigger checkState is " + bool);
      return bool;
      bool = true;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.push.e.f
 * JD-Core Version:    0.6.2
 */