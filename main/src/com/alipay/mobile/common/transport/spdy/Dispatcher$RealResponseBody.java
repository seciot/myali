package com.alipay.mobile.common.transport.spdy;

import java.io.InputStream;
import java.net.HttpURLConnection;

class Dispatcher$RealResponseBody extends Response.Body
{
  private final HttpURLConnection a;
  private final InputStream b;

  Dispatcher$RealResponseBody(HttpURLConnection paramHttpURLConnection, InputStream paramInputStream)
  {
    this.a = paramHttpURLConnection;
    this.b = paramInputStream;
  }

  public InputStream byteStream()
  {
    return this.b;
  }

  public long contentLength()
  {
    return this.a.getContentLength();
  }

  public String contentType()
  {
    return this.a.getHeaderField("Content-Type");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.Dispatcher.RealResponseBody
 * JD-Core Version:    0.6.2
 */