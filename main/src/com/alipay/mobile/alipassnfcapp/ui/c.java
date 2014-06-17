package com.alipay.mobile.alipassnfcapp.ui;

import android.os.Handler;
import android.os.Message;
import java.util.TimerTask;

final class c extends TimerTask
{
  c(AlipassSendSoundViewController paramAlipassSendSoundViewController)
  {
  }

  public final void run()
  {
    Message localMessage = new Message();
    localMessage.what = 1;
    this.a.handlerWave.sendMessage(localMessage);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassnfcapp.ui.c
 * JD-Core Version:    0.6.2
 */