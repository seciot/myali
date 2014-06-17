package com.alipay.mobile.framework.service.common.impl;

import android.os.Bundle;
import com.alipay.mobile.common.cache.mem.lru.LruMemCache;
import com.alipay.mobile.framework.service.common.GenericMemCacheService;

public class GenericMemCacheServiceImpl extends GenericMemCacheService
{
  private LruMemCache a;

  public GenericMemCacheServiceImpl(LruMemCache paramLruMemCache)
  {
    this.a = paramLruMemCache;
  }

  public Object get(String paramString1, String paramString2)
  {
    return this.a.get(paramString1, paramString2);
  }

  protected void onCreate(Bundle paramBundle)
  {
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }

  public void put(String paramString1, String paramString2, String paramString3, Object paramObject)
  {
    this.a.put(paramString1, paramString2, paramString3, paramObject);
  }

  public Object remove(String paramString)
  {
    return this.a.remove(paramString);
  }

  public void removeByGroup(String paramString)
  {
    this.a.removeByGroup(paramString);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.common.impl.GenericMemCacheServiceImpl
 * JD-Core Version:    0.6.2
 */