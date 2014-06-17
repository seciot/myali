package com.alipay.mobile.common.transport.spdy;

import com.alipay.mobile.common.transport.spdy.internal.DiskLruCache.Editor;
import com.alipay.mobile.common.transport.spdy.internal.Util;
import java.io.IOException;
import java.io.OutputStream;
import java.net.CacheRequest;

final class HttpResponseCache$CacheRequestImpl extends CacheRequest
{
  private final DiskLruCache.Editor a;
  private OutputStream b;
  private boolean c;
  private OutputStream d;

  public HttpResponseCache$CacheRequestImpl(HttpResponseCache paramHttpResponseCache, DiskLruCache.Editor paramEditor)
  {
    this.a = paramEditor;
    this.b = paramEditor.newOutputStream(1);
    this.d = new HttpResponseCache.CacheRequestImpl.1(this, this.b, paramHttpResponseCache, paramEditor);
  }

  public final void abort()
  {
    synchronized (this.this$0)
    {
      if (this.c)
        return;
      this.c = true;
      HttpResponseCache.access$908(this.this$0);
      Util.closeQuietly(this.b);
      try
      {
        this.a.abort();
        return;
      }
      catch (IOException localIOException)
      {
      }
    }
  }

  public final OutputStream getBody()
  {
    return this.d;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.HttpResponseCache.CacheRequestImpl
 * JD-Core Version:    0.6.2
 */