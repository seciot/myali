package com.amap.api.location;

import android.content.Context;
import android.location.LocationListener;
import android.location.LocationManager;
import com.amap.api.location.core.b;

public class c
{
  private static c b = null;
  private LocationManager a = null;
  private AppBundle.a c;
  private b d;
  private String e;
  private LocationListener f = new d(this);

  private c(Context paramContext, LocationManager paramLocationManager, AppBundle.a parama)
  {
    this.a = paramLocationManager;
    this.c = parama;
    this.d = b.a(paramContext);
    this.e = this.d.c(paramContext);
  }

  static c a(Context paramContext, LocationManager paramLocationManager, AppBundle.a parama)
  {
    if (b == null)
      b = new c(paramContext, paramLocationManager, parama);
    return b;
  }

  void a()
  {
    this.a.removeUpdates(this.f);
  }

  void a(long paramLong, float paramFloat, LocationListener paramLocationListener, String paramString)
  {
    try
    {
      if (this.a.isProviderEnabled("gps"))
        this.a.requestLocationUpdates("gps", paramLong, paramFloat, this.f);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.location.c
 * JD-Core Version:    0.6.2
 */