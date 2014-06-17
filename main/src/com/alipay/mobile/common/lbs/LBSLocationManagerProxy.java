package com.alipay.mobile.common.lbs;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.amap.api.location.AMapLocation;
import com.amap.api.location.AMapLocationListener;
import com.amap.api.location.LocationManagerProxy;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public class LBSLocationManagerProxy
  implements AMapLocationListener
{
  private static LBSLocationManagerProxy a;
  private static String b = "LBSLocationManagerProxy";
  private List c = new CopyOnWriteArrayList();
  private LBSLocation d;
  private LBSLocationListener e;
  private Handler f = new Handler(Looper.getMainLooper());
  private boolean g = false;
  private boolean h = false;

  private static LBSLocation a(AMapLocation paramAMapLocation)
  {
    if (paramAMapLocation == null)
      return null;
    LBSLocation localLBSLocation = new LBSLocation(paramAMapLocation);
    localLBSLocation.setProvince(paramAMapLocation.getProvince());
    localLBSLocation.setCity(paramAMapLocation.getCity());
    localLBSLocation.setDistrict(paramAMapLocation.getDistrict());
    localLBSLocation.setCityCode(paramAMapLocation.getCityCode());
    localLBSLocation.setAdCode(paramAMapLocation.getAdCode());
    return localLBSLocation;
  }

  public static LBSLocationManagerProxy getInstance()
  {
    if (a == null)
      a = new LBSLocationManagerProxy();
    return a;
  }

  public LBSLocation getLastKnownLocation(Context paramContext)
  {
    try
    {
      if ((!this.h) || (this.d == null))
      {
        if (this.e == null)
          this.e = new LBSLocationManagerProxy.3(this, paramContext);
        if (this.h);
        requestLocationUpdates(paramContext, this.e);
      }
      LBSLocation localLBSLocation1 = this.d;
      if (localLBSLocation1 == null);
      try
      {
        this.d = a(LocationManagerProxy.getInstance(paramContext).getLastKnownLocation("lbs"));
        LBSLocation localLBSLocation2 = this.d;
        return localLBSLocation2;
      }
      catch (Exception localException)
      {
        while (true)
        {
          if (this.h);
          localException.printStackTrace();
        }
      }
    }
    finally
    {
    }
  }

  public void onLocationChanged(Location paramLocation)
  {
    if (this.h);
  }

  public void onLocationChanged(AMapLocation paramAMapLocation)
  {
    if ((!this.h) || (paramAMapLocation != null))
    {
      this.d = a(paramAMapLocation);
      if (this.h)
        new StringBuilder("Listener size").append(this.c.size()).toString();
      for (int i = -1 + this.c.size(); i >= 0; i--)
        ((LBSLocationListener)this.c.get(i)).onLocationUpdate(this.d);
    }
  }

  public void onProviderDisabled(String paramString)
  {
    if (this.h);
  }

  public void onProviderEnabled(String paramString)
  {
    if (this.h);
  }

  public void onStatusChanged(String paramString, int paramInt, Bundle paramBundle)
  {
    if (this.h);
  }

  public void removeUpdates(Context paramContext, LBSLocationListener paramLBSLocationListener)
  {
    if ((!this.h) || (paramLBSLocationListener == null));
    do
    {
      return;
      this.c.remove(paramLBSLocationListener);
    }
    while (!this.c.isEmpty());
    this.f.post(new LBSLocationManagerProxy.2(this, paramContext));
  }

  public void requestLocationUpdates(Context paramContext, LBSLocationListener paramLBSLocationListener)
  {
    requestLocationUpdates(paramContext, false, paramLBSLocationListener);
  }

  public void requestLocationUpdates(Context paramContext, boolean paramBoolean, LBSLocationListener paramLBSLocationListener)
  {
    if ((!this.h) || ((paramLBSLocationListener == null) || (this.c.contains(paramLBSLocationListener))))
      return;
    this.c.add(paramLBSLocationListener);
    this.f.post(new LBSLocationManagerProxy.1(this, paramContext, paramBoolean));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.lbs.LBSLocationManagerProxy
 * JD-Core Version:    0.6.2
 */