package com.alipay.mobile.common.transport.spdy.internal.spdy;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public final class Ping
{
  private final CountDownLatch a = new CountDownLatch(1);
  private long b = -1L;
  private long c = -1L;

  final void cancel()
  {
    if ((this.c != -1L) || (this.b == -1L))
      throw new IllegalStateException();
    this.c = (this.b - 1L);
    this.a.countDown();
  }

  final void receive()
  {
    if ((this.c != -1L) || (this.b == -1L))
      throw new IllegalStateException();
    this.c = System.nanoTime();
    this.a.countDown();
  }

  public final long roundTripTime()
  {
    this.a.await();
    return this.c - this.b;
  }

  public final long roundTripTime(long paramLong, TimeUnit paramTimeUnit)
  {
    if (this.a.await(paramLong, paramTimeUnit))
      return this.c - this.b;
    return -2L;
  }

  final void send()
  {
    if (this.b != -1L)
      throw new IllegalStateException();
    this.b = System.nanoTime();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.spdy.Ping
 * JD-Core Version:    0.6.2
 */