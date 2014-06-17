package com.alipay.mobile.common.transport.spdy.internal.spdy;

public abstract interface IncomingStreamHandler
{
  public static final IncomingStreamHandler REFUSE_INCOMING_STREAMS = new IncomingStreamHandler.1();

  public abstract void receive(SpdyStream paramSpdyStream);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.spdy.IncomingStreamHandler
 * JD-Core Version:    0.6.2
 */