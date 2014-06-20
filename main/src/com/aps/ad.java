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
    ac.a(this.a, Looper.myLooper());
    ac.a(this.a, new Timer());
    ac.a(this.a, new af(this.a, (byte)0));
    ac.a(this.a, ac.a(this.a));
    if (ac.b(this.a) == null)
    {
      ac.a(this.a, true);
      ac.a(this.a, new ae(this.a, ""));
      ac.b(this.a).start();
    }
    ac.a(this.a, new ag(this.a, (byte)0));
    ac.a(this.a, ac.c(this.a), 0L, 2.0F);
    ac.a(this.a, new ai(this.a, (byte)0));
    ac.a(this.a, ac.d(this.a));
    ac.removeBundle(this.a);
    Looper.loop();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.aps.ad
 * JD-Core Version:    0.6.2
 */