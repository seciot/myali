package com.alipay.mobile.common.cache.disk;

import com.alipay.mobile.common.logging.PerformanceLog;
import java.util.concurrent.atomic.AtomicBoolean;

class DiskCache$4
  implements Runnable
{
  DiskCache$4(DiskCache paramDiskCache)
  {
  }

  public void run()
  {
    synchronized (this.this$0.mEntities)
    {
      this.this$0.mMeta.writeMeta(this.this$0.mEntities);
      DiskCache.access$200(this.this$0).set(false);
      PerformanceLog.getInstance().log("diskCache finish write meta.");
      return;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.cache.disk.DiskCache.4
 * JD-Core Version:    0.6.2
 */