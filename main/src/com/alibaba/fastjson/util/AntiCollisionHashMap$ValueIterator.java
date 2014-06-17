package com.alibaba.fastjson.util;

final class AntiCollisionHashMap$ValueIterator extends AntiCollisionHashMap<K, V>.HashIterator<V>
{
  private AntiCollisionHashMap$ValueIterator(AntiCollisionHashMap paramAntiCollisionHashMap)
  {
    super(paramAntiCollisionHashMap);
  }

  public final V next()
  {
    return nextEntry().value;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.util.AntiCollisionHashMap.ValueIterator
 * JD-Core Version:    0.6.2
 */