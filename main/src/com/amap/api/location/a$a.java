package com.amap.api.location;

import android.os.Handler;
import android.os.Message;
import com.amap.api.location.core.c;
import java.util.Iterator;
import java.util.Vector;

class a$a extends Handler
{
  a$a(a parama)
  {
  }

  public void handleMessage(Message paramMessage)
  {
    if (paramMessage.what == a.a)
    {
      Iterator localIterator = a.d().iterator();
      while (localIterator.hasNext())
        ((f)localIterator.next()).c.onLocationChanged((AMapLocation)paramMessage.obj);
      a.a(this.a, (AMapLocation)paramMessage.obj);
      if (a.a(this.a) != null)
        c.a(a.b(this.a), a.a(this.a));
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.location.a.a
 * JD-Core Version:    0.6.2
 */