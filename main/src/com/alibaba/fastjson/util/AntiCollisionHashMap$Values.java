package com.alibaba.fastjson.util;

import java.util.AbstractCollection;
import java.util.Iterator;

final class AntiCollisionHashMap$Values extends AbstractCollection<V>
{
  private AntiCollisionHashMap$Values(AntiCollisionHashMap paramAntiCollisionHashMap)
  {
  }

  public final void clear()
  {
    this.this$0.clear();
  }

  public final boolean contains(Object paramObject)
  {
    return this.this$0.containsValue(paramObject);
  }

  public final Iterator<V> iterator()
  {
    return this.this$0.newValueIterator();
  }

  public final int size()
  {
    return this.this$0.size;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.util.AntiCollisionHashMap.Values
 * JD-Core Version:    0.6.2
 */