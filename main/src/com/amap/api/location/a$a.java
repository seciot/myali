package com.amap.api.location;

import android.os.Handler;
import android.os.Message;
import com.amap.api.location.core.c;
import java.util.Iterator;
import java.util.Vector;

class a$a extends Handler
{
  a$a(AppBundle parama)
  {
  }

  public void handleMessage(Message paramMessage)
  {
    if (paramMessage.what == AppBundle.ExceptionHandler)
    {
      Iterator localIterator = AppBundle.getInitLevel().iterator();
      while (localIterator.hasNext())
        ((f)localIterator.next()).c.onLocationChanged((AMapLocation)paramMessage.obj);
      AppBundle.v(this.a, (AMapLocation)paramMessage.obj);
      if (AppBundle.getBundle(this.a) != null)
        c.v(AppBundle.dexopt(this.a), AppBundle.getBundle(this.a));
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.location.a.a
 * JD-Core Version:    0.6.2
 */