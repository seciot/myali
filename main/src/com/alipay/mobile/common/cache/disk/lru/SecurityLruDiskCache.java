package com.alipay.mobile.common.cache.disk.lru;

import android.os.StatFs;
import com.alipay.mobile.common.info.AppInfo;

public class SecurityLruDiskCache extends LruDiskCache
{
  private static SecurityLruDiskCache a;

  public static SecurityLruDiskCache getInstance()
  {
    try
    {
      if (a == null)
        a = new SecurityLruDiskCache();
      SecurityLruDiskCache localSecurityLruDiskCache = a;
      return localSecurityLruDiskCache;
    }
    finally
    {
    }
  }

  protected void init()
  {
    super.init();
    String str = AppInfo.getInstance().getCacheDirPath();
    StatFs localStatFs = new StatFs(str);
    long l1 = localStatFs.getBlockSize() * localStatFs.getAvailableBlocks();
    setDirectory(str);
    long l2 = l1 - 524288L;
    if (l2 > 0L);
    while (true)
    {
      setMaxsize(l2);
      return;
      l2 = 524288L;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.cache.disk.lru.SecurityLruDiskCache
 * JD-Core Version:    0.6.2
 */