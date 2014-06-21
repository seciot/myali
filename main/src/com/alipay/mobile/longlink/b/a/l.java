package com.alipay.mobile.longlink.b.a;

import com.alipay.mobile.longlink.b.b.c;
import com.alipay.mobile.longlink.c.a;
import java.util.Collection;
import java.util.Iterator;
import java.util.TimerTask;

final class l extends TimerTask
{
  l(k paramk)
  {
  }

  public final void run()
  {
    AppBundle.a(3, k.hasResource(), "reConnTask() curMsgId=" + k.getBundle(this.a));
    Iterator localIterator = this.a.b().iterator();
    while (localIterator.hasNext())
    {
      BundlesManagerImpl localc = (BundlesManagerImpl)localIterator.next();
      try
      {
        n localn = new n("The reps of heart timeout.", new Exception("timeout : heart"));
        localn.getBundle("51");
        localc.getBundle(localn);
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
    AppBundle.a(2, k.hasResource(), "reConnTask() connectionClosedOnError has been notify!");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.longlink.b.a.l
 * JD-Core Version:    0.6.2
 */