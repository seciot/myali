package com.alipay.pushsdk.push.a;

import com.alipay.pushsdk.c.a.d;
import java.util.Collection;
import java.util.Iterator;
import java.util.TimerTask;

final class n extends TimerTask
{
  n(m paramm)
  {
  }

  public final void run()
  {
    com.alipay.pushsdk.c.AppBundle.c.a(3, m.h(), "reConnTask() curMsgId=" + m.a(this.a));
    d.a(d.k, d.B, System.currentTimeMillis(), d.E, 0L, "PushConnection_reConnTask:TimerTask timeout. lastMsgId=" + m.a(this.a));
    Iterator localIterator = this.a.b().iterator();
    while (localIterator.hasNext())
    {
      com.alipay.pushsdk.push.BundlesManager.c localc = (com.alipay.pushsdk.push.BundlesManager.c)localIterator.next();
      try
      {
        d.a(d.k, d.z, System.currentTimeMillis(), d.E, 0L, "PushConnection_reConnTask:TimerTask timeout and connectionClosedOnError. lastMsgId=" + m.a(this.a));
        p localp = new p("The reps of heart timeout.", new Exception("timeout : heart"));
        localp.a("51");
        localc.a(localp);
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
    com.alipay.pushsdk.c.AppBundle.c.a(2, m.h(), "reConnTask() connectionClosedOnError has been notify!");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.push.a.n
 * JD-Core Version:    0.6.2
 */