package com.aps;

import android.telephony.CellLocation;

final class ae extends Thread
{
  public ae(ac paramac, String paramString)
  {
    super(paramString);
  }

  public final void run()
  {
    while (true)
      if (ac.l(this.a))
        try
        {
          Thread.sleep(30000L);
          label16: CellLocation.requestLocationUpdate();
        }
        catch (Exception localException)
        {
          break label16;
        }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.aps.ae
 * JD-Core Version:    0.6.2
 */