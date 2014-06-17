package com.alipay.mobile.common.transport.spdy.internal.http;

import com.alipay.mobile.common.transport.spdy.internal.Util;
import java.io.IOException;
import java.io.InputStream;
import java.net.CacheRequest;
import java.net.ProtocolException;

class HttpTransport$ChunkedInputStream extends AbstractHttpInputStream
{
  private final HttpTransport a;
  private int b = -1;
  private boolean c = true;

  HttpTransport$ChunkedInputStream(InputStream paramInputStream, CacheRequest paramCacheRequest, HttpTransport paramHttpTransport)
  {
    super(paramInputStream, HttpTransport.access$300(paramHttpTransport), paramCacheRequest);
    this.a = paramHttpTransport;
  }

  public int available()
  {
    checkNotClosed();
    if ((!this.c) || (this.b == -1))
      return 0;
    return Math.min(this.in.available(), this.b);
  }

  public void close()
  {
    if (this.closed)
      return;
    if ((this.c) && (!HttpTransport.access$200(this.httpEngine, this)))
      unexpectedEndOfInput();
    this.closed = true;
  }

  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    Util.checkOffsetAndCount(paramArrayOfByte.length, paramInt1, paramInt2);
    checkNotClosed();
    if (!this.c);
    int j;
    while (true)
    {
      return -1;
      String str;
      if ((this.b == 0) || (this.b == -1))
      {
        if (this.b != -1)
          Util.readAsciiLine(this.in);
        str = Util.readAsciiLine(this.in);
        int i = str.indexOf(";");
        if (i != -1)
          str = str.substring(0, i);
      }
      try
      {
        this.b = Integer.parseInt(str.trim(), 16);
        if (this.b == 0)
        {
          this.c = false;
          RawHeaders localRawHeaders = this.httpEngine.responseHeaders.getHeaders();
          RawHeaders.readHeaders(HttpTransport.access$400(this.a), localRawHeaders);
          this.httpEngine.receiveHeaders(localRawHeaders);
          endOfInput();
        }
        if (this.c)
        {
          j = this.in.read(paramArrayOfByte, paramInt1, Math.min(paramInt2, this.b));
          if (j == -1)
          {
            unexpectedEndOfInput();
            throw new IOException("unexpected end of stream");
          }
        }
      }
      catch (NumberFormatException localNumberFormatException)
      {
        throw new ProtocolException("Expected a hex chunk size but was " + str);
      }
    }
    this.b -= j;
    cacheWrite(paramArrayOfByte, paramInt1, j);
    return j;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.http.HttpTransport.ChunkedInputStream
 * JD-Core Version:    0.6.2
 */