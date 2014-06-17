package com.alipay.mobile.common.media;

class AlipayVoiceRecorder$MaxRecordDurationNotifier
  implements Runnable
{
  private AlipayVoiceRecorder.MaxRecordDurationListener a;

  private AlipayVoiceRecorder$MaxRecordDurationNotifier(AlipayVoiceRecorder paramAlipayVoiceRecorder)
  {
  }

  public void run()
  {
    this.this$0.stopRecording();
    if (this.a != null)
      this.a.onMaxRecordDurationCompleted();
  }

  void setListener(AlipayVoiceRecorder.MaxRecordDurationListener paramMaxRecordDurationListener)
  {
    this.a = paramMaxRecordDurationListener;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.media.AlipayVoiceRecorder.MaxRecordDurationNotifier
 * JD-Core Version:    0.6.2
 */