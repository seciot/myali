package com.alipay.mobile.common.media;

import android.hardware.SensorManager;

class AlipayVoiceRecorder$1 extends Thread
{
  AlipayVoiceRecorder$1(AlipayVoiceRecorder paramAlipayVoiceRecorder)
  {
  }

  public void run()
  {
    if ((AlipayVoiceRecorder.access$000(this.this$0) != null) && (AlipayVoiceRecorder.access$100(this.this$0) != null));
    try
    {
      AlipayVoiceRecorder.access$000(this.this$0).registerListener(this.this$0, AlipayVoiceRecorder.access$100(this.this$0), 3);
      return;
    }
    catch (Exception localException)
    {
      localException.getMessage();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.media.AlipayVoiceRecorder.1
 * JD-Core Version:    0.6.2
 */