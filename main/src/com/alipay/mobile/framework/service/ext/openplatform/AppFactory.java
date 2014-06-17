package com.alipay.mobile.framework.service.ext.openplatform;

import com.alipay.mobile.framework.service.ext.openplatform.app.App;
import com.alipay.mobile.framework.service.ext.openplatform.apps.AndroidApp;
import com.alipay.mobile.framework.service.ext.openplatform.apps.ApkApp;
import com.alipay.mobile.framework.service.ext.openplatform.apps.AppConvertor;
import com.alipay.mobile.framework.service.ext.openplatform.apps.ExpApp;
import com.alipay.mobile.framework.service.ext.openplatform.apps.H5App;
import com.alipay.mobile.framework.service.ext.openplatform.apps.InnerApp;
import com.alipay.mobile.framework.service.ext.openplatform.apps.NativeApp;
import com.alipay.mobile.framework.service.ext.openplatform.apps.WebApp;
import com.alipay.mobile.framework.service.ext.openplatform.domain.AppEntity;
import com.alipay.mobileapp.core.model.app.MobileAppInfoVO;

public class AppFactory
{
  private static boolean checkApp(AppEntity paramAppEntity)
  {
    return (paramAppEntity != null) && (paramAppEntity.getInstallerType() != null) && (!"".equalsIgnoreCase(paramAppEntity.getInstallerType().trim())) && (paramAppEntity.getAppId() != null);
  }

  private static boolean checkApp(MobileAppInfoVO paramMobileAppInfoVO)
  {
    return (paramMobileAppInfoVO != null) && (paramMobileAppInfoVO.installerType != null) && (!"".equalsIgnoreCase(paramMobileAppInfoVO.installerType.trim())) && (paramMobileAppInfoVO.appId != null);
  }

  public static App createApp(AppEntity paramAppEntity)
  {
    boolean bool = checkApp(paramAppEntity);
    Object localObject = null;
    if (!bool);
    while (true)
    {
      return localObject;
      AppInstallerTypeEnum localAppInstallerTypeEnum = AppInstallerTypeEnum.getEnum(paramAppEntity.getInstallerType());
      localObject = null;
      if (localAppInstallerTypeEnum != null)
      {
        int i = a.a[localAppInstallerTypeEnum.ordinal()];
        localObject = null;
        switch (i)
        {
        default:
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        }
        while (localObject != null)
        {
          ((App)localObject).setAppInfo(paramAppEntity);
          return localObject;
          localObject = new NativeApp();
          continue;
          localObject = new WebApp();
          continue;
          localObject = new ApkApp();
          continue;
          localObject = new ExpApp();
          continue;
          localObject = new AndroidApp();
          continue;
          localObject = new InnerApp();
          continue;
          localObject = new H5App();
        }
      }
    }
  }

  public static App createApp(MobileAppInfoVO paramMobileAppInfoVO)
  {
    boolean bool = checkApp(paramMobileAppInfoVO);
    Object localObject = null;
    if (!bool);
    while (true)
    {
      return localObject;
      AppInstallerTypeEnum localAppInstallerTypeEnum = AppInstallerTypeEnum.getEnum(paramMobileAppInfoVO.installerType);
      localObject = null;
      if (localAppInstallerTypeEnum != null)
      {
        int i = a.a[localAppInstallerTypeEnum.ordinal()];
        localObject = null;
        switch (i)
        {
        default:
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        }
        while (localObject != null)
        {
          ((App)localObject).setAppInfo(AppConvertor.a(paramMobileAppInfoVO));
          return localObject;
          localObject = new NativeApp();
          continue;
          localObject = new WebApp();
          continue;
          localObject = new ApkApp();
          continue;
          localObject = new ExpApp();
          continue;
          localObject = new AndroidApp();
          continue;
          localObject = new InnerApp();
          continue;
          localObject = new H5App();
        }
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.openplatform.AppFactory
 * JD-Core Version:    0.6.2
 */