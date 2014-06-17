package com.alipay.mobile.security.securitycommon.service;

import android.content.Context;
import com.alipay.mobile.common.lbs.LBSLocation;
import com.alipay.mobile.common.lbs.LBSLocationListener;
import com.alipay.mobile.common.lbs.LBSLocationManagerProxy;
import com.alipay.mobile.framework.service.ext.security.bean.LocationInfo;

class LocationInfoServiceImpl$1
  implements LBSLocationListener
{
  LocationInfoServiceImpl$1(LocationInfoServiceImpl paramLocationInfoServiceImpl, LocationInfo paramLocationInfo, Context paramContext)
  {
  }

  public void onLocationUpdate(LBSLocation paramLBSLocation)
  {
    LocationInfoServiceImpl.access$002(this.c, true);
    LocationInfoServiceImpl.access$100(this.c, this.a, this.b, paramLBSLocation);
    try
    {
      "LocationInfoServiceImpl".notifyAll();
      new StringBuilder("{[info=getLocationInfo],[msg=cellIdInfo:").append(this.a.getCellId()).append(" &&latitude:").append(this.a.getLatitude()).append(" &&longitude:").append(this.a.getLongitude()).append(" &&mac:").append(this.a.getMac()).append("]}").toString();
      LBSLocationManagerProxy.getInstance().removeUpdates(this.b, this);
      return;
    }
    finally
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.securitycommon.service.LocationInfoServiceImpl.1
 * JD-Core Version:    0.6.2
 */