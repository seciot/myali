package com.aps;

import android.location.LocationManager;
import android.os.Looper;

final class ak extends Thread
{
  ak(s params, String paramString)
  {
    super(paramString);
  }

  public final void run()
  {
    Looper.prepare();
    s.a(this.a, Looper.myLooper());
    s.c(this.a).requestLocationUpdates("passive", 1000L, 50.0F, s.b(this.a));
    Looper.loop();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.aps.ak
 * JD-Core Version:    0.6.2
 */