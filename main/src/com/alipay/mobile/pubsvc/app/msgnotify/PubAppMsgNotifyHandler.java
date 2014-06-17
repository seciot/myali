package com.alipay.mobile.pubsvc.app.msgnotify;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.alibaba.fastjson.JSON;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.common.logging.LogCatLog;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.pubsvc.app.msgnotify.domain.PubAppMessage;
import com.alipay.mobile.pubsvc.app.msgnotify.mng.PubAppMessageQueue;
import com.alipay.mobile.pubsvc.app.msgnotify.mng.c;
import java.util.List;

public class PubAppMsgNotifyHandler extends Handler
{
  private a a;

  public PubAppMsgNotifyHandler(Looper paramLooper)
  {
    super(paramLooper);
    new Thread(new e(this)).start();
  }

  private static PubAppMessage a(String paramString)
  {
    try
    {
      PubAppMessage localPubAppMessage = (PubAppMessage)JSON.parseObject(paramString, PubAppMessage.class);
      return localPubAppMessage;
    }
    catch (Exception localException)
    {
      if (LogCatLog.isSwitch())
        new StringBuilder("event=[PubAppMsgNotifyHandler#deserialize]  Deserialize 'PubAppMessage' json exception message=[").append(paramString).append("]").toString();
    }
    return null;
  }

  public void handleMessage(Message paramMessage)
  {
    PubAppMessage localPubAppMessage;
    try
    {
      switch (paramMessage.what)
      {
      case 0:
        LogCatLog.isSwitch();
        localPubAppMessage = a((String)paramMessage.obj);
        if (localPubAppMessage == null)
        {
          LogCatLog.isSwitch();
          return;
        }
        break;
      case 1:
      }
    }
    catch (Exception localException)
    {
      LogCatLog.isSwitch();
      return;
    }
    String str1 = localPubAppMessage.publicId;
    String str2 = localPubAppMessage.message;
    AlipayLogAgent.writeLog(AlipayApplication.getInstance().getApplicationContext(), BehaviourIdEnum.NONE, "", null, "public", "", "", "", "receiveLonglink", "", "s", "c", new String[] { str1, str2, "", "", "" });
    List localList;
    if (TextUtils.equals("MESSAGE", localPubAppMessage.eventType))
    {
      if (LogCatLog.isSwitch())
        new StringBuilder("event=[PubAppMsgNotifyHandler#enqueueMessage] begin enqueueMessage. message=[").append(localPubAppMessage.toString()).append("]").toString();
      localList = ((c)com.alipay.mobile.pubsvc.app.msgnotify.mng.a.a().a(c.class)).a();
      if (localList.isEmpty())
        LogCatLog.isSwitch();
    }
    for (int j = 0; ; j = 1)
    {
      com.alipay.mobile.pubsvc.app.msgnotify.mng.b localb3;
      if (j != 0)
      {
        this.a.sendEmptyMessage(0);
        return;
        localb3 = (com.alipay.mobile.pubsvc.app.msgnotify.mng.b)com.alipay.mobile.pubsvc.app.msgnotify.mng.a.a().a(com.alipay.mobile.pubsvc.app.msgnotify.mng.b.class);
      }
      for (int i = -1 + localList.size(); i >= 0; i--)
      {
        com.alipay.mobile.pubsvc.app.msgnotify.domain.b localb4 = (com.alipay.mobile.pubsvc.app.msgnotify.domain.b)localList.get(i);
        if (localb4 == null)
        {
          if (LogCatLog.isSwitch())
            new StringBuilder("event=[PubAppMsgNotifyHandler#enqueueMessage] allSubscribers.get(").append(i).append(") is null").toString();
        }
        else if (localb4.a(localPubAppMessage))
        {
          PubAppMessageQueue localPubAppMessageQueue2 = localb3.a(localb4.a);
          if ((localPubAppMessageQueue2 != null) && (localPubAppMessageQueue2.isGreatThanMaxMsgCount()))
          {
            if (!LogCatLog.isSwitch())
              break;
            new StringBuilder("event=[PubAppMsgNotifyHandler#enqueueMessage] ").append(localb4.a).append(" of the message count have been over 100. Discard message[").append(localPubAppMessage.toString()).append("]").toString();
            break;
          }
          localb3.a(localb4.a, localPubAppMessage);
          break;
          if ((paramMessage.obj instanceof com.alipay.mobile.pubsvc.app.msgnotify.domain.a))
          {
            com.alipay.mobile.pubsvc.app.msgnotify.domain.a locala = (com.alipay.mobile.pubsvc.app.msgnotify.domain.a)paramMessage.obj;
            com.alipay.mobile.pubsvc.app.msgnotify.domain.b localb1 = ((c)com.alipay.mobile.pubsvc.app.msgnotify.mng.a.a().a(c.class)).a(locala.a);
            if ((localb1 != null) && (localb1.a(locala.b)))
            {
              com.alipay.mobile.pubsvc.app.msgnotify.mng.b localb2 = (com.alipay.mobile.pubsvc.app.msgnotify.mng.b)com.alipay.mobile.pubsvc.app.msgnotify.mng.a.a().a(com.alipay.mobile.pubsvc.app.msgnotify.mng.b.class);
              PubAppMessageQueue localPubAppMessageQueue1 = localb2.a(localb1.a);
              if ((localPubAppMessageQueue1 != null) && (localPubAppMessageQueue1.isGreatThanMaxMsgCount()))
              {
                if (LogCatLog.isSwitch())
                  new StringBuilder("event=[PubAppMsgNotifyHandler#handleMessageForDelegateType] ").append(localb1.a).append(" of the message count have been over 100. Discard message[").append(locala.b.toString()).append("]").toString();
              }
              else
              {
                localb2.a(localb1.a, locala.b);
                this.a.sendEmptyMessage(0);
                if (LogCatLog.isSwitch())
                  new StringBuilder("event=[PubAppMsgNotifyHandler#handleMessageForDelegateType] Delegate message success. subscriber=[").append(localb1.a).append("]").toString();
              }
            }
          }
          return;
        }
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.pubsvc.app.msgnotify.PubAppMsgNotifyHandler
 * JD-Core Version:    0.6.2
 */