package com.alipay.mobile.pubsvc.app.msgnotify.mng;

import com.alipay.mobile.common.logging.LogCatLog;
import com.alipay.mobile.pubsvc.app.msgnotify.domain.PubAppMessage;
import java.util.HashMap;
import java.util.Map;

public class b
{
  private Map<String, PubAppMessageQueue<PubAppMessage>> a = new HashMap();

  public final PubAppMessageQueue<PubAppMessage> a(String paramString)
  {
    PubAppMessageQueue localPubAppMessageQueue = (PubAppMessageQueue)this.a.get(paramString);
    if (localPubAppMessageQueue == null)
      localPubAppMessageQueue = new PubAppMessageQueue();
    return localPubAppMessageQueue;
  }

  public final boolean a(String paramString, PubAppMessage paramPubAppMessage)
  {
    PubAppMessageQueue localPubAppMessageQueue = (PubAppMessageQueue)this.a.get(paramString);
    if (localPubAppMessageQueue == null);
    try
    {
      localPubAppMessageQueue = (PubAppMessageQueue)this.a.get(paramString);
      if (localPubAppMessageQueue == null)
      {
        localPubAppMessageQueue = new PubAppMessageQueue();
        localPubAppMessageQueue.setSubscriberEnum(paramString);
        this.a.put(paramString, localPubAppMessageQueue);
      }
      return localPubAppMessageQueue.add(paramPubAppMessage);
    }
    finally
    {
    }
  }

  public final boolean b(String paramString)
  {
    try
    {
      try
      {
        a(paramString).clear();
        if (LogCatLog.isSwitch())
          new StringBuilder("event=[PubAppMsgSubscriberManager#removeMsgQueue] PubAppMessageQueue cleared. subscriberEnum=[").append(paramString).append("]").toString();
        this.a.remove(paramString);
        if (LogCatLog.isSwitch())
          new StringBuilder("event=[PubAppMsgSubscriberManager#removeMsgQueue] PubAppMessageQueue removed. subscriberEnum=[").append(paramString).append("]").toString();
        return true;
      }
      finally
      {
      }
    }
    catch (Exception localException)
    {
      LogCatLog.isSwitch();
    }
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.pubsvc.app.msgnotify.mng.b
 * JD-Core Version:    0.6.2
 */