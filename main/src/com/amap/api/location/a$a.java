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
    if (paramMessage.what == AppBundle.a)
    {
      Iterator localIterator = AppBundle.d().iterator();
      while (localIterator.hasNext())
        ((f)localIterator.next()).c.onLocationChanged((AMapLocation)paramMessage.obj);
      AppBundle.a(this.a, (AMapLocation)paramMessage.obj);
      if (AppBundle.a(this.a) != null)
        c.a(AppBundle.b(this.a), AppBundle.a(this.a));
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.location.a.a
 * JD-Core Version:    0.6.2
 */