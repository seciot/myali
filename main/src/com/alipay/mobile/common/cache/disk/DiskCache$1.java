package com.alipay.mobile.common.cache.disk;

import com.alipay.mobile.common.logging.PerformanceLog;
import java.io.File;

class DiskCache$1
  implements Runnable
{
  DiskCache$1(DiskCache paramDiskCache, String paramString1, byte[] paramArrayOfByte, String paramString2)
  {
  }

  public void run()
  {
    String str = this.this$0.getDirectory() + File.separatorChar + this.val$key;
    try
    {
      DiskCache.access$000(this.this$0, str, this.val$data);
      DiskCache.access$100(this.this$0);
      return;
    }
    catch (CacheException localCacheException)
    {
      new StringBuilder("fail to put cache:").append(localCacheException).toString();
      return;
    }
    finally
    {
      PerformanceLog.getInstance().log("diskCache finish put:" + this.val$url);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.cache.disk.DiskCache.1
 * JD-Core Version:    0.6.2
 */