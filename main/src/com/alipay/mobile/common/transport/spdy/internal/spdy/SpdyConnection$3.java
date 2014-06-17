package com.alipay.mobile.common.transport.spdy.internal.spdy;

import com.alipay.mobile.common.transport.spdy.internal.NamedRunnable;
import java.io.IOException;

class SpdyConnection$3 extends NamedRunnable
{
  SpdyConnection$3(SpdyConnection paramSpdyConnection, String paramString, Object[] paramArrayOfObject, boolean paramBoolean, int paramInt1, int paramInt2, Ping paramPing)
  {
    super(paramString, paramArrayOfObject);
  }

  public void execute()
  {
    try
    {
      SpdyConnection.access$1000(this.this$0, this.val$reply, this.val$payload1, this.val$payload2, this.val$ping);
      return;
    }
    catch (IOException localIOException)
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.spdy.SpdyConnection.3
 * JD-Core Version:    0.6.2
 */