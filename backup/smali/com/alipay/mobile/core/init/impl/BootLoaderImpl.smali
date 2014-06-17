.class public Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/core/init/BootLoader;


# instance fields
.field private a:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private b:Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-void
.end method


# virtual methods
.method public getContext()Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method public load()V
    .locals 2

    new-instance v0, Lcom/alipay/mobile/core/init/impl/CommonServiceLoadHelper;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/core/init/impl/CommonServiceLoadHelper;-><init>(Lcom/alipay/mobile/core/init/BootLoader;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/core/init/impl/CommonServiceLoadHelper;->loadServices()V

    invoke-static {}, Lcom/alipay/mobile/common/logging/LogCatLog;->init()V

    iget-object v0, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->createInstance()Lcom/alipay/mobile/framework/app/ui/ActivityCollections;

    new-instance v0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;-><init>(Lcom/alipay/mobile/core/init/BootLoader;)V

    iput-object v0, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->b:Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;

    iget-object v0, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->b:Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->loadBundleDefinitions()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.alipay.mobile.framework.INITED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public loadBundle(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->b:Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;

    invoke-virtual {v1, v0, p1}, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->loadBundle(Lcom/alipay/mobile/framework/BundleContext;Ljava/lang/String;)V

    return-void
.end method
