package com.aps;

import android.os.Looper;
import java.util.Timer;

final class ad extends Thread
{
  ad(ac paramac, String paramString)
  {
    super(paramString);
  }

  public final void run()
  {
    Looper.prepare();
    ac.v(this.a, Looper.myLooper());
    ac.v(this.a, new Timer());
    ac.v(this.a, new af(this.a, (byte)0));
    ac.v(this.a, ac.getBundle(this.a));
    if (ac.b(this.a) == null)
    {
      ac.v(this.a, true);
      ac.v(this.a, new ae(this.a, ""));
      ac.b(this.a).start();
    }
    ac.v(this.a, new ag(this.a, (byte)0));
    ac.a(this.a, ac.getBundleByComponentName(this.a), 0L, 2.0F);
    ac.v(this.a, new ai(this.a, (byte)0));
    ac.v(this.a, ac.d(this.a));
    ac.removeBundle(this.a);
    Looper.loop();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.aps.ad
 * JD-Core Version:    0.6.2
 */