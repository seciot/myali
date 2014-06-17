.class public Lcom/alipay/mobile/core/init/impl/CommonServiceLoadHelper;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/alipay/mobile/core/init/BootLoader;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/core/init/BootLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/core/init/impl/CommonServiceLoadHelper;->a:Lcom/alipay/mobile/core/init/BootLoader;

    return-void
.end method


# virtual methods
.method public loadServices()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/core/init/impl/CommonServiceLoadHelper;->a:Lcom/alipay/mobile/core/init/BootLoader;

    invoke-interface {v0}, Lcom/alipay/mobile/core/init/BootLoader;->getContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/DeviceInfo;

    invoke-static {v1}, Lcom/alipay/mobile/common/info/AppInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/AppInfo;

    invoke-static {}, Lcom/alipay/mobile/common/logging/PerformanceLog;->createInstance()Lcom/alipay/mobile/common/logging/PerformanceLog;

    :try_start_0
    new-instance v2, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;

    invoke-direct {v2}, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;-><init>()V

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/ExternalServiceManager;->attachContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    const-class v3, Lcom/alipay/mobile/framework/service/ext/ExternalServiceManager;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->registerService(Ljava/lang/String;Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v1, "com.alipay.mobile.framework.service.ClientServicesLoader"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ServicesLoader;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/service/ServicesLoader;->load()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method
