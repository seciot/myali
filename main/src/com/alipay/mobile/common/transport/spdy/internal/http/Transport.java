package com.alipay.mobile.common.transport.spdy.internal.http;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.CacheRequest;

abstract interface Transport
{
  public abstract OutputStream createRequestBody();

  public abstract void flushRequest();

  public abstract InputStream getTransferStream(CacheRequest paramCacheRequest);

  public abstract boolean makeReusable(boolean paramBoolean, OutputStream paramOutputStream, InputStream paramInputStream);

  public abstract ResponseHeaders readResponseHeaders();

  public abstract void writeRequestBody(RetryableOutputStream paramRetryableOutputStream);

  public abstract void writeRequestHeaders();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.http.Transport
 * JD-Core Version:    0.6.2
 */