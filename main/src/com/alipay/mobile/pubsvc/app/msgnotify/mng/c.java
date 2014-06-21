package com.alipay.mobile.pubsvc.app.msgnotify.mng;

import com.alipay.mobile.common.logging.LogCatLog;
import com.alipay.mobile.pubsvc.app.msgnotify.PubAppLongConnMsgReceiver;
import com.alipay.mobile.pubsvc.app.msgnotify.facade.PubAppMsgNotifyCallBack;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class c
{
  private Map<String, com.alipay.mobile.pubsvc.app.msgnotify.domain.b> a = new LinkedHashMap();
  private List<PubAppMsgSubscriberManager.RemoveSubscriberListener> b = new ArrayList(3);

  private void b()
  {
    if (!this.b.isEmpty())
      for (int i = 0; i < this.b.size(); i++)
        this.b.get(i);
  }

  public final com.alipay.mobile.pubsvc.app.msgnotify.domain.b a(String paramString)
  {
    com.alipay.mobile.pubsvc.app.msgnotify.domain.b localb;
    if (this.a.isEmpty())
    {
      LogCatLog.isSwitch();
      localb = null;
    }
    do
    {
      return localb;
      localb = (com.alipay.mobile.pubsvc.app.msgnotify.domain.b)this.a.get(paramString);
    }
    while (localb != null);
    if (LogCatLog.isSwitch())
      new StringBuilder("event=[PubAppMsgSubscriberManager#getSubscriber] ").append(paramString).append(" non-existent !").toString();
    return null;
  }

  public final List<com.alipay.mobile.pubsvc.app.msgnotify.domain.b> a()
  {
    if (this.a.isEmpty())
    {
      LogCatLog.isSwitch();
      return new ArrayList(0);
    }
    if (LogCatLog.isSwitch())
      new StringBuilder("event=[PubAppMsgSubscriberManager#getAllSubscribers] Subscribers count : ").append(this.a.size()).toString();
    return new ArrayList(this.a.values());
  }

  public final boolean a(String paramString, PubAppMsgNotifyCallBack paramPubAppMsgNotifyCallBack)
  {
    if ((paramString == null) || (paramPubAppMsgNotifyCallBack == null))
      return false;
    try
    {
      PubAppLongConnMsgReceiver localPubAppLongConnMsgReceiver = (PubAppLongConnMsgReceiver)a.getInstance().getBundle(PubAppLongConnMsgReceiver.class);
      if (!localPubAppLongConnMsgReceiver.b())
        localPubAppLongConnMsgReceiver.a();
      try
      {
        com.alipay.mobile.pubsvc.app.msgnotify.domain.b localb = new com.alipay.mobile.pubsvc.app.msgnotify.domain.b();
        localb.b = paramPubAppMsgNotifyCallBack;
        localb.a = paramString;
        this.a.put(paramString, localb);
        if (LogCatLog.isSwitch())
          new StringBuilder("event=[PubAppMsgSubscriberManager#setSubscribMsg] subscribe success. subscriber=[").append(paramString).append("] ").toString();
        return true;
      }
      finally
      {
      }
    }
    catch (Exception localException)
    {
      if (LogCatLog.isSwitch())
        new StringBuilder("setSubscribMsg exception. subscriberEnum=[").append(paramString.toString()).append("]").toString();
    }
    return false;
  }

  public final boolean b(String paramString)
  {
    try
    {
      try
      {
        if (((b)a.getInstance().getBundle(b.class)).b(paramString))
        {
          this.a.remove(paramString);
          if (LogCatLog.isSwitch())
            new StringBuilder("event=[PubAppMsgSubscriberManager#removeSubscriber] Subscriber removed. subscriberEnum=[").append(paramString).append("]").toString();
          b();
        }
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
 * Qualified Name:     com.alipay.mobile.pubsvc.app.msgnotify.mng.c
 * JD-Core Version:    0.6.2
 */