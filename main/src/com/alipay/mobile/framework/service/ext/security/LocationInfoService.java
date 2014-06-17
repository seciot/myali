package com.alipay.mobile.framework.service.ext.security;

import android.os.Bundle;
import com.alipay.mobile.framework.service.ext.ExternalService;
import com.alipay.mobile.framework.service.ext.security.bean.LocationInfo;

public abstract class LocationInfoService extends ExternalService
{
  public abstract LocationInfo getCacheLocationInfo();

  public abstract LocationInfo getLocationInfo();

  protected void onCreate(Bundle paramBundle)
  {
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }

  public abstract void putCacheLocationInfo();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.security.LocationInfoService
 * JD-Core Version:    0.6.2
 */