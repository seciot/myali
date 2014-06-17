.class public Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;
.super Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;


# instance fields
.field private alipassPayBridgeService:Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;

.field private createDynamicCodeService:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

.field private getCodeRunnable:Lcom/alipay/mobile/alipassnfcapp/ui/b;

.field private handler:Landroid/os/Handler;

.field private isBackFromHome:Z

.field private passId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;->isBackFromHome:Z

    new-instance v0, Lcom/alipay/mobile/alipassnfcapp/ui/a;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassnfcapp/ui/a;-><init>(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;->passId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;)Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;->alipassPayBridgeService:Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;->send(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;)Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;->createDynamicCodeService:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private send(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;->getRootController()Lcom/alipay/mobile/alipassnfcapp/ui/RootController;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;->isHeadsetOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;->getRootController()Lcom/alipay/mobile/alipassnfcapp/ui/RootController;

    move-result-object v0

    const-string/jumbo v1, "\u7f51\u7edc\u65e0\u6cd5\u8fde\u63a5\uff0c\u8bf7\u70b9\u51fb\u91cd\u8bd5\u3002"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;->waveStart()V

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;->sendSoundWave(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate()V
    .locals 4

    invoke-super {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->onCreate()V

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;->wavePause()V

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    check-cast v0, Lcom/alipay/mobile/alipassnfcapp/ui/app/AlipassNfcApp;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassnfcapp/ui/app/AlipassNfcApp;->getAppBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "passid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;->passId:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    iput-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;->createDynamicCodeService:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;->createDynamicCodeService:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;->getRootController()Lcom/alipay/mobile/alipassnfcapp/ui/RootController;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;->init(Landroid/content/Context;Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;->createDynamicCodeService:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    iget-object v1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;->passId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;->setPassId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;->alipassPayBridgeService:Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;

    iput-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;->alipassPayBridgeService:Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;

    :cond_0
    new-instance v0, Lcom/alipay/mobile/alipassnfcapp/ui/b;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassnfcapp/ui/b;-><init>(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;->getCodeRunnable:Lcom/alipay/mobile/alipassnfcapp/ui/b;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;->getRootController()Lcom/alipay/mobile/alipassnfcapp/ui/RootController;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->showProgressDialog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;->getCodeRunnable:Lcom/alipay/mobile/alipassnfcapp/ui/b;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;->createDynamicCodeService:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    invoke-virtual {v0}, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;->onDestroy()V

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;->alipassPayBridgeService:Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;

    invoke-virtual {v0}, Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;->closePayBridge()V

    invoke-super {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;->createDynamicCodeService:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    invoke-virtual {v0}, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;->onPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;->isBackFromHome:Z

    invoke-super {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;->createDynamicCodeService:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    invoke-virtual {v0}, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;->onResume()V

    iget-boolean v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;->isBackFromHome:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;->wavePause()V

    :cond_0
    return-void
.end method

.method protected retry()V
    .locals 2

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;->getRootController()Lcom/alipay/mobile/alipassnfcapp/ui/RootController;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->showProgressDialog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;->getCodeRunnable:Lcom/alipay/mobile/alipassnfcapp/ui/b;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
