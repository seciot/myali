package com.alipay.mobile.common.media;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;

class VoiceRecorder$2
  implements MediaPlayer.OnCompletionListener
{
  VoiceRecorder$2(VoiceRecorder paramVoiceRecorder, MediaPlayer.OnCompletionListener paramOnCompletionListener)
  {
  }

  public void onCompletion(MediaPlayer paramMediaPlayer)
  {
    this.this$0.onCompletion(paramMediaPlayer);
    this.val$completionListener.onCompletion(paramMediaPlayer);
    this.this$0.stopProgress();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.media.VoiceRecorder.2
 * JD-Core Version:    0.6.2
 */