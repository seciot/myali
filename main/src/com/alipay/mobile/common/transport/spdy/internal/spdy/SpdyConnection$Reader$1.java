package com.alipay.mobile.common.transport.spdy.internal.spdy;

import com.alipay.mobile.common.transport.spdy.internal.NamedRunnable;
import java.io.IOException;

class SpdyConnection$Reader$1 extends NamedRunnable
{
  SpdyConnection$Reader$1(SpdyConnection.Reader paramReader, String paramString, Object[] paramArrayOfObject, SpdyStream paramSpdyStream)
  {
    super(paramString, paramArrayOfObject);
  }

  public void execute()
  {
    try
    {
      SpdyConnection.access$2000(this.this$1.this$0).receive(this.val$newStream);
      return;
    }
    catch (IOException localIOException)
    {
      throw new RuntimeException(localIOException);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.spdy.SpdyConnection.Reader.1
 * JD-Core Version:    0.6.2
 */