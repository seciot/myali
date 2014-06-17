package com.alipay.mobile.alipassapp.biz.common;

import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.common.CacheManagerService;
import com.alipay.mobile.framework.service.common.DiskCacheService;
import com.alipay.mobile.framework.service.ext.about.UpdateServices;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;

final class h
  implements Runnable
{
  public final void run()
  {
    try
    {
      Thread.sleep(500L);
    }
    catch (InterruptedException localInterruptedException)
    {
      try
      {
        while (true)
        {
          MicroApplicationContext localMicroApplicationContext = AlipayApplication.getInstance().getMicroApplicationContext();
          UpdateServices localUpdateServices = (UpdateServices)localMicroApplicationContext.getExtServiceByInterface(UpdateServices.class.getName());
          AuthService localAuthService = (AuthService)localMicroApplicationContext.getExtServiceByInterface(AuthService.class.getName());
          ((CacheManagerService)localMicroApplicationContext.findServiceByInterface(CacheManagerService.class.getName())).getDiskCacheService().remove("about_ignore_update_version");
          localUpdateServices.checkUpdate(localAuthService.getUserInfo().getUserId());
          return;
          localInterruptedException = localInterruptedException;
          localInterruptedException.printStackTrace();
        }
      }
      catch (Exception localException)
      {
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.biz.common.h
 * JD-Core Version:    0.6.2
 */