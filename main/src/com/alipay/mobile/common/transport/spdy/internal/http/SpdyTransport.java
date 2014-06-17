package com.alipay.mobile.common.transport.spdy.internal.http;

import com.alipay.mobile.common.transport.spdy.Connection;
import com.alipay.mobile.common.transport.spdy.OkHttpClient;
import com.alipay.mobile.common.transport.spdy.internal.spdy.ErrorCode;
import com.alipay.mobile.common.transport.spdy.internal.spdy.SpdyConnection;
import com.alipay.mobile.common.transport.spdy.internal.spdy.SpdyStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.CacheRequest;
import java.net.URI;
import java.net.URL;

public final class SpdyTransport
  implements Transport
{
  private final HttpEngine a;
  private final SpdyConnection b;
  private SpdyStream c;

  public SpdyTransport(HttpEngine paramHttpEngine, SpdyConnection paramSpdyConnection)
  {
    this.a = paramHttpEngine;
    this.b = paramSpdyConnection;
  }

  public final OutputStream createRequestBody()
  {
    long l = this.a.policy.getFixedContentLength();
    if (l != -1L)
      this.a.requestHeaders.setContentLength(l);
    writeRequestHeaders();
    return this.c.getOutputStream();
  }

  public final void flushRequest()
  {
    this.c.getOutputStream().close();
  }

  public final InputStream getTransferStream(CacheRequest paramCacheRequest)
  {
    return new UnknownLengthHttpInputStream(this.c.getInputStream(), paramCacheRequest, this.a);
  }

  public final boolean makeReusable(boolean paramBoolean, OutputStream paramOutputStream, InputStream paramInputStream)
  {
    if (paramBoolean)
    {
      if (this.c != null)
        this.c.closeLater(ErrorCode.CANCEL);
    }
    else
      return true;
    return false;
  }

  public final ResponseHeaders readResponseHeaders()
  {
    RawHeaders localRawHeaders = RawHeaders.fromNameValueBlock(this.c.getResponseHeaders());
    this.a.receiveHeaders(localRawHeaders);
    ResponseHeaders localResponseHeaders = new ResponseHeaders(this.a.uri, localRawHeaders);
    localResponseHeaders.setTransport("spdy/3");
    return localResponseHeaders;
  }

  public final void writeRequestBody(RetryableOutputStream paramRetryableOutputStream)
  {
    throw new UnsupportedOperationException();
  }

  public final void writeRequestHeaders()
  {
    if (this.c != null)
      return;
    this.a.writingRequestHeaders();
    RawHeaders localRawHeaders = this.a.requestHeaders.getHeaders();
    if (this.a.connection.getHttpMinorVersion() == 1);
    for (String str = "HTTP/1.1"; ; str = "HTTP/1.0")
    {
      URL localURL = this.a.policy.getURL();
      localRawHeaders.addSpdyRequestHeaders(this.a.method, HttpEngine.requestPath(localURL), str, HttpEngine.getOriginAddress(localURL), this.a.uri.getScheme());
      boolean bool = this.a.hasRequestBody();
      this.c = this.b.newStream(localRawHeaders.toNameValueBlock(), bool, true);
      this.c.setReadTimeout(this.a.client.getReadTimeout());
      return;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.http.SpdyTransport
 * JD-Core Version:    0.6.2
 */