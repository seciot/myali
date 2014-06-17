package com.alipay.mobile.common.media;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

class MediaLoadManager$2 extends Handler
{
  MediaLoadManager$2(MediaLoadManager paramMediaLoadManager, Looper paramLooper)
  {
    super(paramLooper);
  }

  public void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    switch (paramMessage.what)
    {
    default:
      return;
    case 1:
    }
    String str = (String)paramMessage.obj;
    MediaLoadManager.access$600(this.this$0, str);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.media.MediaLoadManager.2
 * JD-Core Version:    0.6.2
 */