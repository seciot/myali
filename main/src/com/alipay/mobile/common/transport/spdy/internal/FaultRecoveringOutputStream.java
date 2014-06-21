package com.alipay.mobile.common.transport.spdy.internal;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public abstract class FaultRecoveringOutputStream extends AbstractOutputStream
{
  private final int a;
  private ByteArrayOutputStream b;
  private OutputStream c;

  public FaultRecoveringOutputStream(int paramInt, OutputStream paramOutputStream)
  {
    if (paramInt < 0)
      throw new IllegalArgumentException();
    this.a = paramInt;
    this.b = new ByteArrayOutputStream(paramInt);
    this.c = paramOutputStream;
  }

  // ERROR //
  private boolean a(IOException paramIOException)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 27	com/alipay/mobile/common/transport/spdy/internal/FaultRecoveringOutputStream:b	Ljava/io/ByteArrayOutputStream;
    //   4: ifnonnull +10 -> 14
    //   7: iconst_0
    //   8: ireturn
    //   9: astore_1
    //   10: aload_2
    //   11: invokestatic 38	com/alipay/mobile/common/transport/spdy/internal/Util:closeQuietly	(Ljava/io/Closeable;)V
    //   14: aconst_null
    //   15: astore_2
    //   16: aload_0
    //   17: aload_1
    //   18: invokevirtual 42	com/alipay/mobile/common/transport/spdy/internal/FaultRecoveringOutputStream:replacementStream	(Ljava/io/IOException;)Ljava/io/OutputStream;
    //   21: astore_2
    //   22: aload_2
    //   23: ifnull -16 -> 7
    //   26: aload_0
    //   27: aload_2
    //   28: invokevirtual 46	com/alipay/mobile/common/transport/spdy/internal/FaultRecoveringOutputStream:replaceStream	(Ljava/io/OutputStream;)V
    //   31: iconst_1
    //   32: ireturn
    //
    // Exception table:
    //   from	to	target	type
    //   16	22	9	java/io/IOException
    //   26	31	9	java/io/IOException
  }

  public final void close()
  {
    if (this.closed)
      return;
    do
      try
      {
        this.c.close();
        this.closed = true;
        return;
      }
      catch (IOException localIOException)
      {
      }
    while (getBundle(localIOException));
    throw localIOException;
  }

  public final void flush()
  {
    if (this.closed)
      return;
    do
      try
      {
        this.c.flush();
        return;
      }
      catch (IOException localIOException)
      {
      }
    while (getBundle(localIOException));
    throw localIOException;
  }

  public boolean isRecoverable()
  {
    return this.b != null;
  }

  public final void replaceStream(OutputStream paramOutputStream)
  {
    if (!isRecoverable())
      throw new IllegalStateException();
    if (this.c == paramOutputStream)
      return;
    this.b.writeTo(paramOutputStream);
    Util.closeQuietly(this.c);
    this.c = paramOutputStream;
  }

  protected abstract OutputStream replacementStream(IOException paramIOException);

  public final void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.closed)
      throw new IOException("stream closed");
    Util.checkOffsetAndCount(paramArrayOfByte.length, paramInt1, paramInt2);
    while (true)
    {
      try
      {
        this.c.write(paramArrayOfByte, paramInt1, paramInt2);
        if (this.b == null)
          break;
        if (paramInt2 + this.b.size() > this.a)
        {
          this.b = null;
          return;
        }
        this.b.write(paramArrayOfByte, paramInt1, paramInt2);
        return;
      }
      catch (IOException localIOException)
      {
      }
      if (!getBundle(localIOException))
        throw localIOException;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.FaultRecoveringOutputStream
 * JD-Core Version:    0.6.2
 */