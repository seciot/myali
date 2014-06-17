.class public Lcom/alipay/mobile/rome/longlinkservice/service/LongLinkSyncServiceImpl;
.super Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private a:Lcom/alipay/mobile/longlink/LongLinkServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/rome/longlinkservice/service/LongLinkSyncServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/longlinkservice/service/LongLinkSyncServiceImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;-><init>()V

    return-void
.end method


# virtual methods
.method public getLinkState()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/rome/longlinkservice/service/LongLinkSyncServiceImpl;->a:Lcom/alipay/mobile/longlink/LongLinkServiceManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->isConnected()Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    sget-object v0, Lcom/alipay/mobile/rome/longlinkservice/service/LongLinkSyncServiceImpl;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/longlink/LongLinkServiceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/rome/longlinkservice/service/LongLinkSyncServiceImpl;->a:Lcom/alipay/mobile/longlink/LongLinkServiceManager;

    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/AppInfo;->isDebuggable()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/alipay/mobile/rome/longlinkservice/service/LongLinkSyncServiceImpl;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/rome/longlinkservice/service/LongLinkSyncServiceImpl;->a:Lcom/alipay/mobile/longlink/LongLinkServiceManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->setDebugMode(Z)V

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/rome/longlinkservice/service/LongLinkSyncServiceImpl;->a:Lcom/alipay/mobile/longlink/LongLinkServiceManager;

    new-instance v2, Lcom/alipay/mobile/rome/longlinkservice/service/a;

    invoke-direct {v2, v0}, Lcom/alipay/mobile/rome/longlinkservice/service/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->bindService(Lcom/alipay/mobile/longlink/PacketHanlder;)V

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/rome/longlinkservice/service/LongLinkSyncServiceImpl;->a:Lcom/alipay/mobile/longlink/LongLinkServiceManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->unBindService()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/rome/longlinkservice/service/LongLinkSyncServiceImpl;->a:Lcom/alipay/mobile/longlink/LongLinkServiceManager;

    return-void
.end method
