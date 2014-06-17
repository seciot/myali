package com.alipay.mobile.common.transport.spdy;

import com.alipay.mobile.common.transport.spdy.internal.DiskLruCache.Snapshot;
import java.io.FilterInputStream;
import java.io.InputStream;

final class HttpResponseCache$2 extends FilterInputStream
{
  HttpResponseCache$2(InputStream paramInputStream, DiskLruCache.Snapshot paramSnapshot)
  {
    super(paramInputStream);
  }

  public final void close()
  {
    this.val$snapshot.close();
    super.close();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.HttpResponseCache.2
 * JD-Core Version:    0.6.2
 */