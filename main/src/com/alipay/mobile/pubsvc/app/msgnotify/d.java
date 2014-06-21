package com.alipay.mobile.pubsvc.app.msgnotify;

import android.os.Looper;
import com.alipay.mobile.common.logging.LogCatLog;
import com.alipay.mobile.pubsvc.app.msgnotify.mng.a;

final class d
  implements Runnable
{
  d(PubAppLongConnMsgReceiver paramPubAppLongConnMsgReceiver)
  {
  }

  public final void run()
  {
    try
    {
      Looper.prepare();
      PubAppLongConnMsgReceiver localPubAppLongConnMsgReceiver = this.a;
      a locala = a.a();
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Looper.myLooper();
      PubAppLongConnMsgReceiver.v(localPubAppLongConnMsgReceiver, (PubAppMsgNotifyHandler)locala.a(PubAppMsgNotifyHandler.class, arrayOfObject));
      Looper.loop();
      LogCatLog.isSwitch();
      return;
    }
    catch (Exception localException)
    {
      LogCatLog.isSwitch();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.pubsvc.app.msgnotify.d
 * JD-Core Version:    0.6.2
 */