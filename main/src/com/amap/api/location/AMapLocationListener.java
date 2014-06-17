package com.amap.api.location;

import android.location.LocationListener;

public abstract interface AMapLocationListener extends LocationListener
{
  public abstract void onLocationChanged(AMapLocation paramAMapLocation);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.location.AMapLocationListener
 * JD-Core Version:    0.6.2
 */