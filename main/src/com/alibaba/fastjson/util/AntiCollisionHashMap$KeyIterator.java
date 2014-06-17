package com.alibaba.fastjson.util;

final class AntiCollisionHashMap$KeyIterator extends AntiCollisionHashMap<K, V>.HashIterator<K>
{
  private AntiCollisionHashMap$KeyIterator(AntiCollisionHashMap paramAntiCollisionHashMap)
  {
    super(paramAntiCollisionHashMap);
  }

  public final K next()
  {
    return nextEntry().getKey();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.util.AntiCollisionHashMap.KeyIterator
 * JD-Core Version:    0.6.2
 */