package com.alipay.mobile.core.init.impl;

import com.alipay.mobile.common.info.AppInfo;
import com.alipay.mobile.common.info.DeviceInfo;
import com.alipay.mobile.common.logging.PerformanceLog;
import com.alipay.mobile.core.init.BootLoader;
import com.alipay.mobile.core.service.impl.ExternalServiceManagerImpl;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ServicesLoader;
import com.alipay.mobile.framework.service.ext.ExternalServiceManager;

public class CommonServiceLoadHelper
{
  private BootLoader a;

  public CommonServiceLoadHelper(BootLoader paramBootLoader)
  {
    this.a = paramBootLoader;
  }

  public void loadServices()
  {
    MicroApplicationContext localMicroApplicationContext = this.a.getContext();
    AlipayApplication localAlipayApplication = localMicroApplicationContext.getApplicationContext();
    DeviceInfo.createInstance(localAlipayApplication);
    AppInfo.createInstance(localAlipayApplication);
    PerformanceLog.createInstance();
    try
    {
      ExternalServiceManagerImpl localExternalServiceManagerImpl = new ExternalServiceManagerImpl();
      localExternalServiceManagerImpl.attachContext(localMicroApplicationContext);
      localMicroApplicationContext.registerService(ExternalServiceManager.class.getName(), localExternalServiceManagerImpl);
      ((ServicesLoader)localAlipayApplication.getClassLoader().loadClass("com.alipay.mobile.framework.service.ClientServicesLoader").newInstance()).load();
      return;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      localClassNotFoundException.printStackTrace();
      return;
    }
    catch (InstantiationException localInstantiationException)
    {
      localInstantiationException.printStackTrace();
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      localIllegalAccessException.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.core.init.impl.CommonServiceLoadHelper
 * JD-Core Version:    0.6.2
 */