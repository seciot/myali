.class public Lcom/alipay/mobile/about/service/UpdateServicesImpl;
.super Lcom/alipay/mobile/framework/service/ext/about/UpdateServices;


# instance fields
.field private a:Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

.field private b:Lcom/alipay/mobile/framework/service/common/CacheManagerService;

.field private c:Lcom/alipay/mobileapp/common/service/facade/version/ClientVersionServiceFacade;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/about/UpdateServices;-><init>()V

    return-void
.end method

.method private a(Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;->getResultStatus()I

    move-result v1

    const/16 v2, 0xca

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl;->b:Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/common/CacheManagerService;->getDiskCacheService()Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "about_ignore_update_version"

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/framework/service/common/DiskCacheService;->get(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/alipay/mobile/common/cache/disk/CacheException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1}, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;->getNewestVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/alipay/mobile/about/service/UpdateServicesImpl;)Lcom/alipay/mobileapp/common/service/facade/version/ClientVersionServiceFacade;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl;->c:Lcom/alipay/mobileapp/common/service/facade/version/ClientVersionServiceFacade;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/about/service/UpdateServicesImpl;Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/about/service/UpdateServicesImpl;->b(Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/about/service/UpdateServicesImpl;)Landroid/app/Activity;
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "AddBankCardStepZeroActivity_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "TabLauncher"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "berCardDetailActivity_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "AlipassDetailActivity_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "AlipassQueryCardActivity_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/about/service/UpdateServicesImpl;)Lcom/alipay/mobile/framework/service/common/CacheManagerService;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl;->b:Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    return-object v0
.end method

.method private b(Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;->getResultStatus()I

    move-result v0

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/about/service/UpdateServicesImpl;->a(Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl;->b:Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/common/CacheManagerService;->getMemCacheService()Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    move-result-object v0

    const-string/jumbo v1, "about_update_info_cache_key"

    invoke-virtual {v0, v2, v2, v1, p1}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public checkUpdate(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl;->a:Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    new-instance v1, Lcom/alipay/mobile/about/service/h;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/about/service/h;-><init>(Lcom/alipay/mobile/about/service/UpdateServicesImpl;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->parallelExecute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/alipay/mobile/about/service/UpdateServicesImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-class v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    iput-object v0, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl;->a:Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    const-class v0, Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    iput-object v0, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl;->b:Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    const-class v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobileapp/common/service/facade/version/ClientVersionServiceFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileapp/common/service/facade/version/ClientVersionServiceFacade;

    iput-object v0, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl;->c:Lcom/alipay/mobileapp/common/service/facade/version/ClientVersionServiceFacade;

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public update(Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;)V
    .locals 1

    invoke-static {p1}, Lcom/alipay/mobile/about/service/m;->a(Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;)Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/about/service/UpdateServicesImpl;->b(Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;)V

    return-void
.end method

.method public update(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/about/service/UpdateServicesImpl;->update(Ljava/lang/String;Z)V

    return-void
.end method

.method public update(Ljava/lang/String;Z)V
    .locals 5

    const/4 v4, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u4e0b\u8f7d\u65b0\u5ba2\u6237\u7aef\u8def\u5f84\u9519\u8bef\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u4e0b\u8f7d\u65b0\u5ba2\u6237\u7aef\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/about/service/UpdateServicesImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-class v0, Lcom/alipay/mobile/framework/service/ext/download/ExternalDownloadManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/download/ExternalDownloadManager;

    new-instance v2, Lcom/alipay/mobile/about/service/l;

    invoke-direct {v2, p0, p2, v1}, Lcom/alipay/mobile/about/service/l;-><init>(Lcom/alipay/mobile/about/service/UpdateServicesImpl;ZLcom/alipay/mobile/framework/MicroApplicationContext;)V

    new-instance v1, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->setAppId(Ljava/lang/String;)V

    const-string/jumbo v3, "\u94b1\u5305\u5347\u7ea7\u66f4\u65b0"

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->setDescription(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->setDownloadUrl(Ljava/lang/String;)V

    const-string/jumbo v3, "Alipay.apk"

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->setFileName(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->setShowRunningNotification(Z)V

    const-string/jumbo v3, "\u652f\u4ed8\u5b9d\u94b1\u5305"

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/download/ExternalDownloadManager;->addDownload(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;)V

    sput-boolean v4, Lcom/alipay/mobile/about/service/a;->a:Z

    return-void
.end method

.method public declared-synchronized updateImmediately()V
    .locals 20

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/about/service/UpdateServicesImpl;->b:Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/common/CacheManagerService;->getMemCacheService()Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    move-result-object v2

    const/4 v3, 0x0

    const-string/jumbo v4, "about_update_info_cache_key"

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;

    move-object v12, v0

    if-eqz v12, :cond_0

    invoke-static {}, Lcom/alipay/mobile/about/service/m;->e()Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u53d1\u73b0\u65b0\u7248\u672c:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;->getNewestVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/about/service/UpdateServicesImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->i:I

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/framework/AlipayApplication;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->l:I

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/framework/AlipayApplication;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->k:I

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/framework/AlipayApplication;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v12}, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;->getGuideMemo()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    move-object v13, v2

    :goto_0
    new-instance v17, Lcom/alipay/mobile/about/service/g;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/about/service/UpdateServicesImpl;->b:Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v12, v1, v2}, Lcom/alipay/mobile/about/service/g;-><init>(Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;Lcom/alipay/mobile/framework/service/ext/about/UpdateServices;Lcom/alipay/mobile/framework/service/common/CacheManagerService;)V

    new-instance v18, Lcom/alipay/mobile/about/service/i;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/about/service/i;-><init>(Lcom/alipay/mobile/about/service/UpdateServicesImpl;)V

    new-instance v19, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v12}, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;->getResultStatus()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_1
    const-wide/16 v2, 0x5dc

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/about/service/UpdateServicesImpl;->b:Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/common/CacheManagerService;->getMemCacheService()Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    move-result-object v2

    const-string/jumbo v3, "about_update_info_cache_key"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_4
    const-string/jumbo v3, "\\\\n"

    const-string/jumbo v4, "\n"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v13, v2

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/about/service/UpdateServicesImpl;->b:Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/common/CacheManagerService;->getDiskCacheService()Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "about_ignore_update_version"

    invoke-virtual {v12}, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;->getNewestVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/32 v9, 0x240c8400

    const-string/jumbo v11, "txt"

    invoke-virtual/range {v2 .. v11}, Lcom/alipay/mobile/framework/service/common/DiskCacheService;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJJLjava/lang/String;)V

    :pswitch_1
    new-instance v2, Lcom/alipay/mobile/about/service/j;

    move-object/from16 v3, p0

    move-object v4, v14

    move-object v5, v12

    move-object v6, v13

    move-object/from16 v7, v18

    move-object v8, v15

    move-object/from16 v9, v17

    move-object/from16 v10, v16

    invoke-direct/range {v2 .. v10}, Lcom/alipay/mobile/about/service/j;-><init>(Lcom/alipay/mobile/about/service/UpdateServicesImpl;Ljava/lang/String;Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;Ljava/lang/String;Landroid/content/DialogInterface$OnKeyListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u5347\u7ea7\u5931\u8d25(update)\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :pswitch_2
    :try_start_6
    new-instance v2, Lcom/alipay/mobile/about/service/k;

    move-object/from16 v3, p0

    move-object v4, v14

    move-object v5, v12

    move-object v6, v13

    move-object/from16 v7, v18

    move-object v8, v15

    move-object/from16 v9, v17

    invoke-direct/range {v2 .. v9}, Lcom/alipay/mobile/about/service/k;-><init>(Lcom/alipay/mobile/about/service/UpdateServicesImpl;Ljava/lang/String;Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;Ljava/lang/String;Landroid/content/DialogInterface$OnKeyListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_1

    :catch_1
    move-exception v2

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0xca
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
