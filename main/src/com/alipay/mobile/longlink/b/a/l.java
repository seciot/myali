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
    a.a(3, k.h(), "reConnTask() curMsgId=" + k.a(this.a));
    Iterator localIterator = this.a.b().iterator();
    while (localIterator.hasNext())
    {
      c localc = (c)localIterator.next();
      try
      {
        n localn = new n("The reps of heart timeout.", new Exception("timeout : heart"));
        localn.a("51");
        localc.a(localn);
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
    a.a(2, k.h(), "reConnTask() connectionClosedOnError has been notify!");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.longlink.b.a.l
 * JD-Core Version:    0.6.2
 */