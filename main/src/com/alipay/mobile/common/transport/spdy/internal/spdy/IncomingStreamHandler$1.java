package com.alipay.mobile.common.transport.spdy.internal.spdy;

final class IncomingStreamHandler$1
  implements IncomingStreamHandler
{
  public final void receive(SpdyStream paramSpdyStream)
  {
    paramSpdyStream.close(ErrorCode.REFUSED_STREAM);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.spdy.IncomingStreamHandler.1
 * JD-Core Version:    0.6.2
 */