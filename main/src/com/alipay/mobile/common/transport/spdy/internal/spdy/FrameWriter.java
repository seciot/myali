package com.alipay.mobile.common.transport.spdy.internal.spdy;

import java.io.Closeable;
import java.util.List;

public abstract interface FrameWriter extends Closeable
{
  public abstract void connectionHeader();

  public abstract void data(boolean paramBoolean, int paramInt, byte[] paramArrayOfByte);

  public abstract void data(boolean paramBoolean, int paramInt1, byte[] paramArrayOfByte, int paramInt2, int paramInt3);

  public abstract void flush();

  public abstract void goAway(int paramInt, ErrorCode paramErrorCode);

  public abstract void headers(int paramInt, List paramList);

  public abstract void noop();

  public abstract void ping(boolean paramBoolean, int paramInt1, int paramInt2);

  public abstract void rstStream(int paramInt, ErrorCode paramErrorCode);

  public abstract void settings(Settings paramSettings);

  public abstract void synReply(boolean paramBoolean, int paramInt, List paramList);

  public abstract void synStream(boolean paramBoolean1, boolean paramBoolean2, int paramInt1, int paramInt2, int paramInt3, int paramInt4, List paramList);

  public abstract void windowUpdate(int paramInt1, int paramInt2);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.spdy.FrameWriter
 * JD-Core Version:    0.6.2
 */