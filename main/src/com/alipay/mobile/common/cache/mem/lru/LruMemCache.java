package com.alipay.mobile.common.cache.mem.lru;

import com.alipay.mobile.common.cache.mem.Entity;
import com.alipay.mobile.common.cache.mem.MemCache;
import java.util.HashMap;

public class LruMemCache extends MemCache
{
  private static LruMemCache a;

  private LruMemCache()
  {
    this.mMap = new LruMemCache.1(this, 10, 0.75F, true);
    this.mGroup = new HashMap();
  }

  public static LruMemCache getInstance()
  {
    try
    {
      if (a == null)
        a = new LruMemCache();
      LruMemCache localLruMemCache = a;
      return localLruMemCache;
    }
    finally
    {
    }
  }

  public Object get(String paramString1, String paramString2)
  {
    try
    {
      Object localObject2 = super.get(paramString1, paramString2);
      return localObject2;
    }
    finally
    {
      localObject1 = finally;
      throw localObject1;
    }
  }

  protected Entity makeEntity(String paramString1, String paramString2, Object paramObject)
  {
    return new Entity(paramString1, paramString2, paramObject);
  }

  public void put(String paramString1, String paramString2, String paramString3, Object paramObject)
  {
    try
    {
      super.put(paramString1, paramString2, paramString3, paramObject);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  protected void recordPut(Entity paramEntity)
  {
  }

  protected void recordRemove(Entity paramEntity)
  {
  }

  public Object remove(String paramString)
  {
    try
    {
      Object localObject2 = super.remove(paramString);
      return localObject2;
    }
    finally
    {
      localObject1 = finally;
      throw localObject1;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.cache.mem.lru.LruMemCache
 * JD-Core Version:    0.6.2
 */