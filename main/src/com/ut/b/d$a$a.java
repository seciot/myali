package com.ut.b;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.WeakHashMap;

public final class d$a$a
  implements b.a
{
  private final Map<String, Object> aG = new HashMap();
  private boolean aH = false;

  public d$a$a(d.a parama)
  {
  }

  public final b.a a(String paramString, float paramFloat)
  {
    try
    {
      this.aG.put(paramString, Float.valueOf(paramFloat));
      return this;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final b.a a(String paramString, int paramInt)
  {
    try
    {
      this.aG.put(paramString, Integer.valueOf(paramInt));
      return this;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final b.a a(String paramString, long paramLong)
  {
    try
    {
      this.aG.put(paramString, Long.valueOf(paramLong));
      return this;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final b.a a(String paramString1, String paramString2)
  {
    try
    {
      this.aG.put(paramString1, paramString2);
      return this;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final b.a a(String paramString, boolean paramBoolean)
  {
    try
    {
      this.aG.put(paramString, Boolean.valueOf(paramBoolean));
      return this;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final boolean commit()
  {
    while (true)
    {
      int j;
      String str2;
      Object localObject4;
      synchronized (d.v())
      {
        int i = d.a.a(this.aI).size();
        j = 0;
        if (i > 0)
          j = 1;
        if (j == 0)
          break label351;
        ArrayList localArrayList1 = new ArrayList();
        localHashSet = new HashSet(d.a.a(this.aI).keySet());
        localArrayList2 = localArrayList1;
        try
        {
          if (this.aH)
          {
            d.a.b(this.aI).clear();
            this.aH = false;
          }
          Iterator localIterator1 = this.aG.entrySet().iterator();
          if (!localIterator1.hasNext())
            break label220;
          Map.Entry localEntry = (Map.Entry)localIterator1.next();
          str2 = (String)localEntry.getKey();
          localObject4 = localEntry.getValue();
          if (localObject4 == this)
          {
            d.a.b(this.aI).remove(str2);
            if (j == 0)
              continue;
            localArrayList2.add(str2);
            continue;
          }
        }
        finally
        {
        }
      }
      d.a.b(this.aI).put(str2, localObject4);
      continue;
      label220: this.aG.clear();
      boolean bool = d.a.c(this.aI);
      if (bool)
        this.aI.a(true);
      if (j != 0)
        for (int k = -1 + localArrayList2.size(); k >= 0; k--)
        {
          String str1 = (String)localArrayList2.get(k);
          Iterator localIterator2 = localHashSet.iterator();
          while (localIterator2.hasNext())
          {
            b.b localb = (b.b)localIterator2.next();
            if (localb != null)
              localb.a(this.aI, str1);
          }
        }
      return bool;
      label351: HashSet localHashSet = null;
      ArrayList localArrayList2 = null;
    }
  }

  public final b.a r()
  {
    try
    {
      this.aH = true;
      return this;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.ut.b.d.a.a
 * JD-Core Version:    0.6.2
 */