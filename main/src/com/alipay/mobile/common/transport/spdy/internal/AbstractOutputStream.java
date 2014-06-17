package com.alipay.mobile.common.transport.spdy.internal;

import java.io.IOException;
import java.io.OutputStream;

public abstract class AbstractOutputStream extends OutputStream
{
  protected boolean closed;

  protected final void checkNotClosed()
  {
    if (this.closed)
      throw new IOException("stream closed");
  }

  public boolean isClosed()
  {
    return this.closed;
  }

  public final void write(int paramInt)
  {
    byte[] arrayOfByte = new byte[1];
    arrayOfByte[0] = ((byte)paramInt);
    write(arrayOfByte);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.AbstractOutputStream
 * JD-Core Version:    0.6.2
 */