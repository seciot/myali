package com.alipay.mobile.pubsvc.app.msgnotify;

import com.alibaba.fastjson.JSON;
import com.alipay.mobile.common.logging.LogCatLog;
import com.alipay.mobile.pubsvc.app.msgnotify.domain.PubAppMessage;
import com.alipay.mobile.pubsvc.app.msgnotify.mng.PubAppMessageQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor.DiscardPolicy;

final class b extends ThreadPoolExecutor.DiscardPolicy
{
  private b(a parama)
  {
  }

  public final void rejectedExecution(Runnable paramRunnable, ThreadPoolExecutor paramThreadPoolExecutor)
  {
    super.rejectedExecution(paramRunnable, paramThreadPoolExecutor);
    if (LogCatLog.isSwitch())
    {
      String str = "";
      boolean bool = paramRunnable instanceof c;
      PubAppMessage localPubAppMessage = null;
      if (bool)
      {
        c localc = (c)paramRunnable;
        str = localc.a.a;
        localPubAppMessage = (PubAppMessage)localc.b.get(-1 + localc.b.size());
      }
      new StringBuilder("event=[PubAppDispMsgPolicy#rejectedExecution] Execute PubAppDispMsgPolicy. subscriber=[").append(str).append("] current last msg=[").append(JSON.toJSONString(localPubAppMessage)).append("]").toString();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.pubsvc.app.msgnotify.b
 * JD-Core Version:    0.6.2
 */