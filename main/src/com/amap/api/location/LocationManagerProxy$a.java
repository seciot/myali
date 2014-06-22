package com.amap.api.location;

import android.app.PendingIntent;
import android.app.PendingIntent.CanceledException;
import android.content.Intent;
import android.location.Location;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;

class LocationManagerProxy$a
  implements AMapLocationListener
{
  LocationManagerProxy$a(LocationManagerProxy paramLocationManagerProxy)
  {
  }

  public void onLocationChanged(Location paramLocation)
  {
    if ((LocationManagerProxy.getBundle(this.a) != null) && (LocationManagerProxy.getBundle(this.a).size() > 0))
    {
      Iterator localIterator = LocationManagerProxy.getBundle(this.a).iterator();
      while (localIterator.hasNext())
      {
        PendingIntent localPendingIntent = (PendingIntent)localIterator.next();
        Intent localIntent = new Intent();
        Bundle localBundle = new Bundle();
        localBundle.putParcelable("location", paramLocation);
        localIntent.putExtras(localBundle);
        try
        {
          localPendingIntent.send(LocationManagerProxy.dexopt(this.a), 0, localIntent);
        }
        catch (PendingIntent.CanceledException localCanceledException)
        {
          localCanceledException.printStackTrace();
        }
      }
    }
  }

  public void onLocationChanged(AMapLocation paramAMapLocation)
  {
    if ((LocationManagerProxy.getBundle(this.a) != null) && (LocationManagerProxy.getBundle(this.a).size() > 0))
    {
      Iterator localIterator = LocationManagerProxy.getBundle(this.a).iterator();
      while (localIterator.hasNext())
      {
        PendingIntent localPendingIntent = (PendingIntent)localIterator.next();
        Intent localIntent = new Intent();
        Bundle localBundle = new Bundle();
        localBundle.putParcelable("location", paramAMapLocation);
        localIntent.putExtras(localBundle);
        try
        {
          localPendingIntent.send(LocationManagerProxy.dexopt(this.a), 0, localIntent);
        }
        catch (PendingIntent.CanceledException localCanceledException)
        {
          localCanceledException.printStackTrace();
        }
      }
    }
  }

  public void onProviderDisabled(String paramString)
  {
  }

  public void onProviderEnabled(String paramString)
  {
  }

  public void onStatusChanged(String paramString, int paramInt, Bundle paramBundle)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.location.LocationManagerProxy.a
 * JD-Core Version:    0.6.2
 */