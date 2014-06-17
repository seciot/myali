.class public Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;
.super Lcom/alipay/mobile/nfd/nfdbiz/service/WifiSnifferService;


# static fields
.field public static final MSG_ACTION_PUB_LONG_LINK:Ljava/lang/String; = "com.alipay.longlink.TRANSFER_20000002"

.field private static final SP_KEY_ACTIVE_TEMPLATE:Ljava/lang/String; = "nfdbiz_setting_active_template"

.field private static final SP_KEY_LIVESTATUS:Ljava/lang/String; = "nfdbiz_setting_livestatus"

.field private static final SP_KEY_LOGO_URL:Ljava/lang/String; = "nfdbiz_setting_logo_url"

.field private static final SP_KEY_SERVICE_DESC:Ljava/lang/String; = "nfdbiz_setting_service_desc"

.field private static final SP_KEY_SERVICE_ID:Ljava/lang/String; = "nfdbiz_setting_service_id"

.field private static final SP_KEY_SERVICE_NAME:Ljava/lang/String; = "nfdbiz_setting_service_name"

.field private static final SP_KEY_STORE_NAME:Ljava/lang/String; = "nfdbiz_setting_store_name"

.field private static final SP_KEY_TIMESTAMP:Ljava/lang/String; = "nfdbiz_setting_timestamp"

.field private static final SP_NAME_NFDBIZ:Ljava/lang/String; = "nfdbiz_setting"

.field public static final TAG:Ljava/lang/String; = null

.field private static final TAG_BIZ:Ljava/lang/String; = "bizType"

.field private static final TAG_LIVE_SERVICE:Ljava/lang/String; = "liveservice"

.field private static final TAG_LONG_LINK:Ljava/lang/String; = "payload"


# instance fields
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

.field private topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

.field private topBoardViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alipay/mobile/nfd/nfdbiz/IActiveTopBaordContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/nfd/nfdbiz/service/WifiSnifferService;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;)Lcom/alipay/liveservice/common/service/rpc/LiveServiceRouterRpc;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->liveServiceRouterRpc:Lcom/alipay/liveservice/common/service/rpc/LiveServiceRouterRpc;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->topBoardViewRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->infoCacheBoardInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->intLastState()V

    return-void
.end method

.method static synthetic access$400(Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->onResume()V

    return-void
.end method

.method static synthetic access$500(Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->openLiveServicePage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;)Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    return-object v0
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

.method private init()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->infoCacheBoardInfos:Ljava/util/List;

    return-void
.end method

.method private initCityListFromLocal(I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method private intLastState()V
    .locals 5

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "intLastState enter"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->infoCacheBoardInfos:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->infoCacheBoardInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->infoCacheBoardInfos:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->infoCacheBoardInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->setTopBoardInfo(Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;)V

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "intLastState updateUI"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->updateUI()V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->infoCacheBoardInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    const-string/jumbo v1, "nfdbiz_setting"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    invoke-direct {v1}, Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;-><init>()V

    iput-object v1, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    const-string/jumbo v1, "nfdbiz_setting_timestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v1, v3, v1

    const-wide/32 v3, 0x5265c00

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    const-string/jumbo v2, "nfdbiz_setting_active_template"

    const-string/jumbo v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;->setACTIVE_TEMPLATE(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    const-string/jumbo v2, "nfdbiz_setting_livestatus"

    const-string/jumbo v3, "1"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;->setLIVESTATUS(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    const-string/jumbo v2, "nfdbiz_setting_logo_url"

    const-string/jumbo v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;->setLOGO_URL(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    const-string/jumbo v2, "nfdbiz_setting_service_name"

    const-string/jumbo v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;->setSERVICE_NAME(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    const-string/jumbo v2, "nfdbiz_setting_store_name"

    const-string/jumbo v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;->setSTORE_NAME(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    const-string/jumbo v2, "nfdbiz_setting_service_desc"

    const-string/jumbo v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;->setSERVICE_DESC(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    const-string/jumbo v2, "nfdbiz_setting_service_id"

    const-string/jumbo v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;->setSERVICE_ID(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->updateUI()V

    goto/16 :goto_0
.end method

.method private isFromPotal()Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    const-string/jumbo v2, "wifisdk_setting"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/framework/AlipayApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v1, ""

    if-eqz v2, :cond_0

    const-string/jumbo v1, "wifisdk_setting_success_public_id"

    const-string/jumbo v3, ""

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "serviceIdString:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    invoke-virtual {v3}, Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;->getSERVICE_ID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getSERVICE_ID:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    invoke-virtual {v5}, Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;->getSERVICE_ID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    invoke-virtual {v3}, Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;->getSERVICE_ID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "wifisdk_setting_success_public_id"

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private onResume()V
    .locals 4

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onResume enter"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->topBoardViewRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->topBoardViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->topBoardViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nfd/nfdbiz/IActiveTopBaordContainer;

    invoke-interface {v0}, Lcom/alipay/mobile/nfd/nfdbiz/IActiveTopBaordContainer;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->topBoardViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nfd/nfdbiz/IActiveTopBaordContainer;

    invoke-interface {v0}, Lcom/alipay/mobile/nfd/nfdbiz/IActiveTopBaordContainer;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->topBoardViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nfd/nfdbiz/IActiveTopBaordContainer;

    invoke-interface {v0}, Lcom/alipay/mobile/nfd/nfdbiz/IActiveTopBaordContainer;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/nfd/nfdbiz/biz/e;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/nfd/nfdbiz/biz/e;-><init>(Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private openLiveServicePage(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->microAppContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/SchemeService;->process(Landroid/net/Uri;)I

    return-void
.end method

.method private refreshStateRecord()V
    .locals 6

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

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

    iget-object v5, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    invoke-virtual {v5}, Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;->getLIVESTATUS()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "nfdbiz_setting_active_template"

    iget-object v5, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    invoke-virtual {v5}, Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;->getACTIVE_TEMPLATE()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "nfdbiz_setting_logo_url"

    iget-object v5, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    invoke-virtual {v5}, Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;->getLOGO_URL()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "nfdbiz_setting_service_name"

    iget-object v5, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    invoke-virtual {v5}, Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;->getSERVICE_NAME()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "nfdbiz_setting_store_name"

    iget-object v5, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    invoke-virtual {v5}, Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;->getSTORE_NAME()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "nfdbiz_setting_timestamp"

    invoke-interface {v3, v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "nfdbiz_setting_service_desc"

    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    invoke-virtual {v3}, Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;->getSERVICE_DESC()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "nfdbiz_setting_service_id"

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    invoke-virtual {v2}, Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;->getSERVICE_ID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    return-void
.end method


# virtual methods
.method public getTopBoardInfo()Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
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

    new-instance v2, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl$InShopByWifiReceiver;

    invoke-direct {v2, p0}, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl$InShopByWifiReceiver;-><init>(Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;)V

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public setActiveTopBaordView(Lcom/alipay/mobile/nfd/nfdbiz/IActiveTopBaordContainer;)V
    .locals 2

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setActiveTopBaordView enter"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setActiveTopBaordView topBaordView == null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setActiveTopBaordView topBaordView != null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->topBoardViewRef:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->topBoardViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nfd/nfdbiz/IActiveTopBaordContainer;

    new-instance v1, Lcom/alipay/android/phone/nfd/nfdbiz/biz/f;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/nfd/nfdbiz/biz/f;-><init>(Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nfd/nfdbiz/IActiveTopBaordContainer;->setOnVisibleChangeListener(Lcom/alipay/mobile/nfd/nfdbiz/IOnActiveBoardVisibleChange;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->topBoardViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nfd/nfdbiz/IActiveTopBaordContainer;

    new-instance v1, Lcom/alipay/android/phone/nfd/nfdbiz/biz/g;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/nfd/nfdbiz/biz/g;-><init>(Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nfd/nfdbiz/IActiveTopBaordContainer;->setOnBoardCLickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->microAppContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->microAppContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

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

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->liveServiceRouterRpc:Lcom/alipay/liveservice/common/service/rpc/LiveServiceRouterRpc;

    goto :goto_0
.end method

.method public setTopBoardInfo(Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->refreshStateRecord()V

    :cond_0
    return-void
.end method

.method public setTopBoardStateCallBack(Lcom/alipay/mobile/nfd/nfdbiz/ITopBoardStateCallBack;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->topBoardViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->topBoardViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->topBoardViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nfd/nfdbiz/IActiveTopBaordContainer;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nfd/nfdbiz/IActiveTopBaordContainer;->setOnStateChangeListener(Lcom/alipay/mobile/nfd/nfdbiz/ITopBoardStateCallBack;)V

    :cond_0
    return-void
.end method

.method public updateUI()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    if-nez v0, :cond_0

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateUI: topBoardInfo == null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->topBoardViewRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateUI: topBoardViewRef == null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->topBoardViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateUI: topBoardViewRef.get() == null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;->getLIVESTATUS()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;->getLIVESTATUS()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->isFromPotal()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->topBoardViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nfd/nfdbiz/IActiveTopBaordContainer;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nfd/nfdbiz/IActiveTopBaordContainer;->changeState(I)V

    :goto_1
    sget-object v0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateUI: \u5230\u5e97"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->topBoardViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nfd/nfdbiz/IActiveTopBaordContainer;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    invoke-virtual {v1}, Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;->getLOGO_URL()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    invoke-virtual {v2}, Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;->getSERVICE_NAME()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    invoke-virtual {v3}, Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;->getSTORE_NAME()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/nfd/nfdbiz/IActiveTopBaordContainer;->updateTopInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateUI: finish"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->topBoardViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nfd/nfdbiz/IActiveTopBaordContainer;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nfd/nfdbiz/IActiveTopBaordContainer;->changeState(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->topBoardViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nfd/nfdbiz/IActiveTopBaordContainer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nfd/nfdbiz/IActiveTopBaordContainer;->changeState(I)V

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateUI: \u79bb\u5e97\u6216getLIVESTATUS() == null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getACTIVE_TEMPLATE()\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    invoke-virtual {v2}, Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;->getACTIVE_TEMPLATE()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getACTIVE_TYPE()\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    invoke-virtual {v2}, Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;->getACTIVE_TYPE()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getLIVESTATUS()\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    invoke-virtual {v2}, Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;->getLIVESTATUS()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method
