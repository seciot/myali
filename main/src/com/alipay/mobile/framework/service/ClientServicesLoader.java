package com.alipay.mobile.framework.service;

import com.alipay.mobile.base.config.ChannelConfig;
import com.alipay.mobile.base.config.ConfigService;
import com.alipay.mobile.base.config.impl.ChannelConfigImpl;
import com.alipay.mobile.base.config.impl.ConfigServiceImpl;
import com.alipay.mobile.common.cache.disk.lru.SecurityLruDiskCache;
import com.alipay.mobile.common.promotion.intercept.IPromotionInterceptorManager;
import com.alipay.mobile.common.promotion.intercept.PromotionInterceptorManagerImpl;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.common.CacheManagerService;
import com.alipay.mobile.framework.service.common.DiskCacheService;
import com.alipay.mobile.framework.service.common.DownloadService;
import com.alipay.mobile.framework.service.common.GenericMemCacheService;
import com.alipay.mobile.framework.service.common.HttpTransportSevice;
import com.alipay.mobile.framework.service.common.ImageLoaderService;
import com.alipay.mobile.framework.service.common.ImageMemCacheService;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.framework.service.common.SchemeService;
import com.alipay.mobile.framework.service.common.SecurityCacheService;
import com.alipay.mobile.framework.service.common.SecurityDiskCacheService;
import com.alipay.mobile.framework.service.common.ShortLinkService;
import com.alipay.mobile.framework.service.common.TaskScheduleService;
import com.alipay.mobile.framework.service.common.impl.CacheManagerServiceImpl;
import com.alipay.mobile.framework.service.common.impl.CachedHttpTransportServiceImpl;
import com.alipay.mobile.framework.service.common.impl.DownloadServiceImpl;
import com.alipay.mobile.framework.service.common.impl.HttpTransportSeviceImpl;
import com.alipay.mobile.framework.service.common.impl.ImageLoaderServiceImpl;
import com.alipay.mobile.framework.service.common.impl.ImageMemCacheServiceImpl;
import com.alipay.mobile.framework.service.common.impl.RpcServiceImpl;
import com.alipay.mobile.framework.service.common.impl.SchemeServiceImpl;
import com.alipay.mobile.framework.service.common.impl.SecurityCacheServiceImpl;
import com.alipay.mobile.framework.service.common.impl.SecurityDiskCacheServiceImpl;
import com.alipay.mobile.framework.service.common.impl.ShortLinkServiceImpl;
import com.alipay.mobile.framework.service.common.impl.TaskScheduleServiceImpl;
import com.alipay.mobile.framework.service.ext.appentry.AppEntryConfigService;
import com.alipay.mobile.framework.service.ext.appentry.AppEntryConfigServiceImpl;

public class ClientServicesLoader
  implements ServicesLoader
{
  public void load()
  {
    MicroApplicationContext localMicroApplicationContext = AlipayApplication.getInstance().getMicroApplicationContext();
    TaskScheduleServiceImpl localTaskScheduleServiceImpl = new TaskScheduleServiceImpl();
    localTaskScheduleServiceImpl.attachContext(localMicroApplicationContext);
    localMicroApplicationContext.registerService(TaskScheduleService.class.getName(), localTaskScheduleServiceImpl);
    CacheManagerServiceImpl localCacheManagerServiceImpl = new CacheManagerServiceImpl();
    localCacheManagerServiceImpl.attachContext(localMicroApplicationContext);
    localMicroApplicationContext.registerService(CacheManagerService.class.getName(), localCacheManagerServiceImpl);
    localCacheManagerServiceImpl.getDiskCacheService().attachContext(localMicroApplicationContext);
    localMicroApplicationContext.registerService(DiskCacheService.class.getName(), localCacheManagerServiceImpl.getDiskCacheService());
    localCacheManagerServiceImpl.getMemCacheService().attachContext(localMicroApplicationContext);
    localMicroApplicationContext.registerService(GenericMemCacheService.class.getName(), localCacheManagerServiceImpl.getMemCacheService());
    SecurityDiskCacheServiceImpl localSecurityDiskCacheServiceImpl = new SecurityDiskCacheServiceImpl(SecurityLruDiskCache.getInstance());
    localSecurityDiskCacheServiceImpl.attachContext(localMicroApplicationContext);
    localMicroApplicationContext.registerService(SecurityDiskCacheService.class.getName(), localSecurityDiskCacheServiceImpl);
    ImageMemCacheServiceImpl localImageMemCacheServiceImpl = new ImageMemCacheServiceImpl();
    localImageMemCacheServiceImpl.attachContext(localMicroApplicationContext);
    localMicroApplicationContext.registerService(ImageMemCacheService.class.getName(), localImageMemCacheServiceImpl);
    ImageLoaderServiceImpl localImageLoaderServiceImpl = new ImageLoaderServiceImpl();
    localImageLoaderServiceImpl.attachContext(localMicroApplicationContext);
    localMicroApplicationContext.registerService(ImageLoaderService.class.getName(), localImageLoaderServiceImpl);
    HttpTransportSeviceImpl localHttpTransportSeviceImpl = new HttpTransportSeviceImpl();
    localHttpTransportSeviceImpl.attachContext(localMicroApplicationContext);
    localMicroApplicationContext.registerService(HttpTransportSevice.class.getName(), localHttpTransportSeviceImpl);
    CachedHttpTransportServiceImpl localCachedHttpTransportServiceImpl = new CachedHttpTransportServiceImpl(localHttpTransportSeviceImpl);
    localCachedHttpTransportServiceImpl.attachContext(localMicroApplicationContext);
    localMicroApplicationContext.registerService(CachedHttpTransportServiceImpl.class.getName(), localCachedHttpTransportServiceImpl);
    RpcServiceImpl localRpcServiceImpl = new RpcServiceImpl();
    localRpcServiceImpl.attachContext(localMicroApplicationContext);
    localMicroApplicationContext.registerService(RpcService.class.getName(), localRpcServiceImpl);
    DownloadServiceImpl localDownloadServiceImpl = new DownloadServiceImpl();
    localDownloadServiceImpl.attachContext(localMicroApplicationContext);
    localMicroApplicationContext.registerService(DownloadService.class.getName(), localDownloadServiceImpl);
    SchemeServiceImpl localSchemeServiceImpl = new SchemeServiceImpl();
    localSchemeServiceImpl.attachContext(localMicroApplicationContext);
    localMicroApplicationContext.registerService(SchemeService.class.getName(), localSchemeServiceImpl);
    ShortLinkServiceImpl localShortLinkServiceImpl = new ShortLinkServiceImpl();
    localShortLinkServiceImpl.attachContext(localMicroApplicationContext);
    localMicroApplicationContext.registerService(ShortLinkService.class.getName(), localShortLinkServiceImpl);
    ConfigServiceImpl localConfigServiceImpl = new ConfigServiceImpl();
    localConfigServiceImpl.attachContext(localMicroApplicationContext);
    localMicroApplicationContext.registerService(ConfigService.class.getName(), localConfigServiceImpl);
    AppEntryConfigServiceImpl localAppEntryConfigServiceImpl = new AppEntryConfigServiceImpl();
    localConfigServiceImpl.attachContext(localMicroApplicationContext);
    localMicroApplicationContext.registerService(AppEntryConfigService.class.getName(), localAppEntryConfigServiceImpl);
    ChannelConfigImpl localChannelConfigImpl = new ChannelConfigImpl();
    localChannelConfigImpl.attachContext(localMicroApplicationContext);
    localMicroApplicationContext.registerService(ChannelConfig.class.getName(), localChannelConfigImpl);
    PromotionInterceptorManagerImpl localPromotionInterceptorManagerImpl = new PromotionInterceptorManagerImpl();
    localMicroApplicationContext.registerService(IPromotionInterceptorManager.class.getName(), localPromotionInterceptorManagerImpl);
    SecurityCacheServiceImpl localSecurityCacheServiceImpl = new SecurityCacheServiceImpl();
    localMicroApplicationContext.registerService(SecurityCacheService.class.getName(), localSecurityCacheServiceImpl);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ClientServicesLoader
 * JD-Core Version:    0.6.2
 */