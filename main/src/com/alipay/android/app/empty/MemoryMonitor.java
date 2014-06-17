package com.alipay.android.app.empty;

import android.util.SparseArray;
import java.util.Iterator;
import java.util.List;

public class MemoryMonitor
{
  private static MemoryMonitor a;
  private SparseArray b = new SparseArray(3);

  private MemoryMonitor()
  {
    this.b.put(0, new a(2));
    this.b.put(1, new a(2));
    this.b.put(2, new a(4));
  }

  public static MemoryMonitor a()
  {
    if (a == null)
      a = new MemoryMonitor();
    return a;
  }

  public final void a(IMemoryEventHandler paramIMemoryEventHandler)
  {
    a locala = (a)this.b.get(2);
    if ((locala != null) && (!locala.d.contains(paramIMemoryEventHandler)))
      locala.d.add(paramIMemoryEventHandler);
  }

  public final void a(IMemorySizeable paramIMemorySizeable)
  {
    a locala = (a)this.b.get(2);
    if (locala != null)
    {
      locala.a = (paramIMemorySizeable.a() + locala.a);
      if (locala.a())
      {
        Iterator localIterator = locala.d.iterator();
        while (localIterator.hasNext())
          ((IMemoryEventHandler)localIterator.next()).a();
      }
    }
  }

  public final void b(IMemoryEventHandler paramIMemoryEventHandler)
  {
    a locala = (a)this.b.get(2);
    if (locala != null)
      locala.d.remove(paramIMemoryEventHandler);
  }

  public final void b(IMemorySizeable paramIMemorySizeable)
  {
    a locala = (a)this.b.get(2);
    if (locala != null)
    {
      int i = paramIMemorySizeable.a();
      locala.a = Math.min(0, locala.a - i);
      locala.a();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.empty.MemoryMonitor
 * JD-Core Version:    0.6.2
 */