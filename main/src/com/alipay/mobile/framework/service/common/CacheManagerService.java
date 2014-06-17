package com.alipay.mobile.framework.service.common;

import com.alipay.mobile.framework.service.CommonService;

public abstract class CacheManagerService extends CommonService
{
  public abstract void close();

  public abstract DiskCacheService getDiskCacheService();

  public abstract GenericMemCacheService getMemCacheService();

  public abstract Object getValue(String paramString1, String paramString2);

  public abstract void open();

  public abstract void put2Cache(String paramString1, String paramString2, String paramString3, Object paramObject, byte[] paramArrayOfByte, long paramLong1, long paramLong2, String paramString4);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.common.CacheManagerService
 * JD-Core Version:    0.6.2
 */