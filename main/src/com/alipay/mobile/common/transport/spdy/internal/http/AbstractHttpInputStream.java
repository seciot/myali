package com.alipay.mobile.common.transport.spdy.internal.http;

import com.alipay.mobile.common.transport.spdy.internal.Util;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.CacheRequest;

abstract class AbstractHttpInputStream extends InputStream
{
  private final CacheRequest a;
  private final OutputStream b;
  protected boolean closed;
  protected final HttpEngine httpEngine;
  protected final InputStream in;

  AbstractHttpInputStream(InputStream paramInputStream, HttpEngine paramHttpEngine, CacheRequest paramCacheRequest)
  {
    this.in = paramInputStream;
    this.httpEngine = paramHttpEngine;
    if (paramCacheRequest != null);
    for (OutputStream localOutputStream = paramCacheRequest.getBody(); ; localOutputStream = null)
    {
      if (localOutputStream == null)
        paramCacheRequest = null;
      this.b = localOutputStream;
      this.a = paramCacheRequest;
      return;
    }
  }

  protected final void cacheWrite(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.b != null)
      this.b.write(paramArrayOfByte, paramInt1, paramInt2);
  }

  protected final void checkNotClosed()
  {
    if (this.closed)
      throw new IOException("stream closed");
  }

  protected final void endOfInput()
  {
    if (this.a != null)
      this.b.close();
    this.httpEngine.release(false);
  }

  public final int read()
  {
    return Util.readSingleByte(this);
  }

  protected final void unexpectedEndOfInput()
  {
    if (this.a != null)
      this.a.abort();
    this.httpEngine.release(true);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.http.AbstractHttpInputStream
 * JD-Core Version:    0.6.2
 */