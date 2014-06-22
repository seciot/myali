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
    s.v(this.a, Looper.myLooper());
    s.getBundleByComponentName(this.a).requestLocationUpdates("passive", 1000L, 50.0F, s.dexopt(this.a));
    Looper.loop();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.aps.ak
 * JD-Core Version:    0.6.2
 */