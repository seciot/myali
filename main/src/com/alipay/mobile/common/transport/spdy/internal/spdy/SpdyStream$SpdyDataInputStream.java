package com.alipay.mobile.common.transport.spdy.internal.spdy;

import com.alipay.mobile.common.transport.spdy.internal.Util;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;

final class SpdyStream$SpdyDataInputStream extends InputStream
{
  private final byte[] a = new byte[65536];
  private int b = -1;
  private int c;
  private boolean d;
  private boolean e;
  private int f = 0;

  static
  {
    if (!SpdyStream.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  private SpdyStream$SpdyDataInputStream(SpdyStream paramSpdyStream)
  {
  }

  private void a()
  {
    if (this.d)
      throw new IOException("stream closed");
    if (SpdyStream.access$1000(this.this$0) != null)
      throw new IOException("stream was reset: " + SpdyStream.access$1000(this.this$0));
  }

  public final int available()
  {
    synchronized (this.this$0)
    {
      getInstance();
      if (this.b == -1)
        return 0;
      if (this.c > this.b)
      {
        int j = this.c - this.b;
        return j;
      }
    }
    int i = this.c + (this.a.length - this.b);
    return i;
  }

  public final void close()
  {
    synchronized (this.this$0)
    {
      this.d = true;
      this.this$0.notifyAll();
      SpdyStream.access$1100(this.this$0);
      return;
    }
  }

  public final int read()
  {
    return Util.readSingleByte(this);
  }

  public final int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    while (true)
    {
      long l1;
      long l2;
      synchronized (this.this$0)
      {
        Util.checkOffsetAndCount(paramArrayOfByte.length, paramInt1, paramInt2);
        l1 = 0L;
        l2 = 0L;
        if (SpdyStream.access$900(this.this$0) != 0L)
        {
          l1 = System.nanoTime() / 1000000L;
          long l3 = SpdyStream.access$900(this.this$0);
          l2 = l3;
        }
        try
        {
          if ((this.b != -1) || (this.e) || (this.d) || (SpdyStream.access$1000(this.this$0) != null))
            break;
          if (SpdyStream.access$900(this.this$0) == 0L)
          {
            this.this$0.wait();
            continue;
          }
        }
        catch (InterruptedException localInterruptedException)
        {
          throw new InterruptedIOException();
        }
      }
      if (l2 > 0L)
      {
        this.this$0.wait(l2);
        l2 = l1 + SpdyStream.access$900(this.this$0) - System.nanoTime() / 1000000L;
      }
      else
      {
        throw new SocketTimeoutException();
      }
    }
    a();
    if (this.b == -1)
      return -1;
    int i = this.c;
    int j = this.b;
    int k = 0;
    if (i <= j)
    {
      int m = Math.min(paramInt2, this.a.length - this.b);
      System.arraycopy(this.a, this.b, paramArrayOfByte, paramInt1, m);
      this.b = (m + this.b);
      k = m + 0;
      if (this.b == this.a.length)
        this.b = 0;
    }
    if (k < paramInt2)
    {
      int n = Math.min(this.c - this.b, paramInt2 - k);
      System.arraycopy(this.a, this.b, paramArrayOfByte, paramInt1 + k, n);
      this.b = (n + this.b);
      k += n;
    }
    this.f = (k + this.f);
    if (this.f >= 32768)
    {
      SpdyStream.access$800(this.this$0).writeWindowUpdateLater(SpdyStream.access$700(this.this$0), this.f);
      this.f = 0;
    }
    if (this.b == this.c)
    {
      this.b = -1;
      this.c = 0;
    }
    return k;
  }

  final void receive(InputStream paramInputStream, int paramInt)
  {
    assert (!Thread.holdsLock(this.this$0));
    if (paramInt == 0)
      return;
    boolean bool;
    int i;
    int j;
    int k;
    synchronized (this.this$0)
    {
      bool = this.e;
      i = this.b;
      j = this.c;
      k = this.c;
      int m;
      if (paramInt > this.a.length - available())
      {
        m = 1;
        if (m != 0)
        {
          Util.skipByReading(paramInputStream, paramInt);
          this.this$0.closeLater(ErrorCode.FLOW_CONTROL_ERROR);
        }
      }
      else
      {
        m = 0;
      }
    }
    if (bool)
    {
      Util.skipByReading(paramInputStream, paramInt);
      return;
    }
    int n;
    if (i < k)
    {
      int i1 = Math.min(paramInt, this.a.length - k);
      Util.readFully(paramInputStream, this.a, k, i1);
      k += i1;
      paramInt -= i1;
      int i2 = this.a.length;
      n = 0;
      if (k != i2);
    }
    while (true)
    {
      if (paramInt > 0)
      {
        Util.readFully(paramInputStream, this.a, n, paramInt);
        n += paramInt;
      }
      synchronized (this.this$0)
      {
        this.c = n;
        if (this.b == -1)
        {
          this.b = j;
          this.this$0.notifyAll();
        }
        return;
      }
      n = k;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.spdy.SpdyStream.SpdyDataInputStream
 * JD-Core Version:    0.6.2
 */