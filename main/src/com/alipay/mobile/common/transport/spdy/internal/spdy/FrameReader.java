package com.alipay.mobile.common.transport.spdy.internal.spdy;

import java.io.Closeable;

public abstract interface FrameReader extends Closeable
{
  public abstract boolean nextFrame(FrameReader.Handler paramHandler);

  public abstract void readConnectionHeader();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.spdy.FrameReader
 * JD-Core Version:    0.6.2
 */