package com.alipay.mobile.framework.service.common.impl;

import android.os.Bundle;
import com.alipay.mobile.common.cache.disk.lru.SecurityLruDiskCache;
import com.alipay.mobile.framework.service.common.SecurityDiskCacheService;

public class SecurityDiskCacheServiceImpl extends SecurityDiskCacheService
{
  private SecurityLruDiskCache a;

  public SecurityDiskCacheServiceImpl(SecurityLruDiskCache paramSecurityLruDiskCache)
  {
    this.a = paramSecurityLruDiskCache;
  }

  public void close()
  {
    this.a.close();
  }

  public byte[] get(String paramString1, String paramString2)
  {
    return this.a.get(paramString1, paramString2);
  }

  public String getDirectory()
  {
    return this.a.getDirectory();
  }

  public long getMaxsize()
  {
    return this.a.getMaxsize();
  }

  public long getSize()
  {
    return this.a.getSize();
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

  public void put(String paramString1, String paramString2, String paramString3, byte[] paramArrayOfByte, long paramLong1, long paramLong2, String paramString4)
  {
    this.a.put(paramString1, paramString2, paramString3, paramArrayOfByte, paramLong1, paramLong2, paramString4);
  }

  public void remove(String paramString)
  {
    this.a.remove(paramString);
  }

  public void removeByGroup(String paramString)
  {
    this.a.removeByGroup(paramString);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.common.impl.SecurityDiskCacheServiceImpl
 * JD-Core Version:    0.6.2
 */