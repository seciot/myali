package com.alipay.mobile.longlink.b.a;

import com.alipay.mobile.longlink.b.c.a;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

final class h
  implements Runnable
{
  private a b;

  public h(e parame, a parama)
  {
    this.b = parama;
  }

  public final void run()
  {
    Iterator localIterator = e.a(this.a).c.values().iterator();
    while (localIterator.hasNext())
      ((b)localIterator.next()).a(this.b);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.longlink.b.a.h
 * JD-Core Version:    0.6.2
 */