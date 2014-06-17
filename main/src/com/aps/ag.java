package com.aps;

import android.location.GpsStatus.NmeaListener;

final class ag
  implements GpsStatus.NmeaListener
{
  private ag(ac paramac)
  {
  }

  public final void onNmeaReceived(long paramLong, String paramString)
  {
    if (paramString.startsWith("$GPGSA"))
      ac.a(this.a, paramString);
    if (paramLong <= 0L);
    for (long l = System.currentTimeMillis() / 1000L; ; l = paramLong)
    {
      if (l > 2147483647L)
        l /= 1000L;
      ac.c(this.a, l);
      ac.b(this.a, paramString);
      if (ac.A() != null)
        ac.A();
      return;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.aps.ag
 * JD-Core Version:    0.6.2
 */