package com.alipay.mobile.common.transport.spdy.internal.spdy;

import com.alipay.mobile.common.transport.spdy.internal.Util;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.io.OutputStream;

final class SpdyStream$SpdyDataOutputStream extends OutputStream
{
  private final byte[] a = new byte[8192];
  private int b = 0;
  private boolean c;
  private boolean d;
  private int e = 0;

  static
  {
    if (!SpdyStream.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  private SpdyStream$SpdyDataOutputStream(SpdyStream paramSpdyStream)
  {
  }

  private void a()
  {
    synchronized (this.this$0)
    {
      if (this.c)
        throw new IOException("stream closed");
    }
    if (this.d)
      throw new IOException("stream finished");
    if (SpdyStream.access$1000(this.this$0) != null)
      throw new IOException("stream was reset: " + SpdyStream.access$1000(this.this$0));
  }

  private void a(int paramInt, boolean paramBoolean)
  {
    while (true)
    {
      try
      {
        if (paramInt + this.e < SpdyStream.access$1300(this.this$0))
          break;
        this.this$0.wait();
        if ((!paramBoolean) && (this.c))
          throw new IOException("stream closed");
      }
      catch (InterruptedException localInterruptedException)
      {
        throw new InterruptedIOException();
      }
      if (this.d)
        throw new IOException("stream finished");
      if (SpdyStream.access$1000(this.this$0) != null)
        throw new IOException("stream was reset: " + SpdyStream.access$1000(this.this$0));
    }
  }

  private void a(boolean paramBoolean)
  {
    assert (!Thread.holdsLock(this.this$0));
    int i = this.b;
    synchronized (this.this$0)
    {
      a(i, paramBoolean);
      this.e = (i + this.e);
      SpdyStream.access$800(this.this$0).writeData(SpdyStream.access$700(this.this$0), paramBoolean, this.a, 0, this.b);
      this.b = 0;
      return;
    }
  }

  public final void close()
  {
    assert (!Thread.holdsLock(this.this$0));
    synchronized (this.this$0)
    {
      if (this.c)
        return;
      this.c = true;
      if (!SpdyStream.access$1200(this.this$0).d)
        getBundle(true);
      SpdyStream.access$800(this.this$0).flush();
      SpdyStream.access$1100(this.this$0);
      return;
    }
  }

  public final void flush()
  {
    assert (!Thread.holdsLock(this.this$0));
    a();
    if (this.b > 0)
    {
      a(false);
      SpdyStream.access$800(this.this$0).flush();
    }
  }

  public final void write(int paramInt)
  {
    Util.writeSingleByte(this, paramInt);
  }

  public final void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    assert (!Thread.holdsLock(this.this$0));
    Util.checkOffsetAndCount(paramArrayOfByte.length, paramInt1, paramInt2);
    a();
    while (paramInt2 > 0)
    {
      if (this.b == this.a.length)
        a(false);
      int i = Math.min(paramInt2, this.a.length - this.b);
      System.arraycopy(paramArrayOfByte, paramInt1, this.a, this.b, i);
      this.b = (i + this.b);
      paramInt1 += i;
      paramInt2 -= i;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.spdy.SpdyStream.SpdyDataOutputStream
 * JD-Core Version:    0.6.2
 */