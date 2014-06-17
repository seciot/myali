.class public final Lcom/alipay/mobile/about/service/m;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/Object;

.field private static b:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/mobile/about/service/m;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;)Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;

    invoke-direct {v0}, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;->getDownloadURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;->setDownloadURL(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;->getGuideMemo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;->setGuideMemo(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;->getMemo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;->setMemo(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;->getNewestVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;->setNewestVersion(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;->getResultStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;->setResultStatus(I)V

    :cond_0
    return-object v0
.end method

.method public static final a()Lcom/alipay/mobileapp/common/service/facade/version/model/ClientVersionServiceReq;
    .locals 2

    new-instance v0, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientVersionServiceReq;

    invoke-direct {v0}, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientVersionServiceReq;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientVersionServiceReq;->setClientId(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getOsVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientVersionServiceReq;->setOsVersion(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/AppInfo;->getProductID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientVersionServiceReq;->setProductId(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/AppInfo;->getmProductVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientVersionServiceReq;->setProductVersion(Ljava/lang/String;)V

    return-object v0
.end method

.method public static b()Landroid/app/Activity;
    .locals 1

    invoke-static {}, Lcom/alipay/mobile/about/service/m;->f()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public static c()V
    .locals 2

    sget-object v1, Lcom/alipay/mobile/about/service/m;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/about/service/m;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static d()V
    .locals 3

    sget-object v0, Lcom/alipay/mobile/about/service/m;->b:Landroid/app/Activity;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/about/service/m;->f()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "TabLauncher"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sput-object v0, Lcom/alipay/mobile/about/service/m;->b:Landroid/app/Activity;

    :cond_0
    return-void
.end method

.method public static e()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/about/service/m;->b:Landroid/app/Activity;

    return-object v0
.end method

.method private static f()Landroid/app/Activity;
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x3a98

    cmp-long v1, v4, v6

    if-gtz v1, :cond_2

    const-wide/16 v4, 0x1f4

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_2
    return-object v0
.end method
