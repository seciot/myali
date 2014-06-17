package com.alipay.mobile.framework.service.common;

import com.alipay.mobile.framework.service.CommonService;

public abstract class DiskCacheService extends CommonService
{
  public abstract void close();

  public abstract byte[] get(String paramString1, String paramString2);

  public abstract String getDirectory();

  public abstract long getMaxsize();

  public abstract long getSize();

  public abstract void open();

  public abstract void put(String paramString1, String paramString2, String paramString3, byte[] paramArrayOfByte, long paramLong1, long paramLong2, String paramString4);

  public abstract void remove(String paramString);

  public abstract void removeByGroup(String paramString);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.common.DiskCacheService
 * JD-Core Version:    0.6.2
 */