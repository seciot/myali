package com.alipay.mobile.framework.service.ext.openplatform;

import java.util.HashMap;

public enum AppInstallerTypeEnum
{
  static
  {
    expApp = new AppInstallerTypeEnum("expApp", 2);
    androidApp = new AppInstallerTypeEnum("androidApp", 3);
    independantApp = new AppInstallerTypeEnum("independantApp", 4);
    innerApp = new AppInstallerTypeEnum("innerApp", 5);
    H5App = new AppInstallerTypeEnum("H5App", 6);
    AppInstallerTypeEnum[] arrayOfAppInstallerTypeEnum = new AppInstallerTypeEnum[7];
    arrayOfAppInstallerTypeEnum[0] = nativeApp;
    arrayOfAppInstallerTypeEnum[1] = webApp;
    arrayOfAppInstallerTypeEnum[2] = expApp;
    arrayOfAppInstallerTypeEnum[3] = androidApp;
    arrayOfAppInstallerTypeEnum[4] = independantApp;
    arrayOfAppInstallerTypeEnum[5] = innerApp;
    arrayOfAppInstallerTypeEnum[6] = H5App;
  }

  public static AppInstallerTypeEnum getEnum(String paramString)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("webApp", webApp);
    localHashMap.put("nativeApp", nativeApp);
    localHashMap.put("expApp", expApp);
    localHashMap.put("independantApp", independantApp);
    localHashMap.put("androidApp", androidApp);
    localHashMap.put("innerApp", innerApp);
    localHashMap.put("H5App", H5App);
    return (AppInstallerTypeEnum)localHashMap.get(paramString);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.openplatform.AppInstallerTypeEnum
 * JD-Core Version:    0.6.2
 */