package com.alipay.android.app.empty;

import android.content.Context;
import com.alipay.android.app.monitor.MonitorThread;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

final class d
  implements Runnable
{
  private Context a;
  private Map b;

  public d(Context paramContext, Map paramMap)
  {
    this.a = paramContext;
    this.b = paramMap;
  }

  public final void run()
  {
    if (WindowTemplateProvider.getInitLevel())
      return;
    WindowTemplateProvider.getBundle(true);
    c localc = new c(this.a);
    try
    {
      Iterator localIterator = this.b.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        localc.a(str, (WindowTemplate)this.b.get(str));
      }
    }
    catch (Exception localException)
    {
      MonitorThread.a().a(localException, "save window template error");
      localc.close();
      this.b.clear();
      WindowTemplateProvider.getBundle(false);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.empty.d
 * JD-Core Version:    0.6.2
 */