package com.alipay.pushsdk.c.a;

import android.content.Context;

final class j extends Thread
{
  private Context a;

  public j(Context paramContext)
  {
    this.a = paramContext;
  }

  public final void run()
  {
    i.b(this.a);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.c.a.j
 * JD-Core Version:    0.6.2
 */