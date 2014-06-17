package com.alipay.mobile.common.cache.disk.lru;

import com.alipay.mobile.common.cache.disk.DiskCache;
import java.util.HashMap;

public abstract class LruDiskCache extends DiskCache
{
  protected void init()
  {
    this.mEntities = new LruDiskCache.1(this, 10, 0.75F, true);
    this.mGroup = new HashMap();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.cache.disk.lru.LruDiskCache
 * JD-Core Version:    0.6.2
 */