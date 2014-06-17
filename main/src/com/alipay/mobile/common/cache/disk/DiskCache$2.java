package com.alipay.mobile.common.cache.disk;

import com.alipay.mobile.common.logging.PerformanceLog;
import java.io.File;

class DiskCache$2
  implements Runnable
{
  DiskCache$2(DiskCache paramDiskCache, String paramString1, String paramString2)
  {
  }

  public void run()
  {
    File localFile = new File(this.this$0.getDirectory() + File.separatorChar + this.val$key);
    if (!localFile.exists())
      return;
    localFile.delete();
    DiskCache.access$100(this.this$0);
    PerformanceLog.getInstance().log("diskCache finish remove:" + this.val$url);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.cache.disk.DiskCache.2
 * JD-Core Version:    0.6.2
 */