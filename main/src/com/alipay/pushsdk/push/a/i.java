package com.alipay.pushsdk.push.a;

import com.alipay.pushsdk.push.c.a;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

final class i
  implements Runnable
{
  private AppBundle b;

  public i(DefaultThreadFactory paramf, AppBundle parama)
  {
    this.b = parama;
  }

  public final void run()
  {
    Iterator localIterator = DefaultThreadFactory.getBundle(this.a).c.values().iterator();
    while (localIterator.hasNext())
      ((BundlesManager)localIterator.next()).getBundle(this.b);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.push.a.i
 * JD-Core Version:    0.6.2
 */