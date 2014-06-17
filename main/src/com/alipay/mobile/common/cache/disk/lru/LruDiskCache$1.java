package com.alipay.mobile.common.cache.disk.lru;

import com.alipay.mobile.common.cache.disk.Entity;
import com.alipay.mobile.common.logging.PerformanceLog;
import java.util.LinkedHashMap;
import java.util.Map.Entry;

class LruDiskCache$1 extends LinkedHashMap
{
  LruDiskCache$1(LruDiskCache paramLruDiskCache, int paramInt, float paramFloat, boolean paramBoolean)
  {
    super(paramInt, paramFloat, paramBoolean);
  }

  protected boolean removeEldestEntry(Map.Entry paramEntry)
  {
    if (LruDiskCache.access$000(this.this$0) >= LruDiskCache.access$100(this.this$0))
    {
      PerformanceLog.getInstance().log("LruDiskCache evict:" + paramEntry.getValue());
      LruDiskCache.access$222(this.this$0, ((Entity)paramEntry.getValue()).getSize());
      LruDiskCache.access$300(this.this$0, (String)paramEntry.getKey());
      return true;
    }
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.cache.disk.lru.LruDiskCache.1
 * JD-Core Version:    0.6.2
 */