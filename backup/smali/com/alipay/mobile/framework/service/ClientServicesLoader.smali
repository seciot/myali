.class public Lcom/alipay/mobile/framework/service/ClientServicesLoader;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/framework/service/ServicesLoader;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load()V
    .locals 4

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;-><init>()V

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->attachContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    const-class v2, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->registerService(Ljava/lang/String;Ljava/lang/Object;)Z

    new-instance v1, Lcom/alipay/mobile/framework/service/common/impl/CacheManagerServiceImpl;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/common/impl/CacheManagerServiceImpl;-><init>()V

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/common/CacheManagerService;->attachContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    const-class v2, Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->registerService(Ljava/lang/String;Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/common/CacheManagerService;->getDiskCacheService()Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/common/DiskCacheService;->attachContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    const-class v2, Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/common/CacheManagerService;->getDiskCacheService()Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->registerService(Ljava/lang/String;Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/common/CacheManagerService;->getMemCacheService()Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->attachContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    const-class v2, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/common/CacheManagerService;->getMemCacheService()Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->registerService(Ljava/lang/String;Ljava/lang/Object;)Z

    new-instance v1, Lcom/alipay/mobile/framework/service/common/impl/SecurityDiskCacheServiceImpl;

    invoke-static {}, Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;->getInstance()Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/mobile/framework/service/common/impl/SecurityDiskCacheServiceImpl;-><init>(Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;)V

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/common/SecurityDiskCacheService;->attachContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    const-class v2, Lcom/alipay/mobile/framework/service/common/SecurityDiskCacheService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->registerService(Ljava/lang/String;Ljava/lang/Object;)Z

    new-instance v1, Lcom/alipay/mobile/framework/service/common/impl/ImageMemCacheServiceImpl;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/common/impl/ImageMemCacheServiceImpl;-><init>()V

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/common/ImageMemCacheService;->attachContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    const-class v2, Lcom/alipay/mobile/framework/service/common/ImageMemCacheService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->registerService(Ljava/lang/String;Ljava/lang/Object;)Z

    new-instance v1, Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl;-><init>()V

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/common/ImageLoaderService;->attachContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    const-class v2, Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->registerService(Ljava/lang/String;Ljava/lang/Object;)Z

    new-instance v1, Lcom/alipay/mobile/framework/service/common/impl/HttpTransportSeviceImpl;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/common/impl/HttpTransportSeviceImpl;-><init>()V

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/common/HttpTransportSevice;->attachContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    const-class v2, Lcom/alipay/mobile/framework/service/common/HttpTransportSevice;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->registerService(Ljava/lang/String;Ljava/lang/Object;)Z

    new-instance v2, Lcom/alipay/mobile/framework/service/common/impl/CachedHttpTransportServiceImpl;

    invoke-direct {v2, v1}, Lcom/alipay/mobile/framework/service/common/impl/CachedHttpTransportServiceImpl;-><init>(Lcom/alipay/mobile/framework/service/common/HttpTransportSevice;)V

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/common/HttpTransportSevice;->attachContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    const-class v1, Lcom/alipay/mobile/framework/service/common/impl/CachedHttpTransportServiceImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->registerService(Ljava/lang/String;Ljava/lang/Object;)Z

    new-instance v1, Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl;-><init>()V

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/common/RpcService;->attachContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    const-class v2, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->registerService(Ljava/lang/String;Ljava/lang/Object;)Z

    new-instance v1, Lcom/alipay/mobile/framework/service/common/impl/DownloadServiceImpl;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/common/impl/DownloadServiceImpl;-><init>()V

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/common/DownloadService;->attachContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    const-class v2, Lcom/alipay/mobile/framework/service/common/DownloadService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->registerService(Ljava/lang/String;Ljava/lang/Object;)Z

    new-instance v1, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;-><init>()V

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/common/SchemeService;->attachContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    const-class v2, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->registerService(Ljava/lang/String;Ljava/lang/Object;)Z

    new-instance v1, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl;-><init>()V

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/common/ShortLinkService;->attachContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    const-class v2, Lcom/alipay/mobile/framework/service/common/ShortLinkService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->registerService(Ljava/lang/String;Ljava/lang/Object;)Z

    new-instance v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    invoke-direct {v1}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;-><init>()V

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/base/config/ConfigService;->attachContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    const-class v2, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->registerService(Ljava/lang/String;Ljava/lang/Object;)Z

    new-instance v2, Lcom/alipay/mobile/framework/service/ext/appentry/AppEntryConfigServiceImpl;

    invoke-direct {v2}, Lcom/alipay/mobile/framework/service/ext/appentry/AppEntryConfigServiceImpl;-><init>()V

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/base/config/ConfigService;->attachContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    const-class v1, Lcom/alipay/mobile/framework/service/ext/appentry/AppEntryConfigService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->registerService(Ljava/lang/String;Ljava/lang/Object;)Z

    new-instance v1, Lcom/alipay/mobile/base/config/impl/ChannelConfigImpl;

    invoke-direct {v1}, Lcom/alipay/mobile/base/config/impl/ChannelConfigImpl;-><init>()V

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/base/config/ChannelConfig;->attachContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    const-class v2, Lcom/alipay/mobile/base/config/ChannelConfig;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->registerService(Ljava/lang/String;Ljava/lang/Object;)Z

    new-instance v1, Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl;

    invoke-direct {v1}, Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl;-><init>()V

    const-class v2, Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptorManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->registerService(Ljava/lang/String;Ljava/lang/Object;)Z

    new-instance v1, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;-><init>()V

    const-class v2, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->registerService(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method
