package com.alipay.mobile.framework.service.common.impl;

import android.os.Bundle;
import com.alipay.mobile.common.cache.disk.lru.DefaultLruDiskCache;
import com.alipay.mobile.common.cache.mem.lru.LruMemCache;
import com.alipay.mobile.framework.service.common.CacheManagerService;
import com.alipay.mobile.framework.service.common.DiskCacheService;
import com.alipay.mobile.framework.service.common.GenericMemCacheService;

public class CacheManagerServiceImpl extends CacheManagerService
{
  private DiskCacheService a;
  private GenericMemCacheService b;
  private DefaultLruDiskCache c = DefaultLruDiskCache.getInstance();
  private LruMemCache d = LruMemCache.getInstance();

  public CacheManagerServiceImpl()
  {
    a();
  }

  private void a()
  {
    try
    {
      if (this.a == null)
        this.a = new DiskCacheServiceImpl(this.c);
      if (this.b == null)
        this.b = new GenericMemCacheServiceImpl(this.d);
      return;
    }
    finally
    {
    }
  }

  public void close()
  {
    this.a.close();
  }

  public DiskCacheService getDiskCacheService()
  {
    return this.a;
  }

  public GenericMemCacheService getMemCacheService()
  {
    return this.b;
  }

  public Object getValue(String paramString1, String paramString2)
  {
    Object localObject = this.b.get(paramString1, paramString2);
    if (localObject != null)
      return localObject;
    return this.a.get(paramString1, paramString2);
  }

  protected void onCreate(Bundle paramBundle)
  {
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }

  public void open()
  {
    this.a.open();
  }

  public void put2Cache(String paramString1, String paramString2, String paramString3, Object paramObject, byte[] paramArrayOfByte, long paramLong1, long paramLong2, String paramString4)
  {
    this.b.put(paramString1, paramString2, paramString3, paramObject);
    this.a.put(paramString1, paramString2, paramString3, paramArrayOfByte, paramLong1, paramLong2, paramString4);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.common.impl.CacheManagerServiceImpl
 * JD-Core Version:    0.6.2
 */