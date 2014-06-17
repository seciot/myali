package com.alibaba.fastjson.util;

public final class IdentityHashMap$Entry<K, V>
{
  public final int hashCode;
  public final K key;
  public final Entry<K, V> next;
  public V value;

  public IdentityHashMap$Entry(K paramK, V paramV, int paramInt, Entry<K, V> paramEntry)
  {
    this.key = paramK;
    this.value = paramV;
    this.next = paramEntry;
    this.hashCode = paramInt;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.util.IdentityHashMap.Entry
 * JD-Core Version:    0.6.2
 */