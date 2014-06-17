package com.alibaba.fastjson.util;

import java.util.Map.Entry;

class AntiCollisionHashMap$Entry<K, V>
  implements Map.Entry<K, V>
{
  final int hash;
  final K key;
  Entry<K, V> next;
  V value;

  AntiCollisionHashMap$Entry(int paramInt, K paramK, V paramV, Entry<K, V> paramEntry)
  {
    this.value = paramV;
    this.next = paramEntry;
    this.key = paramK;
    this.hash = paramInt;
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof Map.Entry));
    Object localObject3;
    Object localObject4;
    do
    {
      Map.Entry localEntry;
      Object localObject1;
      Object localObject2;
      do
      {
        return false;
        localEntry = (Map.Entry)paramObject;
        localObject1 = getKey();
        localObject2 = localEntry.getKey();
      }
      while ((localObject1 != localObject2) && ((localObject1 == null) || (!localObject1.equals(localObject2))));
      localObject3 = getValue();
      localObject4 = localEntry.getValue();
    }
    while ((localObject3 != localObject4) && ((localObject3 == null) || (!localObject3.equals(localObject4))));
    return true;
  }

  public final K getKey()
  {
    return this.key;
  }

  public final V getValue()
  {
    return this.value;
  }

  public final int hashCode()
  {
    int i;
    int j;
    if (this.key == null)
    {
      i = 0;
      Object localObject = this.value;
      j = 0;
      if (localObject != null)
        break label35;
    }
    while (true)
    {
      return i ^ j;
      i = this.key.hashCode();
      break;
      label35: j = this.value.hashCode();
    }
  }

  void recordAccess(AntiCollisionHashMap<K, V> paramAntiCollisionHashMap)
  {
  }

  void recordRemoval(AntiCollisionHashMap<K, V> paramAntiCollisionHashMap)
  {
  }

  public final V setValue(V paramV)
  {
    Object localObject = this.value;
    this.value = paramV;
    return localObject;
  }

  public final String toString()
  {
    return getKey() + "=" + getValue();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.util.AntiCollisionHashMap.Entry
 * JD-Core Version:    0.6.2
 */