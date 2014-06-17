package com.alipay.mobile.alipassnfcapp.ui;

import android.os.Handler;
import android.os.Message;
import com.alipay.mobile.discoverycommon.api.service.CreateDynamicCodeService;

final class b
  implements Runnable
{
  b(AlipassSendDynmicSoundViewController paramAlipassSendDynmicSoundViewController)
  {
  }

  public final void run()
  {
    String str = AlipassSendDynmicSoundViewController.access$300(this.a).getDynamicCode();
    Message localMessage = new Message();
    localMessage.obj = str;
    AlipassSendDynmicSoundViewController.access$400(this.a).sendMessage(localMessage);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassnfcapp.ui.b
 * JD-Core Version:    0.6.2
 */