package com.alipay.mobile.common.cache.mem.lru;

import com.alipay.mobile.common.logging.PerformanceLog;
import java.util.LinkedHashMap;
import java.util.Map.Entry;

class LruMemCache$1 extends LinkedHashMap
{
  LruMemCache$1(LruMemCache paramLruMemCache, int paramInt, float paramFloat, boolean paramBoolean)
  {
    super(paramInt, paramFloat, paramBoolean);
  }

  protected boolean removeEldestEntry(Map.Entry paramEntry)
  {
    if (Runtime.getRuntime().maxMemory() - Runtime.getRuntime().totalMemory() < 524288L)
    {
      PerformanceLog.getInstance().log("LruMemCache evict: key=" + (String)paramEntry.getKey() + "     value=" + paramEntry.getValue());
      return true;
    }
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.cache.mem.lru.LruMemCache.1
 * JD-Core Version:    0.6.2
 */