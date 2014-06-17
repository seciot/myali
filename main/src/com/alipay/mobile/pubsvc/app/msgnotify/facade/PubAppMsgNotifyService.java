package com.alipay.mobile.pubsvc.app.msgnotify.facade;

import android.os.Message;
import android.text.TextUtils;
import com.alipay.mobile.common.logging.LogCatLog;
import com.alipay.mobile.pubsvc.app.msgnotify.PubAppLongConnMsgReceiver;
import com.alipay.mobile.pubsvc.app.msgnotify.PubAppMsgNotifyHandler;
import com.alipay.mobile.pubsvc.app.msgnotify.domain.PubAppMessage;
import com.alipay.mobile.pubsvc.app.msgnotify.mng.PubAppMessageQueue;
import com.alipay.mobile.pubsvc.app.msgnotify.mng.b;
import com.alipay.mobile.pubsvc.app.msgnotify.mng.c;

public final class PubAppMsgNotifyService
{
  private static PubAppMsgNotifyService a;

  private static final void a()
  {
    try
    {
      if (a == null)
        a = new PubAppMsgNotifyService();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static final PubAppMsgNotifyService instance()
  {
    if (a == null)
      a();
    return a;
  }

  public final PubAppMessageQueue<PubAppMessage> getMsgQueueBySubscribe(String paramString)
  {
    try
    {
      PubAppMessageQueue localPubAppMessageQueue = ((b)com.alipay.mobile.pubsvc.app.msgnotify.mng.a.a().a(b.class)).a(paramString);
      return localPubAppMessageQueue;
    }
    catch (Exception localException)
    {
      LogCatLog.isSwitch();
    }
    return new PubAppMessageQueue();
  }

  public final void removeSubscriber(String paramString)
  {
    try
    {
      if (LogCatLog.isSwitch())
        new StringBuilder("event=[PubAppMsgNotifyService#removeSubscriber] subscriberEnum=[").append(paramString).append("]").toString();
      ((c)com.alipay.mobile.pubsvc.app.msgnotify.mng.a.a().a(c.class)).b(paramString);
      return;
    }
    catch (Exception localException)
    {
      LogCatLog.isSwitch();
    }
  }

  public final boolean setSubscribMsg(String paramString, PubAppMsgNotifyCallBack paramPubAppMsgNotifyCallBack)
  {
    if (LogCatLog.isSwitch())
      new StringBuilder("event=[PubAppMsgNotifyService#setSubscribMsg] subscriber=[").append(paramString).append("]").toString();
    try
    {
      ((c)com.alipay.mobile.pubsvc.app.msgnotify.mng.a.a().a(c.class)).a(paramString, paramPubAppMsgNotifyCallBack);
      return true;
    }
    catch (Exception localException)
    {
      LogCatLog.isSwitch();
    }
    return false;
  }

  public final boolean tryDelegateMessage(String paramString, PubAppMessage paramPubAppMessage)
  {
    if ((TextUtils.isEmpty(paramString)) || (paramPubAppMessage == null))
    {
      StringBuilder localStringBuilder;
      if (LogCatLog.isSwitch())
      {
        localStringBuilder = new StringBuilder("event=[PubAppMsgNotifyService#tryDelegateMessage] Exception. subscriberEnum=[").append(paramString).append("] pubAppMessage=[");
        if (paramPubAppMessage == null)
          break label63;
      }
      label63: for (String str = paramPubAppMessage.toString(); ; str = "pubAppMessage is null")
      {
        localStringBuilder.append(str).append("]").toString();
        return false;
      }
    }
    try
    {
      if (!((PubAppLongConnMsgReceiver)com.alipay.mobile.pubsvc.app.msgnotify.mng.a.a().a(PubAppLongConnMsgReceiver.class)).b())
        return false;
      PubAppMsgNotifyHandler localPubAppMsgNotifyHandler = (PubAppMsgNotifyHandler)com.alipay.mobile.pubsvc.app.msgnotify.mng.a.a().a(PubAppMsgNotifyHandler.class);
      com.alipay.mobile.pubsvc.app.msgnotify.domain.a locala = new com.alipay.mobile.pubsvc.app.msgnotify.domain.a();
      locala.a = paramString;
      locala.b = paramPubAppMessage;
      localPubAppMsgNotifyHandler.obtainMessage(1, locala).sendToTarget();
      return true;
    }
    catch (Exception localException)
    {
      if (LogCatLog.isSwitch())
        new StringBuilder("event=[PubAppMsgNotifyService#tryDelegateMessage] Exception. subscriberEnum=[").append(paramString).append("] pubAppMessage=[").append(paramPubAppMessage.toString()).append("]").toString();
    }
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.pubsvc.app.msgnotify.facade.PubAppMsgNotifyService
 * JD-Core Version:    0.6.2
 */