package com.alipay.mobile.common.transport.spdy.internal.spdy;

import com.alipay.mobile.common.transport.spdy.mwallet.SpdyStrategy;
import java.util.TimerTask;

public class SpdyConnection$PingTimerTask extends TimerTask
{
  public SpdyConnection$PingTimerTask(SpdyConnection paramSpdyConnection)
  {
  }

  public void run()
  {
    if (System.currentTimeMillis() - SpdyConnection.access$700(this.this$0) < SpdyStrategy.DEFAULT_PING_INTERVAL)
      return;
    try
    {
      if (SpdyConnection.access$800(this.this$0) > SpdyStrategy.DEFAULT_IDLE_PING_MAX_TIMES)
      {
        SpdyConnection.access$900(this.this$0);
        return;
      }
    }
    finally
    {
    }
    SpdyConnection.access$808(this.this$0);
    try
    {
      this.this$0.ping();
      new StringBuilder("Spdy ping sent.").append(SpdyConnection.access$800(this.this$0)).toString();
      return;
    }
    catch (Exception localException)
    {
      SpdyConnection.access$900(this.this$0);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.spdy.SpdyConnection.PingTimerTask
 * JD-Core Version:    0.6.2
 */