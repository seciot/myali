package com.alipay.mobile.common.transport.spdy.internal.http;

import com.alipay.mobile.common.transport.spdy.internal.AbstractOutputStream;
import com.alipay.mobile.common.transport.spdy.internal.Util;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;

final class HttpTransport$ChunkedOutputStream extends AbstractOutputStream
{
  private static final byte[] a = { 13, 10 };
  private static final byte[] b = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
  private static final byte[] c = { 48, 13, 10, 13, 10 };
  private final byte[] d = { 0, 0, 0, 0, 0, 0, 0, 0, 13, 10 };
  private final OutputStream e;
  private final int f;
  private final ByteArrayOutputStream g;

  private HttpTransport$ChunkedOutputStream(OutputStream paramOutputStream, int paramInt)
  {
    this.e = paramOutputStream;
    int i = 4;
    int j = paramInt - 4;
    while (j > 0)
    {
      i++;
      j >>= 4;
    }
    this.f = Math.max(1, paramInt - i);
    this.g = new ByteArrayOutputStream(paramInt);
  }

  private void a()
  {
    int i = this.g.size();
    if (i <= 0)
      return;
    a(i);
    this.g.writeTo(this.e);
    this.g.reset();
    this.e.write(a);
  }

  private void a(int paramInt)
  {
    int i = 8;
    do
    {
      byte[] arrayOfByte = this.d;
      i--;
      arrayOfByte[i] = b[(paramInt & 0xF)];
      paramInt >>>= 4;
    }
    while (paramInt != 0);
    this.e.write(this.d, i, this.d.length - i);
  }

  public final void close()
  {
    try
    {
      boolean bool = this.closed;
      if (bool);
      while (true)
      {
        return;
        this.closed = true;
        a();
        this.e.write(c);
      }
    }
    finally
    {
    }
  }

  public final void flush()
  {
    try
    {
      boolean bool = this.closed;
      if (bool);
      while (true)
      {
        return;
        a();
        this.e.flush();
      }
    }
    finally
    {
    }
  }

  public final void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    while (true)
    {
      int i;
      try
      {
        checkNotClosed();
        Util.checkOffsetAndCount(paramArrayOfByte.length, paramInt1, paramInt2);
        if (paramInt2 > 0)
          if ((this.g.size() > 0) || (paramInt2 < this.f))
          {
            i = Math.min(paramInt2, this.f - this.g.size());
            this.g.write(paramArrayOfByte, paramInt1, i);
            if (this.g.size() == this.f)
              a();
          }
          else
          {
            i = this.f;
            a(i);
            this.e.write(paramArrayOfByte, paramInt1, i);
            this.e.write(a);
          }
      }
      finally
      {
      }
      return;
      paramInt1 += i;
      paramInt2 -= i;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.http.HttpTransport.ChunkedOutputStream
 * JD-Core Version:    0.6.2
 */