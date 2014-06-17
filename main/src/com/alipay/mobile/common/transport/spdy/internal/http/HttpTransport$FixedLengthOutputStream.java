package com.alipay.mobile.common.transport.spdy.internal.http;

import com.alipay.mobile.common.transport.spdy.internal.AbstractOutputStream;
import com.alipay.mobile.common.transport.spdy.internal.Util;
import java.io.OutputStream;
import java.net.ProtocolException;

final class HttpTransport$FixedLengthOutputStream extends AbstractOutputStream
{
  private final OutputStream a;
  private long b;

  private HttpTransport$FixedLengthOutputStream(OutputStream paramOutputStream, long paramLong)
  {
    this.a = paramOutputStream;
    this.b = paramLong;
  }

  public final void close()
  {
    if (this.closed);
    do
    {
      return;
      this.closed = true;
    }
    while (this.b <= 0L);
    throw new ProtocolException("unexpected end of stream");
  }

  public final void flush()
  {
    if (this.closed)
      return;
    this.a.flush();
  }

  public final void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    checkNotClosed();
    Util.checkOffsetAndCount(paramArrayOfByte.length, paramInt1, paramInt2);
    if (paramInt2 > this.b)
      throw new ProtocolException("expected " + this.b + " bytes but received " + paramInt2);
    this.a.write(paramArrayOfByte, paramInt1, paramInt2);
    this.b -= paramInt2;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.http.HttpTransport.FixedLengthOutputStream
 * JD-Core Version:    0.6.2
 */