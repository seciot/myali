package com.alipay.mobile.common.cache.mem;

import com.alipay.mobile.common.logging.PerformanceLog;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

public abstract class MemCache
{
  protected HashMap mGroup;
  protected HashMap mMap;

  public Object get(String paramString1, String paramString2)
  {
    try
    {
      PerformanceLog.getInstance().log("MemCache start get:" + paramString2);
      boolean bool = this.mMap.containsKey(paramString2);
      Object localObject3;
      if (!bool)
        localObject3 = null;
      while (true)
      {
        return localObject3;
        Entity localEntity = (Entity)this.mMap.get(paramString2);
        if (!localEntity.authenticate(paramString1))
        {
          remove(paramString2);
          localObject3 = null;
        }
        else
        {
          PerformanceLog.getInstance().log("MemCache finish get:" + paramString2);
          Object localObject2 = localEntity.getValue();
          localObject3 = localObject2;
        }
      }
    }
    finally
    {
    }
  }

  public int getCacheCount()
  {
    return this.mMap.size();
  }

  protected abstract Entity makeEntity(String paramString1, String paramString2, Object paramObject);

  public void put(String paramString1, String paramString2, String paramString3, Object paramObject)
  {
    try
    {
      PerformanceLog.getInstance().log("MemCache start put:" + paramString3);
      Entity localEntity = makeEntity(paramString1, paramString2, paramObject);
      String str = localEntity.getGroup();
      if (str != null)
      {
        Object localObject2 = (Set)this.mGroup.get(str);
        if (localObject2 == null)
        {
          localObject2 = new HashSet();
          this.mGroup.put(str, localObject2);
        }
        ((Set)localObject2).add(localEntity);
      }
      this.mMap.put(paramString3, localEntity);
      recordPut(localEntity);
      PerformanceLog.getInstance().log("MemCache finish put:" + paramString3);
      return;
    }
    finally
    {
    }
  }

  protected abstract void recordPut(Entity paramEntity);

  protected abstract void recordRemove(Entity paramEntity);

  public Object remove(String paramString)
  {
    try
    {
      PerformanceLog.getInstance().log("MemCache start remove:" + paramString);
      boolean bool = this.mMap.containsKey(paramString);
      if (!bool);
      Object localObject2;
      for (Object localObject3 = null; ; localObject3 = localObject2)
      {
        return localObject3;
        Entity localEntity = (Entity)this.mMap.get(paramString);
        this.mMap.remove(paramString);
        String str = localEntity.getGroup();
        if (str != null)
          new CopyOnWriteArraySet((Collection)this.mGroup.get(str)).remove(localEntity);
        recordRemove(localEntity);
        PerformanceLog.getInstance().log("MemCache finish remove:" + paramString);
        localObject2 = localEntity.getValue();
      }
    }
    finally
    {
    }
  }

  public void removeByGroup(String paramString)
  {
    try
    {
      PerformanceLog.getInstance().log("MemCache start remove group:" + paramString);
      if (paramString != null)
      {
        Iterator localIterator = new CopyOnWriteArraySet((Collection)this.mGroup.get(paramString)).iterator();
        while (localIterator.hasNext())
        {
          Entity localEntity = (Entity)localIterator.next();
          if (this.mMap.values().remove(localEntity))
            recordRemove(localEntity);
        }
      }
    }
    finally
    {
    }
    PerformanceLog.getInstance().log("MemCache finish remove group:" + paramString);
  }

  public String toString()
  {
    return this.mMap.toString();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.cache.mem.MemCache
 * JD-Core Version:    0.6.2
 */