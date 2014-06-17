package com.alipay.mobile.framework.service.ext.openplatform.apps;

import com.alipay.mobile.framework.service.ext.openplatform.domain.AppEntity;
import com.alipay.mobileapp.core.model.app.MobileAppInfoVO;

public class AppConvertor
{
  public static final AppEntity a(MobileAppInfoVO paramMobileAppInfoVO)
  {
    if (paramMobileAppInfoVO == null)
      return null;
    AppEntity localAppEntity = new AppEntity();
    localAppEntity.setAppId(paramMobileAppInfoVO.appId);
    localAppEntity.setName(paramMobileAppInfoVO.name);
    localAppEntity.setVersion(paramMobileAppInfoVO.version);
    localAppEntity.setSlogan(paramMobileAppInfoVO.slogan);
    localAppEntity.setDesc(paramMobileAppInfoVO.desc);
    localAppEntity.setSize(paramMobileAppInfoVO.size);
    localAppEntity.setInstallerType(paramMobileAppInfoVO.installerType);
    localAppEntity.setDisplay(paramMobileAppInfoVO.display);
    localAppEntity.setCanDelete(paramMobileAppInfoVO.canDelete);
    localAppEntity.setAlipayApp(paramMobileAppInfoVO.alipayApp);
    localAppEntity.setPackageName(paramMobileAppInfoVO.packageName);
    localAppEntity.setSchemeUri(paramMobileAppInfoVO.schemeUri);
    localAppEntity.setIconUrl(paramMobileAppInfoVO.iconUrl);
    localAppEntity.setDownloadUrl(paramMobileAppInfoVO.downloadUrl);
    localAppEntity.setTipsType(paramMobileAppInfoVO.tipsType);
    localAppEntity.setRecommend(paramMobileAppInfoVO.recommend);
    localAppEntity.setLabelContent(paramMobileAppInfoVO.labelContent);
    localAppEntity.setMinSupportAppVersionCode(paramMobileAppInfoVO.minSupportAppVersionCode);
    localAppEntity.setMinSupportClientVersion(paramMobileAppInfoVO.minSupportClientVersion);
    localAppEntity.setMinSupportOsVersion(paramMobileAppInfoVO.minSupportOsVersion);
    localAppEntity.setMinSupportSdkVersion(paramMobileAppInfoVO.minSupportSdkVersion);
    localAppEntity.setStatus(paramMobileAppInfoVO.status);
    localAppEntity.setAutoStatus(paramMobileAppInfoVO.autoStatus);
    localAppEntity.setNeedAuthorize(paramMobileAppInfoVO.needAuthorize);
    localAppEntity.setAutoAuthorize(paramMobileAppInfoVO.autoAuthorize);
    localAppEntity.setRank(paramMobileAppInfoVO.rank);
    localAppEntity.setMd5(paramMobileAppInfoVO.md5);
    localAppEntity.setExtra(paramMobileAppInfoVO.extra);
    localAppEntity.setWidgetId(paramMobileAppInfoVO.widgetId);
    return localAppEntity;
  }

  public static final MobileAppInfoVO a(AppEntity paramAppEntity)
  {
    if (paramAppEntity == null)
      return null;
    MobileAppInfoVO localMobileAppInfoVO = new MobileAppInfoVO();
    localMobileAppInfoVO.appId = paramAppEntity.getAppId();
    localMobileAppInfoVO.name = paramAppEntity.getName();
    localMobileAppInfoVO.version = paramAppEntity.getVersion();
    localMobileAppInfoVO.slogan = paramAppEntity.getSlogan();
    localMobileAppInfoVO.desc = paramAppEntity.getDesc();
    localMobileAppInfoVO.size = paramAppEntity.getSize();
    localMobileAppInfoVO.installerType = paramAppEntity.getInstallerType();
    localMobileAppInfoVO.display = paramAppEntity.isDisplay();
    localMobileAppInfoVO.canDelete = paramAppEntity.isCanDelete();
    localMobileAppInfoVO.alipayApp = paramAppEntity.isAlipayApp();
    localMobileAppInfoVO.packageName = paramAppEntity.getPackageName();
    localMobileAppInfoVO.schemeUri = paramAppEntity.getSchemeUri();
    localMobileAppInfoVO.iconUrl = paramAppEntity.getIconUrl();
    localMobileAppInfoVO.downloadUrl = paramAppEntity.getDownloadUrl();
    localMobileAppInfoVO.tipsType = paramAppEntity.getTipsType();
    localMobileAppInfoVO.recommend = paramAppEntity.isRecommend();
    localMobileAppInfoVO.labelContent = paramAppEntity.getLabelContent();
    localMobileAppInfoVO.minSupportAppVersionCode = paramAppEntity.getMinSupportAppVersionCode();
    localMobileAppInfoVO.minSupportClientVersion = paramAppEntity.getMinSupportClientVersion();
    localMobileAppInfoVO.minSupportOsVersion = paramAppEntity.getMinSupportOsVersion();
    localMobileAppInfoVO.minSupportSdkVersion = paramAppEntity.getMinSupportSdkVersion();
    localMobileAppInfoVO.status = paramAppEntity.getStatus();
    localMobileAppInfoVO.autoStatus = paramAppEntity.getAutoStatus();
    localMobileAppInfoVO.needAuthorize = paramAppEntity.isNeedAuthorize();
    localMobileAppInfoVO.autoAuthorize = paramAppEntity.isAutoAuthorize();
    localMobileAppInfoVO.rank = paramAppEntity.getRank();
    localMobileAppInfoVO.md5 = paramAppEntity.getMd5();
    localMobileAppInfoVO.extra = paramAppEntity.getExtra();
    localMobileAppInfoVO.widgetId = paramAppEntity.getWidgetId();
    return localMobileAppInfoVO;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.openplatform.apps.AppConvertor
 * JD-Core Version:    0.6.2
 */