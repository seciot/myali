package com.alipay.mobile.common.media;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;

class MediaLoadManager$4
  implements MediaPlayer.OnCompletionListener
{
  MediaLoadManager$4(MediaLoadManager paramMediaLoadManager)
  {
  }

  public void onCompletion(MediaPlayer paramMediaPlayer)
  {
    MediaLoadManager.access$500(this.this$0, 259, MediaLoadManager.access$700(this.this$0).mUrl, MediaLoadManager.access$700(this.this$0).mPath);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.media.MediaLoadManager.4
 * JD-Core Version:    0.6.2
 */