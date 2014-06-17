package com.amap.api.location;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.location.Criteria;
import android.location.GpsStatus;
import android.location.GpsStatus.Listener;
import android.location.Location;
import android.location.LocationManager;
import com.amap.api.location.core.b;
import com.amap.api.location.core.c;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.List;

public class LocationManagerProxy
{
  public static final String GPS_PROVIDER = "gps";
  public static final String KEY_LOCATION_CHANGED = "location";
  public static final String KEY_PROVIDER_ENABLED = "providerEnabled";
  public static final String KEY_PROXIMITY_ENTERING = "entering";
  public static final String KEY_STATUS_CHANGED = "status";
  public static final String NETWORK_PROVIDER = "network";
  private static LocationManagerProxy b = null;
  private LocationManager a = null;
  private a c = null;
  private Context d;
  private e e;
  private LocationManagerProxy.a f;
  private ArrayList<PendingIntent> g = new ArrayList();
  private Hashtable<String, LocationProviderProxy> h = new Hashtable();
  private String i;
  private b j;
  private String k;
  private List<e> l = new ArrayList();

  private LocationManagerProxy(Activity paramActivity)
  {
    a(paramActivity.getApplicationContext());
  }

  private LocationManagerProxy(Context paramContext)
  {
    a(paramContext);
  }

  private void a(Context paramContext)
  {
    this.d = paramContext;
    this.j = b.a(paramContext);
    this.a = ((LocationManager)paramContext.getSystemService("location"));
    this.c = a.a(paramContext.getApplicationContext(), this.a);
    this.k = this.j.c(paramContext);
  }

  public static LocationManagerProxy getInstance(Activity paramActivity)
  {
    try
    {
      if (b == null)
        b = new LocationManagerProxy(paramActivity);
      LocationManagerProxy localLocationManagerProxy = b;
      return localLocationManagerProxy;
    }
    finally
    {
    }
  }

  public static LocationManagerProxy getInstance(Context paramContext)
  {
    try
    {
      if (b == null)
        b = new LocationManagerProxy(paramContext);
      LocationManagerProxy localLocationManagerProxy = b;
      return localLocationManagerProxy;
    }
    finally
    {
    }
  }

  public boolean addGpsStatusListener(GpsStatus.Listener paramListener)
  {
    if (this.a != null)
      return this.a.addGpsStatusListener(paramListener);
    return false;
  }

  public void addProximityAlert(double paramDouble1, double paramDouble2, float paramFloat, long paramLong, PendingIntent paramPendingIntent)
  {
    if (a.e)
      this.a.addProximityAlert(paramDouble1, paramDouble2, paramFloat, paramLong, paramPendingIntent);
    e locale = new e(this);
    this.l.add(locale);
    this.c.a(paramDouble1, paramDouble2, paramFloat, paramLong, paramPendingIntent);
    requestLocationUpdates("lbs", 5000L, paramFloat, locale);
  }

  public void addTestProvider(String paramString, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5, boolean paramBoolean6, boolean paramBoolean7, int paramInt1, int paramInt2)
  {
    if (this.a != null)
      this.a.addTestProvider(paramString, paramBoolean1, paramBoolean2, paramBoolean3, paramBoolean4, paramBoolean5, paramBoolean6, paramBoolean7, paramInt1, paramInt2);
  }

  public void clearTestProviderEnabled(String paramString)
  {
    if (this.a != null)
      this.a.clearTestProviderEnabled(paramString);
  }

  public void clearTestProviderLocation(String paramString)
  {
    if (this.a != null)
      this.a.clearTestProviderLocation(paramString);
  }

  public void clearTestProviderStatus(String paramString)
  {
    if (this.a != null)
      this.a.clearTestProviderStatus(paramString);
  }

  public void destory()
  {
    if (this.c != null)
      this.c.b();
    if (this.h != null)
      this.h.clear();
    if (this.g != null)
      this.g.clear();
    this.h = null;
    this.g = null;
    this.c = null;
    b = null;
    this.l = null;
  }

  public List<String> getAllProviders()
  {
    List localList = this.a.getAllProviders();
    if (localList != null)
    {
      if (!localList.contains("lbs"))
        localList.add("lbs");
      return localList;
    }
    ArrayList localArrayList = new ArrayList();
    localArrayList.add("lbs");
    localArrayList.addAll(this.a.getAllProviders());
    return localArrayList;
  }

  public String getBestProvider(Criteria paramCriteria, boolean paramBoolean)
  {
    String str = "lbs";
    if (paramCriteria == null);
    do
    {
      return str;
      if (!getProvider("lbs").meetsCriteria(paramCriteria))
        str = this.a.getBestProvider(paramCriteria, paramBoolean);
    }
    while ((!paramBoolean) || (c.a(this.d)));
    return this.a.getBestProvider(paramCriteria, paramBoolean);
  }

  public GpsStatus getGpsStatus(GpsStatus paramGpsStatus)
  {
    if (this.a != null)
      return this.a.getGpsStatus(paramGpsStatus);
    return null;
  }

  public AMapLocation getLastKnownLocation(String paramString)
  {
    if (("lbs".equals(paramString)) && (this.j.a(this.k)))
    {
      this.i = paramString;
      return this.c.a();
    }
    Location localLocation = this.a.getLastKnownLocation(paramString);
    if ((this.a != null) && (localLocation != null))
      return new AMapLocation(localLocation);
    return null;
  }

  public LocationProviderProxy getProvider(String paramString)
  {
    if (paramString == null)
      throw new IllegalArgumentException("name不能为空！");
    if (this.h.containsKey(paramString))
      return (LocationProviderProxy)this.h.get(paramString);
    LocationProviderProxy localLocationProviderProxy = LocationProviderProxy.a(this.a, paramString);
    this.h.put(paramString, localLocationProviderProxy);
    return localLocationProviderProxy;
  }

  public List<String> getProviders(Criteria paramCriteria, boolean paramBoolean)
  {
    Object localObject = this.a.getProviders(paramCriteria, paramBoolean);
    if ((localObject == null) || (((List)localObject).size() == 0))
      localObject = new ArrayList();
    if ("lbs".equals(getBestProvider(paramCriteria, paramBoolean)))
      ((List)localObject).add("lbs");
    return localObject;
  }

  public List<String> getProviders(boolean paramBoolean)
  {
    Object localObject = this.a.getProviders(paramBoolean);
    if (isProviderEnabled("lbs"))
    {
      if ((localObject == null) || (((List)localObject).size() == 0))
        localObject = new ArrayList();
      ((List)localObject).add("lbs");
    }
    return localObject;
  }

  public boolean isProviderEnabled(String paramString)
  {
    if ("lbs".equals(paramString))
      return c.a(this.d);
    return this.a.isProviderEnabled(paramString);
  }

  public void removeGpsStatusListener(GpsStatus.Listener paramListener)
  {
    if (this.a != null)
      this.a.removeGpsStatusListener(paramListener);
  }

  public void removeProximityAlert(PendingIntent paramPendingIntent)
  {
    while (true)
    {
      try
      {
        if ((a.e) && (this.a != null))
          this.a.removeProximityAlert(paramPendingIntent);
        this.c.a(paramPendingIntent);
        if (this.c.c() <= 0)
          break label140;
        if ((this.l != null) && (this.l.size() > 0))
          removeUpdates((AMapLocationListener)this.l.get(0));
        this.l.remove(0);
        return;
        if (m < this.l.size())
        {
          removeUpdates((AMapLocationListener)this.l.get(m));
          this.l.remove(m);
          m++;
          continue;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
      return;
      label140: int m = 0;
    }
  }

  public void removeUpdates(PendingIntent paramPendingIntent)
  {
    if (this.e != null)
    {
      this.g.remove(paramPendingIntent);
      this.e.a();
    }
    this.e = null;
    this.a.removeUpdates(paramPendingIntent);
  }

  public void removeUpdates(AMapLocationListener paramAMapLocationListener)
  {
    if (paramAMapLocationListener != null)
    {
      if (this.c != null)
        this.c.a(paramAMapLocationListener);
      this.a.removeUpdates(paramAMapLocationListener);
    }
  }

  public void requestLocationUpdates(String paramString, long paramLong, float paramFloat, PendingIntent paramPendingIntent)
  {
    if (("lbs".equals(paramString)) && (this.j.a(this.k)))
    {
      if (this.e == null)
        this.e = new e(this);
      if (this.f == null)
        this.f = new LocationManagerProxy.a(this);
      this.e.a(this.f, paramLong, paramFloat, paramString);
      this.g.add(paramPendingIntent);
      return;
    }
    this.a.requestLocationUpdates(paramString, paramLong, paramFloat, paramPendingIntent);
  }

  public void requestLocationUpdates(String paramString, long paramLong, float paramFloat, AMapLocationListener paramAMapLocationListener)
  {
    if (this.c == null)
      this.c = a.a(this.d.getApplicationContext(), this.a);
    if ((!this.j.a(this.k)) && ("lbs".equals(paramString)));
    for (String str = "network"; ; str = paramString)
    {
      this.i = str;
      if (("lbs".equals(str)) && (this.j.a(this.k)))
      {
        this.c.a(paramLong, paramFloat, paramAMapLocationListener, "lbs");
        return;
      }
      if ("gps".equals(str))
      {
        this.c.a(paramLong, paramFloat, paramAMapLocationListener, "gps");
        return;
      }
      this.a.requestLocationUpdates(str, paramLong, paramFloat, paramAMapLocationListener);
      return;
    }
  }

  public void setGpsEnable(boolean paramBoolean)
  {
    this.c.a(paramBoolean);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.location.LocationManagerProxy
 * JD-Core Version:    0.6.2
 */