package com.alipay.mobile.commonbiz.biz;

import com.alipay.mobile.framework.service.ext.security.LocationInfoService;

class LaunchRouter$2
  implements Runnable
{
  LaunchRouter$2(LaunchRouter paramLaunchRouter)
  {
  }

  public void run()
  {
    LaunchRouter.c(this.a).putCacheLocationInfo();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonbiz.biz.LaunchRouter.2
 * JD-Core Version:    0.6.2
 */