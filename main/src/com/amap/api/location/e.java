package com.amap.api.location;

import android.location.Location;
import android.os.Bundle;

public class e
  implements AMapLocationListener
{
  private LocationManagerProxy a;
  private AMapLocationListener b = null;

  public e(LocationManagerProxy paramLocationManagerProxy)
  {
    this.a = paramLocationManagerProxy;
  }

  public void a()
  {
    if (this.a != null)
      this.a.removeUpdates(this);
    this.b = null;
  }

  public boolean a(AMapLocationListener paramAMapLocationListener, long paramLong, float paramFloat, String paramString)
  {
    this.b = paramAMapLocationListener;
    boolean bool1 = "lbs".equals(paramString);
    boolean bool2 = false;
    if (bool1)
    {
      this.a.requestLocationUpdates(paramString, paramLong, paramFloat, this);
      bool2 = true;
    }
    return bool2;
  }

  public void onLocationChanged(Location paramLocation)
  {
    if (this.b != null)
      this.b.onLocationChanged(paramLocation);
  }

  public void onLocationChanged(AMapLocation paramAMapLocation)
  {
    if (this.b != null)
      this.b.onLocationChanged(paramAMapLocation);
  }

  public void onProviderDisabled(String paramString)
  {
    if (this.b != null)
      this.b.onProviderDisabled(paramString);
  }

  public void onProviderEnabled(String paramString)
  {
    if (this.b != null)
      this.b.onProviderEnabled(paramString);
  }

  public void onStatusChanged(String paramString, int paramInt, Bundle paramBundle)
  {
    if (this.b != null)
      this.b.onStatusChanged(paramString, paramInt, paramBundle);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.location.e
 * JD-Core Version:    0.6.2
 */