package com.alipay.mobile.common.transport.spdy.internal.http;

import com.alipay.mobile.common.transport.spdy.internal.AbstractOutputStream;
import com.alipay.mobile.common.transport.spdy.internal.Util;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import java.net.ProtocolException;

final class RetryableOutputStream extends AbstractOutputStream
{
  private final int a;
  private final ByteArrayOutputStream b;

  public RetryableOutputStream()
  {
    this.a = -1;
    this.b = new ByteArrayOutputStream();
  }

  public RetryableOutputStream(int paramInt)
  {
    this.a = paramInt;
    this.b = new ByteArrayOutputStream(paramInt);
  }

  public final void close()
  {
    try
    {
      boolean bool = this.closed;
      if (bool);
      do
      {
        return;
        this.closed = true;
      }
      while (this.b.size() >= this.a);
      throw new ProtocolException("content-length promised " + this.a + " bytes, but received " + this.b.size());
    }
    finally
    {
    }
  }

  public final int contentLength()
  {
    try
    {
      close();
      int i = this.b.size();
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      checkNotClosed();
      Util.checkOffsetAndCount(paramArrayOfByte.length, paramInt1, paramInt2);
      if ((this.a != -1) && (this.b.size() > this.a - paramInt2))
        throw new ProtocolException("exceeded content-length limit of " + this.a + " bytes");
    }
    finally
    {
    }
    this.b.write(paramArrayOfByte, paramInt1, paramInt2);
  }

  public final void writeToSocket(OutputStream paramOutputStream)
  {
    this.b.writeTo(paramOutputStream);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.http.RetryableOutputStream
 * JD-Core Version:    0.6.2
 */