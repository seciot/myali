package com.alipay.mobile.common.transport.spdy.internal.spdy;

import com.alipay.mobile.common.transport.spdy.internal.NamedRunnable;
import java.io.IOException;

class SpdyConnection$2 extends NamedRunnable
{
  SpdyConnection$2(SpdyConnection paramSpdyConnection, String paramString, Object[] paramArrayOfObject, int paramInt1, int paramInt2)
  {
    super(paramString, paramArrayOfObject);
  }

  public void execute()
  {
    try
    {
      this.this$0.writeWindowUpdate(this.val$streamId, this.val$deltaWindowSize);
      return;
    }
    catch (IOException localIOException)
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.spdy.SpdyConnection.2
 * JD-Core Version:    0.6.2
 */