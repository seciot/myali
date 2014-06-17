package com.alipay.mobile.common.cache.disk.lru;

import android.os.StatFs;
import com.alipay.mobile.common.info.AppInfo;
import com.alipay.mobile.common.info.DeviceInfo;

public class DefaultLruDiskCache extends LruDiskCache
{
  private static DefaultLruDiskCache a;

  public static DefaultLruDiskCache getInstance()
  {
    try
    {
      if (a == null)
        a = new DefaultLruDiskCache();
      DefaultLruDiskCache localDefaultLruDiskCache = a;
      return localDefaultLruDiskCache;
    }
    finally
    {
    }
  }

  protected void init()
  {
    super.init();
    String str = DeviceInfo.getInstance().getExternalStoragePath("cache");
    if (str == null)
      str = AppInfo.getInstance().getCacheDirPath();
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
 * Qualified Name:     com.alipay.mobile.common.cache.disk.lru.DefaultLruDiskCache
 * JD-Core Version:    0.6.2
 */