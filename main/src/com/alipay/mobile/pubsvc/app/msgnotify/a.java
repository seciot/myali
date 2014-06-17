package com.alipay.mobile.pubsvc.app.msgnotify;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.alipay.mobile.common.logging.LogCatLog;
import com.alipay.mobile.pubsvc.app.msgnotify.mng.PubAppMessageQueue;
import java.util.List;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class a extends Handler
{
  private final ThreadPoolExecutor a = new ThreadPoolExecutor(1, 3, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(20), new b(this, (byte)0));

  public a(Looper paramLooper)
  {
    super(paramLooper);
  }

  public final void handleMessage(Message paramMessage)
  {
    try
    {
      LogCatLog.isSwitch();
      List localList = ((com.alipay.mobile.pubsvc.app.msgnotify.mng.c)com.alipay.mobile.pubsvc.app.msgnotify.mng.a.a().a(com.alipay.mobile.pubsvc.app.msgnotify.mng.c.class)).a();
      if (localList.isEmpty())
      {
        LogCatLog.isSwitch();
        return;
      }
      com.alipay.mobile.pubsvc.app.msgnotify.mng.b localb = (com.alipay.mobile.pubsvc.app.msgnotify.mng.b)com.alipay.mobile.pubsvc.app.msgnotify.mng.a.a().a(com.alipay.mobile.pubsvc.app.msgnotify.mng.b.class);
      int i = -1 + localList.size();
      while (true)
        if (i >= 0)
        {
          com.alipay.mobile.pubsvc.app.msgnotify.domain.b localb1 = (com.alipay.mobile.pubsvc.app.msgnotify.domain.b)localList.get(i);
          PubAppMessageQueue localPubAppMessageQueue = localb.a(localb1.a);
          if (!localPubAppMessageQueue.isEmpty())
            this.a.execute(new c(this, localb1, localPubAppMessageQueue));
          try
          {
            try
            {
              if (LogCatLog.isSwitch())
                new StringBuilder("event=[PubAppMsgNotifyHandler#dispatchPubAppMsg] start wait ").append(com.alipay.mobile.pubsvc.app.msgnotify.common.a.a).append("ms").toString();
              wait(com.alipay.mobile.pubsvc.app.msgnotify.common.a.a);
              LogCatLog.isSwitch();
              i--;
            }
            finally
            {
            }
          }
          catch (Exception localException2)
          {
            while (true)
              LogCatLog.isSwitch();
          }
        }
    }
    catch (Exception localException1)
    {
      LogCatLog.isSwitch();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.pubsvc.app.msgnotify.a
 * JD-Core Version:    0.6.2
 */