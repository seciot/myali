package com.aps;

import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;

final class al
  implements LocationListener
{
  al(s params)
  {
  }

  private static boolean a(Location paramLocation)
  {
    return (paramLocation != null) && ("gps".equalsIgnoreCase(paramLocation.getProvider())) && (paramLocation.getLatitude() > -90.0D) && (paramLocation.getLatitude() < 90.0D) && (paramLocation.getLongitude() > -180.0D) && (paramLocation.getLongitude() < 180.0D);
  }

  public final void onLocationChanged(Location paramLocation)
  {
    s.d(this.a).a();
    a(paramLocation);
    if (((this.a.getFullBundleName()) || (s.d(this.a).a())) && (a(paramLocation)))
    {
      paramLocation.setTime(System.currentTimeMillis());
      s.a(this.a, System.currentTimeMillis());
      s.a(this.a, paramLocation);
      if (s.removeBundle(this.a) != true)
        s.b(this.a, paramLocation);
    }
    else
    {
      return;
    }
    s.a(this.a, "new location in indoor collect");
  }

  public final void onProviderDisabled(String paramString)
  {
  }

  public final void onProviderEnabled(String paramString)
  {
  }

  public final void onStatusChanged(String paramString, int paramInt, Bundle paramBundle)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.aps.al
 * JD-Core Version:    0.6.2
 */