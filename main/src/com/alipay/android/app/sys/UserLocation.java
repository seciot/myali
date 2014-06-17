package com.alipay.android.app.sys;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;

public class UserLocation
{
  private static double a = -1.0D;
  private static double b = -1.0D;

  public static String a()
  {
    return b + ";" + a;
  }

  public static void a(Context paramContext)
  {
    try
    {
      LocationManager localLocationManager = (LocationManager)paramContext.getSystemService("location");
      if (localLocationManager.isProviderEnabled("gps"))
      {
        Location localLocation = localLocationManager.getLastKnownLocation("gps");
        if (localLocation != null)
        {
          a = localLocation.getLatitude();
          b = localLocation.getLongitude();
        }
      }
      return;
    }
    catch (Exception localException)
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.sys.UserLocation
 * JD-Core Version:    0.6.2
 */