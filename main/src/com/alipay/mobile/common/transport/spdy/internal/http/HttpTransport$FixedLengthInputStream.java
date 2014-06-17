package com.alipay.mobile.common.transport.spdy.internal.http;

import com.alipay.mobile.common.transport.spdy.internal.Util;
import java.io.InputStream;
import java.net.CacheRequest;
import java.net.ProtocolException;

class HttpTransport$FixedLengthInputStream extends AbstractHttpInputStream
{
  private int a;

  public HttpTransport$FixedLengthInputStream(InputStream paramInputStream, CacheRequest paramCacheRequest, HttpEngine paramHttpEngine, int paramInt)
  {
    super(paramInputStream, paramHttpEngine, paramCacheRequest);
    this.a = paramInt;
    if (this.a == 0)
      endOfInput();
  }

  public int available()
  {
    checkNotClosed();
    if (this.a == 0)
      return 0;
    return Math.min(this.in.available(), this.a);
  }

  public void close()
  {
    if (this.closed)
      return;
    if ((this.a != 0) && (!HttpTransport.access$200(this.httpEngine, this)))
      unexpectedEndOfInput();
    this.closed = true;
  }

  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    Util.checkOffsetAndCount(paramArrayOfByte.length, paramInt1, paramInt2);
    checkNotClosed();
    if (this.a == 0)
      return -1;
    int i = this.in.read(paramArrayOfByte, paramInt1, Math.min(paramInt2, this.a));
    if (i == -1)
    {
      unexpectedEndOfInput();
      throw new ProtocolException("unexpected end of stream");
    }
    this.a -= i;
    cacheWrite(paramArrayOfByte, paramInt1, i);
    if (this.a == 0)
      endOfInput();
    return i;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.http.HttpTransport.FixedLengthInputStream
 * JD-Core Version:    0.6.2
 */