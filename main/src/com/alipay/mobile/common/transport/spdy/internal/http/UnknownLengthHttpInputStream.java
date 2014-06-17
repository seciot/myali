package com.alipay.mobile.common.transport.spdy.internal.http;

import com.alipay.mobile.common.transport.spdy.internal.Util;
import java.io.InputStream;
import java.net.CacheRequest;

final class UnknownLengthHttpInputStream extends AbstractHttpInputStream
{
  private boolean a;

  UnknownLengthHttpInputStream(InputStream paramInputStream, CacheRequest paramCacheRequest, HttpEngine paramHttpEngine)
  {
    super(paramInputStream, paramHttpEngine, paramCacheRequest);
  }

  public final int available()
  {
    checkNotClosed();
    if (this.in == null)
      return 0;
    return this.in.available();
  }

  public final void close()
  {
    if (this.closed);
    do
    {
      return;
      this.closed = true;
    }
    while (this.a);
    unexpectedEndOfInput();
  }

  public final int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    Util.checkOffsetAndCount(paramArrayOfByte.length, paramInt1, paramInt2);
    checkNotClosed();
    if ((this.in == null) || (this.a))
      return -1;
    int i = this.in.read(paramArrayOfByte, paramInt1, paramInt2);
    if (i == -1)
    {
      this.a = true;
      endOfInput();
      return -1;
    }
    cacheWrite(paramArrayOfByte, paramInt1, i);
    return i;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.http.UnknownLengthHttpInputStream
 * JD-Core Version:    0.6.2
 */