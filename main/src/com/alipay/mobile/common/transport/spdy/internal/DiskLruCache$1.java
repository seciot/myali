package com.alipay.mobile.common.transport.spdy.internal;

import java.util.concurrent.Callable;

class DiskLruCache$1
  implements Callable
{
  DiskLruCache$1(DiskLruCache paramDiskLruCache)
  {
  }

  public Void call()
  {
    synchronized (this.this$0)
    {
      if (DiskLruCache.access$000(this.this$0) == null)
        return null;
      DiskLruCache.access$100(this.this$0);
      if (DiskLruCache.access$200(this.this$0))
      {
        DiskLruCache.access$300(this.this$0);
        DiskLruCache.access$402(this.this$0, 0);
      }
      return null;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.DiskLruCache.1
 * JD-Core Version:    0.6.2
 */