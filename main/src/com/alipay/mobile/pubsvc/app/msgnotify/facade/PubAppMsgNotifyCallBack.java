package com.alipay.mobile.pubsvc.app.msgnotify.facade;

import com.alipay.mobile.pubsvc.app.msgnotify.domain.PubAppMessage;
import com.alipay.mobile.pubsvc.app.msgnotify.mng.PubAppMessageQueue;

public abstract interface PubAppMsgNotifyCallBack
{
  public abstract boolean isMessageOwner(PubAppMessage paramPubAppMessage);

  public abstract int notifyMessage(PubAppMessageQueue<PubAppMessage> paramPubAppMessageQueue);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.pubsvc.app.msgnotify.facade.PubAppMsgNotifyCallBack
 * JD-Core Version:    0.6.2
 */