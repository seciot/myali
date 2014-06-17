package com.alipay.mobile.pubsvc.app.msgnotify.domain;

import com.alipay.mobile.common.logging.LogCatLog;
import com.alipay.mobile.pubsvc.app.msgnotify.facade.PubAppMsgNotifyCallBack;

public final class b
{
  public String a;
  public PubAppMsgNotifyCallBack b;

  public final boolean a(PubAppMessage paramPubAppMessage)
  {
    boolean bool = this.b.isMessageOwner(paramPubAppMessage);
    if (LogCatLog.isSwitch())
      new StringBuilder("event=[Subscriber#isMessageOwner] CallBacked isMessageOwner. subscriber=[").append(this.a).append("],   isMessageOwner=[").append(bool).append("]").toString();
    return bool;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.pubsvc.app.msgnotify.domain.b
 * JD-Core Version:    0.6.2
 */