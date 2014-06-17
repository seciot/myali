.class public Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/nfd/nfdbiz/IWifiSniffer;


# static fields
.field public static final MSG_ACTION_PUB_LONG_LINK:Ljava/lang/String; = "com.alipay.longlink.TRANSFER_20000002"

.field private static final SP_KEY_ACTIVE_TEMPLATE:Ljava/lang/String; = "nfdbiz_setting_active_template"

.field private static final SP_KEY_LIVESTATUS:Ljava/lang/String; = "nfdbiz_setting_livestatus"

.field private static final SP_KEY_LOGO_URL:Ljava/lang/String; = "nfdbiz_setting_logo_url"

.field private static final SP_KEY_SERVICE_DESC:Ljava/lang/String; = "nfdbiz_setting_service_desc"

.field private static final SP_KEY_SERVICE_NAME:Ljava/lang/String; = "nfdbiz_setting_service_name"

.field private static final SP_KEY_STORE_NAME:Ljava/lang/String; = "nfdbiz_setting_store_name"

.field private static final SP_KEY_TIMESTAMP:Ljava/lang/String; = "nfdbiz_setting_timestamp"

.field private static final SP_NAME_NFDBIZ:Ljava/lang/String; = "nfdbiz_setting"

.field public static final TAG:Ljava/lang/String; = null

.field private static final TAG_BIZ:Ljava/lang/String; = "bizType"

.field private static final TAG_LIVE_SERVICE:Ljava/lang/String; = "liveservice"

.field private static final TAG_LONG_LINK:Ljava/lang/String; = "payload"

.field private static topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;


# instance fields
.field private handler:Landroid/os/Handler;

.field private imageLoaderService:Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

.field private infoCacheBoardInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;",
            ">;"
        }
    .end annotation
.end field

.field private liveServiceRouterRpc:Lcom/alipay/liveservice/common/service/rpc/LiveServiceRouterRpc;

.field private microAppContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private topBaordView:Lcom/alipay/mobile/nfd/nfdbiz/IActiveTopBaordView;

.field private topBoardStateCallBack:Lcom/alipay/mobile/nfd/nfdbiz/ITopBoardStateCallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    invoke-direct {v0}, Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/nfd/nfdbiz/IActiveTopBaordView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->infoCacheBoardInfos:Ljava/util/List;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->handler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->topBaordView:Lcom/alipay/mobile/nfd/nfdbiz/IActiveTopBaordView;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->microAppContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->microAppContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/liveservice/common/service/rpc/LiveServiceRouterRpc;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/liveservice/common/service/rpc/LiveServiceRouterRpc;

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->liveServiceRouterRpc:Lcom/alipay/liveservice/common/service/rpc/LiveServiceRouterRpc;

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->microAppContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->imageLoaderService:Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->topBaordView:Lcom/alipay/mobile/nfd/nfdbiz/IActiveTopBaordView;

    new-instance v1, Lcom/alipay/android/phone/nfd/nfdbiz/biz/a;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/nfd/nfdbiz/biz/a;-><init>(Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nfd/nfdbiz/IActiveTopBaordView;->setOnVisibleChangeListener(Lcom/alipay/mobile/nfd/nfdbiz/IOnActiveBoardVisibleChange;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->topBaordView:Lcom/alipay/mobile/nfd/nfdbiz/IActiveTopBaordView;

    new-instance v1, Lcom/alipay/android/phone/nfd/nfdbiz/biz/b;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/nfd/nfdbiz/biz/b;-><init>(Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nfd/nfdbiz/IActiveTopBaordView;->setOnBoardCLickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->onResume()V

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->openLiveServicePage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;)Lcom/alipay/liveservice/common/service/rpc/LiveServiceRouterRpc;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->liveServiceRouterRpc:Lcom/alipay/liveservice/common/service/rpc/LiveServiceRouterRpc;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;)Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->microAppContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method static synthetic access$600(Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->infoCacheBoardInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->intLastState()V

    return-void
.end method

.method private getUserId()Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private intLastState()V
    .locals 5

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->infoCacheBoardInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->infoCacheBoardInfos:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->infoCacheBoardInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    if-eqz v0, :cond_0

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->updateUI()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->infoCacheBoardInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;->getACTIVE_TEMPLATE()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    const-string/jumbo v1, "nfdbiz_setting"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "nfdbiz_setting_timestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v1, v3, v1

    const-wide/32 v3, 0x5265c00

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    const-string/jumbo v2, "nfdbiz_setting_active_template"

    const-string/jumbo v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;->setACTIVE_TEMPLATE(Ljava/lang/String;)V

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    const-string/jumbo v2, "nfdbiz_setting_livestatus"

    const-string/jumbo v3, "1"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;->setLIVESTATUS(Ljava/lang/String;)V

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    const-string/jumbo v2, "nfdbiz_setting_logo_url"

    const-string/jumbo v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;->setLOGO_URL(Ljava/lang/String;)V

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    const-string/jumbo v2, "nfdbiz_setting_service_name"

    const-string/jumbo v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;->setSERVICE_NAME(Ljava/lang/String;)V

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    const-string/jumbo v2, "nfdbiz_setting_store_name"

    const-string/jumbo v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;->setSTORE_NAME(Ljava/lang/String;)V

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    const-string/jumbo v2, "nfdbiz_setting_service_desc"

    const-string/jumbo v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;->setSERVICE_DESC(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private onResume()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/phone/nfd/nfdbiz/biz/c;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/nfd/nfdbiz/biz/c;-><init>(Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private openLiveServicePage(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->microAppContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->microAppContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    return-void
.end method

.method private static refreshStateRecord()V
    .locals 6

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;->getACTIVE_TEMPLATE()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    const-string/jumbo v1, "nfdbiz_setting"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "nfdbiz_setting_livestatus"

    sget-object v5, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    invoke-virtual {v5}, Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;->getLIVESTATUS()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "nfdbiz_setting_active_template"

    sget-object v5, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    invoke-virtual {v5}, Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;->getACTIVE_TEMPLATE()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "nfdbiz_setting_logo_url"

    sget-object v5, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    invoke-virtual {v5}, Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;->getLOGO_URL()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "nfdbiz_setting_service_name"

    sget-object v5, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    invoke-virtual {v5}, Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;->getSERVICE_NAME()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "nfdbiz_setting_store_name"

    sget-object v5, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    invoke-virtual {v5}, Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;->getSTORE_NAME()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "nfdbiz_setting_timestamp"

    invoke-interface {v3, v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "nfdbiz_setting_service_desc"

    sget-object v2, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    invoke-virtual {v2}, Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;->getSERVICE_DESC()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    return-void
.end method


# virtual methods
.method public getTopBoardInfo()Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    return-object v0
.end method

.method public regestLongLinkReserv()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.alipay.longlink.TRANSFER_20000002"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer$InShopByWifiReceiver;

    invoke-direct {v2, p0}, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer$InShopByWifiReceiver;-><init>(Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;)V

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public setActiveTopBaordView(Lcom/alipay/mobile/nfd/nfdbiz/IActiveTopBaordView;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->topBaordView:Lcom/alipay/mobile/nfd/nfdbiz/IActiveTopBaordView;

    return-void
.end method

.method public setTopBoardInfo(Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;)V
    .locals 0

    if-eqz p1, :cond_0

    sput-object p1, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->refreshStateRecord()V

    :cond_0
    return-void
.end method

.method public setTopBoardStateCallBack(Lcom/alipay/mobile/nfd/nfdbiz/ITopBoardStateCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->topBoardStateCallBack:Lcom/alipay/mobile/nfd/nfdbiz/ITopBoardStateCallBack;

    return-void
.end method

.method public updateUI()V
    .locals 4

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;->getLIVESTATUS()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->topBaordView:Lcom/alipay/mobile/nfd/nfdbiz/IActiveTopBaordView;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nfd/nfdbiz/IActiveTopBaordView;->changeState(I)V

    :goto_1
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->topBaordView:Lcom/alipay/mobile/nfd/nfdbiz/IActiveTopBaordView;

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    invoke-virtual {v1}, Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;->getLOGO_URL()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    invoke-virtual {v2}, Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;->getSERVICE_NAME()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    invoke-virtual {v3}, Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;->getSTORE_NAME()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/nfd/nfdbiz/IActiveTopBaordView;->updateTopInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->topBaordView:Lcom/alipay/mobile/nfd/nfdbiz/IActiveTopBaordView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nfd/nfdbiz/IActiveTopBaordView;->changeState(I)V

    goto :goto_1
.end method
