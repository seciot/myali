package com.alipay.mobile.common.media;

import android.telephony.PhoneStateListener;

class AlipayVoiceRecorder$3 extends PhoneStateListener
{
  AlipayVoiceRecorder$3(AlipayVoiceRecorder paramAlipayVoiceRecorder)
  {
  }

  public void onCallStateChanged(int paramInt, String paramString)
  {
    new StringBuilder("Call state changed: ").append(paramInt).toString();
    switch (paramInt)
    {
    default:
    case 1:
    case 0:
    case 2:
    }
    while (true)
    {
      super.onCallStateChanged(paramInt, paramString);
      return;
      AlipayVoiceRecorder.access$302(this.this$0, true);
      continue;
      AlipayVoiceRecorder.access$302(this.this$0, false);
      continue;
      AlipayVoiceRecorder.access$302(this.this$0, true);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.media.AlipayVoiceRecorder.3
 * JD-Core Version:    0.6.2
 */