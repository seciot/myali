package com.j256.ormlite.dao;

import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class LruObjectCache
  implements ObjectCache
{
  private final int a;
  private final ConcurrentHashMap<Class<?>, Map<Object, Object>> b = new ConcurrentHashMap();

  public LruObjectCache(int paramInt)
  {
    this.a = paramInt;
  }

  private Map<Object, Object> a(Class<?> paramClass)
  {
    Map localMap = (Map)this.b.get(paramClass);
    if (localMap == null)
      localMap = null;
    return localMap;
  }

  public <T> void clear(Class<T> paramClass)
  {
    Map localMap = a(paramClass);
    if (localMap != null)
      localMap.clear();
  }

  public void clearAll()
  {
    Iterator localIterator = this.b.values().iterator();
    while (localIterator.hasNext())
      ((Map)localIterator.next()).clear();
  }

  public <T, ID> T get(Class<T> paramClass, ID paramID)
  {
    Map localMap = a(paramClass);
    if (localMap == null)
      return null;
    return localMap.get(paramID);
  }

  public <T, ID> void put(Class<T> paramClass, ID paramID, T paramT)
  {
    Map localMap = a(paramClass);
    if (localMap != null)
      localMap.put(paramID, paramT);
  }

  public <T> void registerClass(Class<T> paramClass)
  {
    try
    {
      if ((Map)this.b.get(paramClass) == null)
      {
        Map localMap = Collections.synchronizedMap(new LruObjectCache.LimitedLinkedHashMap(this.a));
        this.b.put(paramClass, localMap);
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public <T, ID> void remove(Class<T> paramClass, ID paramID)
  {
    Map localMap = a(paramClass);
    if (localMap != null)
      localMap.remove(paramID);
  }

  public <T> int size(Class<T> paramClass)
  {
    Map localMap = a(paramClass);
    if (localMap == null)
      return 0;
    return localMap.size();
  }

  public int sizeAll()
  {
    Iterator localIterator = this.b.values().iterator();
    int i = 0;
    while (localIterator.hasNext())
      i += ((Map)localIterator.next()).size();
    return i;
  }

  public <T, ID> T updateId(Class<T> paramClass, ID paramID1, ID paramID2)
  {
    Map localMap = a(paramClass);
    if (localMap == null);
    Object localObject;
    do
    {
      return null;
      localObject = localMap.remove(paramID1);
    }
    while (localObject == null);
    localMap.put(paramID2, localObject);
    return localObject;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.dao.LruObjectCache
 * JD-Core Version:    0.6.2
 */