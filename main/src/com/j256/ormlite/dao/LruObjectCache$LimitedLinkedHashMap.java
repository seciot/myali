package com.j256.ormlite.dao;

import java.util.LinkedHashMap;
import java.util.Map.Entry;

class LruObjectCache$LimitedLinkedHashMap<K, V> extends LinkedHashMap<K, V>
{
  private final int a;

  public LruObjectCache$LimitedLinkedHashMap(int paramInt)
  {
    super(paramInt, 0.75F, true);
    this.a = paramInt;
  }

  protected boolean removeEldestEntry(Map.Entry<K, V> paramEntry)
  {
    return size() > this.a;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.dao.LruObjectCache.LimitedLinkedHashMap
 * JD-Core Version:    0.6.2
 */