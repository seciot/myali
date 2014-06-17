package com.alipay.mobile.common.transport.spdy.internal.spdy;

import com.alipay.mobile.common.transport.spdy.internal.NamedRunnable;
import java.io.IOException;

class SpdyConnection$1 extends NamedRunnable
{
  SpdyConnection$1(SpdyConnection paramSpdyConnection, String paramString, Object[] paramArrayOfObject, int paramInt, ErrorCode paramErrorCode)
  {
    super(paramString, paramArrayOfObject);
  }

  public void execute()
  {
    try
    {
      this.this$0.writeSynReset(this.val$streamId, this.val$errorCode);
      return;
    }
    catch (IOException localIOException)
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.spdy.SpdyConnection.1
 * JD-Core Version:    0.6.2
 */