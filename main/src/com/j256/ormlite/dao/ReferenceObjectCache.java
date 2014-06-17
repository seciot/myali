package com.j256.ormlite.dao;

import java.lang.ref.Reference;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public class ReferenceObjectCache
  implements ObjectCache
{
  private final ConcurrentHashMap<Class<?>, Map<Object, Reference<Object>>> a = new ConcurrentHashMap();
  private final boolean b;

  public ReferenceObjectCache(boolean paramBoolean)
  {
    this.b = paramBoolean;
  }

  private Map<Object, Reference<Object>> a(Class<?> paramClass)
  {
    Map localMap = (Map)this.a.get(paramClass);
    if (localMap == null)
      localMap = null;
    return localMap;
  }

  private static void a(Map<Object, Reference<Object>> paramMap)
  {
    Iterator localIterator = paramMap.entrySet().iterator();
    while (localIterator.hasNext())
      if (((Reference)((Map.Entry)localIterator.next()).getValue()).get() == null)
        localIterator.remove();
  }

  public static ReferenceObjectCache makeSoftCache()
  {
    return new ReferenceObjectCache(false);
  }

  public static ReferenceObjectCache makeWeakCache()
  {
    return new ReferenceObjectCache(true);
  }

  public <T> void cleanNullReferences(Class<T> paramClass)
  {
    Map localMap = a(paramClass);
    if (localMap != null)
      a(localMap);
  }

  public <T> void cleanNullReferencesAll()
  {
    Iterator localIterator = this.a.values().iterator();
    while (localIterator.hasNext())
      a((Map)localIterator.next());
  }

  public <T> void clear(Class<T> paramClass)
  {
    Map localMap = a(paramClass);
    if (localMap != null)
      localMap.clear();
  }

  public void clearAll()
  {
    Iterator localIterator = this.a.values().iterator();
    while (localIterator.hasNext())
      ((Map)localIterator.next()).clear();
  }

  public <T, ID> T get(Class<T> paramClass, ID paramID)
  {
    Map localMap = a(paramClass);
    Object localObject;
    if (localMap == null)
      localObject = null;
    do
    {
      return localObject;
      Reference localReference = (Reference)localMap.get(paramID);
      if (localReference == null)
        return null;
      localObject = localReference.get();
    }
    while (localObject != null);
    localMap.remove(paramID);
    return null;
  }

  public <T, ID> void put(Class<T> paramClass, ID paramID, T paramT)
  {
    Map localMap = a(paramClass);
    if (localMap != null)
    {
      if (this.b)
        localMap.put(paramID, new WeakReference(paramT));
    }
    else
      return;
    localMap.put(paramID, new SoftReference(paramT));
  }

  public <T> void registerClass(Class<T> paramClass)
  {
    try
    {
      if ((Map)this.a.get(paramClass) == null)
      {
        ConcurrentHashMap localConcurrentHashMap = new ConcurrentHashMap();
        this.a.put(paramClass, localConcurrentHashMap);
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
    Iterator localIterator = this.a.values().iterator();
    int i = 0;
    while (localIterator.hasNext())
      i += ((Map)localIterator.next()).size();
    return i;
  }

  public <T, ID> T updateId(Class<T> paramClass, ID paramID1, ID paramID2)
  {
    Map localMap = a(paramClass);
    if (localMap == null)
      return null;
    Reference localReference = (Reference)localMap.remove(paramID1);
    if (localReference == null)
      return null;
    localMap.put(paramID2, localReference);
    return localReference.get();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.dao.ReferenceObjectCache
 * JD-Core Version:    0.6.2
 */