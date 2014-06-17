package com.alipay.mobile.onsitepay.payer.sound;

import android.os.Handler;
import android.os.Message;
import java.util.TimerTask;

final class ae extends TimerTask
{
  ae(SoundButtonActivity paramSoundButtonActivity)
  {
  }

  public final void run()
  {
    Message localMessage = new Message();
    localMessage.what = 1;
    SoundButtonActivity.access$300(this.a).sendMessage(localMessage);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payer.sound.ae
 * JD-Core Version:    0.6.2
 */