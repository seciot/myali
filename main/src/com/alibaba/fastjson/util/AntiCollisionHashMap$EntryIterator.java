package com.alibaba.fastjson.util;

import java.util.Map.Entry;

final class AntiCollisionHashMap$EntryIterator extends AntiCollisionHashMap<K, V>.HashIterator<Map.Entry<K, V>>
{
  private AntiCollisionHashMap$EntryIterator(AntiCollisionHashMap paramAntiCollisionHashMap)
  {
    super(paramAntiCollisionHashMap);
  }

  public final Map.Entry<K, V> next()
  {
    return nextEntry();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.util.AntiCollisionHashMap.EntryIterator
 * JD-Core Version:    0.6.2
 */