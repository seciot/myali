package com.alipay.mobile.common.transport.spdy;

import com.alipay.mobile.common.transport.spdy.internal.DiskLruCache.Editor;
import java.io.FilterOutputStream;
import java.io.OutputStream;

class HttpResponseCache$CacheRequestImpl$1 extends FilterOutputStream
{
  HttpResponseCache$CacheRequestImpl$1(HttpResponseCache.CacheRequestImpl paramCacheRequestImpl, OutputStream paramOutputStream, HttpResponseCache paramHttpResponseCache, DiskLruCache.Editor paramEditor)
  {
    super(paramOutputStream);
  }

  public void close()
  {
    synchronized (this.this$1.this$0)
    {
      if (HttpResponseCache.CacheRequestImpl.access$700(this.this$1))
        return;
      HttpResponseCache.CacheRequestImpl.access$702(this.this$1, true);
      HttpResponseCache.access$808(this.this$1.this$0);
      super.close();
      this.val$editor.commit();
      return;
    }
  }

  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.out.write(paramArrayOfByte, paramInt1, paramInt2);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.HttpResponseCache.CacheRequestImpl.1
 * JD-Core Version:    0.6.2
 */