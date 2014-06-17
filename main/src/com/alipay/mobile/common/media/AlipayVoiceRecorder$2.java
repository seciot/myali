package com.alipay.mobile.common.media;

import android.hardware.SensorManager;

class AlipayVoiceRecorder$2 extends Thread
{
  AlipayVoiceRecorder$2(AlipayVoiceRecorder paramAlipayVoiceRecorder)
  {
  }

  public void run()
  {
    if (AlipayVoiceRecorder.access$000(this.this$0) != null);
    try
    {
      if (AlipayVoiceRecorder.access$200(this.this$0) != null)
        AlipayVoiceRecorder.access$200(this.this$0).join();
    }
    catch (InterruptedException localInterruptedException)
    {
      try
      {
        while (true)
        {
          AlipayVoiceRecorder.access$000(this.this$0).unregisterListener(this.this$0);
          return;
          localInterruptedException = localInterruptedException;
          localInterruptedException.printStackTrace();
        }
      }
      catch (Exception localException)
      {
        localException.getMessage();
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.media.AlipayVoiceRecorder.2
 * JD-Core Version:    0.6.2
 */