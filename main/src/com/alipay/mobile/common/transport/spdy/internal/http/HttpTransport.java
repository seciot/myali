package com.alipay.mobile.common.transport.spdy.internal.http;

import com.alipay.mobile.common.transport.spdy.Connection;
import com.alipay.mobile.common.transport.spdy.internal.AbstractOutputStream;
import com.alipay.mobile.common.transport.spdy.internal.Util;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.CacheRequest;
import java.net.Socket;

public final class HttpTransport
  implements Transport
{
  public static final int DEFAULT_CHUNK_LENGTH = 1024;
  private final HttpEngine a;
  private final InputStream b;
  private final OutputStream c;
  private OutputStream d;

  public HttpTransport(HttpEngine paramHttpEngine, OutputStream paramOutputStream, InputStream paramInputStream)
  {
    this.a = paramHttpEngine;
    this.c = paramOutputStream;
    this.d = paramOutputStream;
    this.b = paramInputStream;
  }

  private static boolean a(HttpEngine paramHttpEngine, InputStream paramInputStream)
  {
    Connection localConnection = paramHttpEngine.connection;
    if (localConnection == null);
    Socket localSocket;
    do
    {
      return false;
      localSocket = localConnection.getSocket();
    }
    while (localSocket == null);
    try
    {
      int i = localSocket.getSoTimeout();
      localSocket.setSoTimeout(100);
      try
      {
        Util.skipAll(paramInputStream);
        return true;
      }
      finally
      {
        localSocket.setSoTimeout(i);
      }
    }
    catch (IOException localIOException)
    {
    }
    return false;
  }

  public final OutputStream createRequestBody()
  {
    boolean bool = this.a.requestHeaders.isChunked();
    if ((!bool) && (this.a.policy.getChunkLength() > 0) && (this.a.connection.getHttpMinorVersion() != 0))
    {
      this.a.requestHeaders.setChunked();
      bool = true;
    }
    if (bool)
    {
      int i = this.a.policy.getChunkLength();
      if (i == -1)
        i = 1024;
      writeRequestHeaders();
      return new HttpTransport.ChunkedOutputStream(this.d, i, null);
    }
    long l1 = this.a.policy.getFixedContentLength();
    if (l1 != -1L)
    {
      this.a.requestHeaders.setContentLength(l1);
      writeRequestHeaders();
      return new HttpTransport.FixedLengthOutputStream(this.d, l1, null);
    }
    long l2 = this.a.requestHeaders.getContentLength();
    if (l2 > 2147483647L)
      throw new IllegalArgumentException("Use setFixedLengthStreamingMode() or setChunkedStreamingMode() for requests larger than 2 GiB.");
    if (l2 != -1L)
    {
      writeRequestHeaders();
      return new RetryableOutputStream((int)l2);
    }
    return new RetryableOutputStream();
  }

  public final void flushRequest()
  {
    this.d.flush();
    this.d = this.c;
  }

  public final InputStream getTransferStream(CacheRequest paramCacheRequest)
  {
    if (!this.a.hasResponseBody())
      return new HttpTransport.FixedLengthInputStream(this.b, paramCacheRequest, this.a, 0);
    if (this.a.responseHeaders.isChunked())
      return new HttpTransport.ChunkedInputStream(this.b, paramCacheRequest, this);
    if (this.a.responseHeaders.getContentLength() != -1)
      return new HttpTransport.FixedLengthInputStream(this.b, paramCacheRequest, this.a, this.a.responseHeaders.getContentLength());
    return new UnknownLengthHttpInputStream(this.b, paramCacheRequest, this.a);
  }

  public final boolean makeReusable(boolean paramBoolean, OutputStream paramOutputStream, InputStream paramInputStream)
  {
    if (paramBoolean);
    while (((paramOutputStream != null) && (!((AbstractOutputStream)paramOutputStream).isClosed())) || (this.a.requestHeaders.hasConnectionClose()) || ((this.a.responseHeaders != null) && (this.a.responseHeaders.hasConnectionClose())) || ((paramInputStream instanceof UnknownLengthHttpInputStream)))
      return false;
    if (paramInputStream != null)
      return a(this.a, paramInputStream);
    return true;
  }

  public final ResponseHeaders readResponseHeaders()
  {
    RawHeaders localRawHeaders = RawHeaders.fromBytes(this.b);
    this.a.connection.setHttpMinorVersion(localRawHeaders.getHttpMinorVersion());
    this.a.receiveHeaders(localRawHeaders);
    ResponseHeaders localResponseHeaders = new ResponseHeaders(this.a.uri, localRawHeaders);
    localResponseHeaders.setTransport("http/1.1");
    return localResponseHeaders;
  }

  public final void writeRequestBody(RetryableOutputStream paramRetryableOutputStream)
  {
    paramRetryableOutputStream.writeToSocket(this.d);
  }

  public final void writeRequestHeaders()
  {
    this.a.writingRequestHeaders();
    byte[] arrayOfByte = this.a.requestHeaders.getHeaders().toBytes();
    this.d.write(arrayOfByte);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.http.HttpTransport
 * JD-Core Version:    0.6.2
 */