package com.alipay.mobile.pubsvc.app.msgnotify;

import com.alipay.mobile.common.logging.LogCatLog;
import com.alipay.mobile.pubsvc.app.msgnotify.domain.PubAppMessage;
import com.alipay.mobile.pubsvc.app.msgnotify.domain.b;
import com.alipay.mobile.pubsvc.app.msgnotify.facade.PubAppMsgNotifyCallBack;
import com.alipay.mobile.pubsvc.app.msgnotify.mng.PubAppMessageQueue;

final class c
  implements Runnable
{
  public b a;
  public PubAppMessageQueue<PubAppMessage> b;

  public c(b paramb, PubAppMessageQueue<PubAppMessage> paramPubAppMessageQueue)
  {
    this.a = paramPubAppMessageQueue;
    Object localObject;
    this.b = localObject;
  }

  public final void run()
  {
    try
    {
      if (LogCatLog.isSwitch())
        new StringBuilder("event=[PubAppDispMsgRunnable#run] Begin notifyMessage . subscriber=[").append(this.a.a).append("]  mMessageQueue length = [").append(this.b.size()).append("]").toString();
      b localb = this.a;
      PubAppMessageQueue localPubAppMessageQueue = this.b;
      int i = localb.b.notifyMessage(localPubAppMessageQueue);
      if (LogCatLog.isSwitch())
        new StringBuilder("event=[PubAppDispMsgRunnable#run] NotifyMessage end . subscriber=[").append(this.a.a).append("]  mMessageQueue length = [").append(this.b.size()).append("] notifyResult=[").append(i).append("]").toString();
      return;
    }
    catch (Exception localException)
    {
      LogCatLog.isSwitch();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.pubsvc.app.msgnotify.c
 * JD-Core Version:    0.6.2
 */