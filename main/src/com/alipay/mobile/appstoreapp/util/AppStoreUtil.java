package com.alipay.mobile.appstoreapp.util;

import com.alipay.mobile.framework.service.ext.openplatform.AppInstallerTypeEnum;
import com.alipay.mobileapp.core.model.app.MobileAppInfoVO;

public class AppStoreUtil
{
  public static final String a(int paramInt)
  {
    if (paramInt >= 1024)
      return String.valueOf(paramInt / 1024) + "." + 100 * (paramInt % 1024) / 1024 + "MB";
    return paramInt + "KB";
  }

  public static final boolean a(MobileAppInfoVO paramMobileAppInfoVO)
  {
    if (paramMobileAppInfoVO == null);
    do
    {
      do
        return false;
      while ((paramMobileAppInfoVO.appId == null) || (paramMobileAppInfoVO.appId.trim().equals("")) || (paramMobileAppInfoVO.installerType == null) || (paramMobileAppInfoVO.installerType.trim().equals("")));
      if (paramMobileAppInfoVO.installerType.equals("H5Container"))
        paramMobileAppInfoVO.installerType = "H5App";
    }
    while (AppInstallerTypeEnum.getEnum(paramMobileAppInfoVO.installerType) == null);
    return true;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.appstoreapp.util.AppStoreUtil
 * JD-Core Version:    0.6.2
 */