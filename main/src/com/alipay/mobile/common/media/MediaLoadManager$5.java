package com.alipay.mobile.common.media;

import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnPreparedListener;
import java.io.File;

class MediaLoadManager$5
  implements Runnable
{
  MediaLoadManager$5(MediaLoadManager paramMediaLoadManager, File paramFile, MediaPlayer.OnPreparedListener paramOnPreparedListener, MediaPlayer.OnCompletionListener paramOnCompletionListener)
  {
  }

  public void run()
  {
    MediaLoadManager.access$800(this.this$0).play(this.val$file, this.val$onPrepared, this.val$onCompletion);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.media.MediaLoadManager.5
 * JD-Core Version:    0.6.2
 */