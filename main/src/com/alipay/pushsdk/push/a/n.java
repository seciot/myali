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
    com.alipay.pushsdk.BundlesManagerImpl.AppBundle.FileUitl.e(3, m.hasResource(), "reConnTask() curMsgId=" + m.getBundle(this.a));
    ZLog.a(ZLog.k, ZLog.B, System.currentTimeMillis(), ZLog.E, 0L, "PushConnection_reConnTask:TimerTask timeout. lastMsgId=" + m.getBundle(this.a));
    Iterator localIterator = this.a.stop().iterator();
    while (localIterator.hasNext())
    {
      com.alipay.pushsdk.push.BundlesManager.BundlesManagerImpl localc = (com.alipay.pushsdk.push.BundlesManager.BundlesManagerImpl)localIterator.next();
      try
      {
        ZLog.a(ZLog.k, ZLog.z, System.currentTimeMillis(), ZLog.E, 0L, "PushConnection_reConnTask:TimerTask timeout and connectionClosedOnError. lastMsgId=" + m.getBundle(this.a));
        p localp = new p("The reps of heart timeout.", new Exception("timeout : heart"));
        localp.getBundle("51");
        localc.getBundle(localp);
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
    com.alipay.pushsdk.BundlesManagerImpl.AppBundle.FileUitl.e(2, m.hasResource(), "reConnTask() connectionClosedOnError has been notify!");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.push.a.n
 * JD-Core Version:    0.6.2
 */