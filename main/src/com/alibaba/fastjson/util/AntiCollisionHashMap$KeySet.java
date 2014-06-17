package com.alibaba.fastjson.util;

import java.util.AbstractSet;
import java.util.Iterator;

final class AntiCollisionHashMap$KeySet extends AbstractSet<K>
{
  private AntiCollisionHashMap$KeySet(AntiCollisionHashMap paramAntiCollisionHashMap)
  {
  }

  public final void clear()
  {
    this.this$0.clear();
  }

  public final boolean contains(Object paramObject)
  {
    return this.this$0.containsKey(paramObject);
  }

  public final Iterator<K> iterator()
  {
    return this.this$0.newKeyIterator();
  }

  public final boolean remove(Object paramObject)
  {
    return this.this$0.removeEntryForKey(paramObject) != null;
  }

  public final int size()
  {
    return this.this$0.size;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.util.AntiCollisionHashMap.KeySet
 * JD-Core Version:    0.6.2
 */