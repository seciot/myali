package com.alibaba.fastjson.util;

public class IdentityHashMap<K, V>
{
  public static final int DEFAULT_TABLE_SIZE = 1024;
  private final IdentityHashMap.Entry<K, V>[] buckets;
  private final int indexMask;

  public IdentityHashMap()
  {
    this(1024);
  }

  public IdentityHashMap(int paramInt)
  {
    this.indexMask = (paramInt - 1);
    this.buckets = new IdentityHashMap.Entry[paramInt];
  }

  public final V get(K paramK)
  {
    int i = System.identityHashCode(paramK) & this.indexMask;
    for (IdentityHashMap.Entry localEntry = this.buckets[i]; localEntry != null; localEntry = localEntry.next)
      if (paramK == localEntry.key)
        return localEntry.value;
    return null;
  }

  public boolean put(K paramK, V paramV)
  {
    int i = System.identityHashCode(paramK);
    int j = i & this.indexMask;
    for (IdentityHashMap.Entry localEntry1 = this.buckets[j]; localEntry1 != null; localEntry1 = localEntry1.next)
      if (paramK == localEntry1.key)
      {
        localEntry1.value = paramV;
        return true;
      }
    IdentityHashMap.Entry localEntry2 = new IdentityHashMap.Entry(paramK, paramV, i, this.buckets[j]);
    this.buckets[j] = localEntry2;
    return false;
  }

  public int size()
  {
    int i = 0;
    int j = 0;
    while (i < this.buckets.length)
    {
      IdentityHashMap.Entry localEntry = this.buckets[i];
      while (localEntry != null)
      {
        int k = j + 1;
        localEntry = localEntry.next;
        j = k;
      }
      i++;
    }
    return j;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.util.IdentityHashMap
 * JD-Core Version:    0.6.2
 */