package com.alipay.mobile.security.securitycommon.service;

import com.alipay.mobile.framework.service.ext.security.LocationInfoService;

class LocationInfoReceiver$1
  implements Runnable
{
  LocationInfoReceiver$1(LocationInfoReceiver paramLocationInfoReceiver)
  {
  }

  public void run()
  {
    LocationInfoReceiver.a(this.a).putCacheLocationInfo();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.securitycommon.service.LocationInfoReceiver.1
 * JD-Core Version:    0.6.2
 */