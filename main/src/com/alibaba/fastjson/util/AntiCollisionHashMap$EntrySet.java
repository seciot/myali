package com.alibaba.fastjson.util;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map.Entry;

final class AntiCollisionHashMap$EntrySet extends AbstractSet<Map.Entry<K, V>>
{
  private AntiCollisionHashMap$EntrySet(AntiCollisionHashMap paramAntiCollisionHashMap)
  {
  }

  public final void clear()
  {
    this.this$0.clear();
  }

  public final boolean contains(Object paramObject)
  {
    if (!(paramObject instanceof Map.Entry));
    Map.Entry localEntry;
    AntiCollisionHashMap.Entry localEntry1;
    do
    {
      return false;
      localEntry = (Map.Entry)paramObject;
      localEntry1 = this.this$0.getEntry(localEntry.getKey());
    }
    while ((localEntry1 == null) || (!localEntry1.equals(localEntry)));
    return true;
  }

  public final Iterator<Map.Entry<K, V>> iterator()
  {
    return this.this$0.newEntryIterator();
  }

  public final boolean remove(Object paramObject)
  {
    return this.this$0.removeMapping(paramObject) != null;
  }

  public final int size()
  {
    return this.this$0.size;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.util.AntiCollisionHashMap.EntrySet
 * JD-Core Version:    0.6.2
 */