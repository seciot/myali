package com.alipay.mobile.pubsvc.app.msgnotify;

import android.os.Looper;

final class e
  implements Runnable
{
  e(PubAppMsgNotifyHandler paramPubAppMsgNotifyHandler)
  {
  }

  public final void run()
  {
    Looper.prepare();
    PubAppMsgNotifyHandler.access$002(this.a, new a(Looper.myLooper()));
    Looper.loop();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.pubsvc.app.msgnotify.e
 * JD-Core Version:    0.6.2
 */