.class public Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;
.super Ljava/lang/Object;


# static fields
.field public static final CONTEXT_GRAPHER:Ljava/lang/String; = "NET_CALL_GRAPHER"

.field public static DEFAULT_CONNECTION_TIMEOUT:I = 0x0

.field public static DEFAULT_IDLE_PING_MAX_TIMES:I = 0x0

.field public static DEFAULT_PING_INTERVAL:J = 0x0L

.field public static DEFAULT_READ_TIMEOUT:I = 0x0

.field public static final DEFAULT_SPDYROUTE_INFO:Ljava/lang/String; = "Ydps_Route"

.field public static final ERROR_CONN_MSG:Ljava/lang/String; = "SPDY_ERROR_CONN_MSG"

.field public static final ERROR_CONN_WAIT:Ljava/lang/String; = "SPDY_ERROR_CONN_WAIT"

.field public static FIRST_NOSPDY:Z = false

.field public static final MWALLET_SPDY_TAG:Ljava/lang/String; = "MWALLET_SPDY_LOG"

.field public static QUICK_DECIDE:Z

.field public static QUICK_DECIDE_RESULT:Z

.field public static STRATEGY_VERSION:Ljava/lang/String;

.field private static a:Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;


# instance fields
.field private b:Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy$SpdySwitchConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x1b58

    sput-wide v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->DEFAULT_PING_INTERVAL:J

    const/16 v0, 0xf

    sput v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->DEFAULT_IDLE_PING_MAX_TIMES:I

    const/16 v0, 0x4e20

    sput v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->DEFAULT_CONNECTION_TIMEOUT:I

    sput v2, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->DEFAULT_READ_TIMEOUT:I

    sput-boolean v2, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->QUICK_DECIDE:Z

    sput-boolean v2, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->FIRST_NOSPDY:Z

    sput-boolean v2, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->QUICK_DECIDE_RESULT:Z

    const-string/jumbo v0, "20140320001"

    sput-object v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->STRATEGY_VERSION:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->a:Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized a(Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy$SpdySwitchConfig;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->b:Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy$SpdySwitchConfig;

    if-nez v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->STRATEGY_VERSION:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy$SpdySwitchConfig;->version:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy$SpdySwitchConfig;->version:Ljava/lang/String;

    sput-object v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->STRATEGY_VERSION:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy$SpdySwitchConfig;->pingInterval:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->DEFAULT_PING_INTERVAL:J

    iget-object v0, p1, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy$SpdySwitchConfig;->pingMaxTime:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->DEFAULT_IDLE_PING_MAX_TIMES:I

    iget-object v0, p1, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy$SpdySwitchConfig;->cTimeout:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->DEFAULT_CONNECTION_TIMEOUT:I

    iget-object v0, p1, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy$SpdySwitchConfig;->rTimeout:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->DEFAULT_READ_TIMEOUT:I

    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->b:Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy$SpdySwitchConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getInstance()Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;
    .locals 2

    sget-object v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->a:Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;

    if-nez v0, :cond_1

    const-class v1, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->a:Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->a:Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->a:Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static stopPingSent()V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;->getDefault()Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;->stopAllPingTimer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public cancelNetTypeSpdyConnError(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;->getSpdyErrorByNetkey(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;->setConnetionError(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public isNetTypeSpdyConnError(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;->getSpdyErrorByNetkey(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;->isConnetionError()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;->getErrorId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isUseSpdy(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/mobile/common/transport/http/NetCallGrapher;Ljava/lang/String;)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->QUICK_DECIDE:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->QUICK_DECIDE_RESULT:Z

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->b:Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy$SpdySwitchConfig;

    if-nez v0, :cond_5

    const-string/jumbo v0, "spdy_switch_android"

    invoke-static {p1, v0}, Lcom/alipay/mobile/common/utils/SharedSwitchUtil;->getSharedSwitch(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->FIRST_NOSPDY:Z

    move v0, v1

    :goto_2
    if-nez v0, :cond_5

    move v0, v1

    goto :goto_0

    :cond_1
    const-class v3, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy$SpdySwitchConfig;

    invoke-static {v0, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy$SpdySwitchConfig;

    goto :goto_1

    :cond_2
    iget-object v3, v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy$SpdySwitchConfig;->originUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy$SpdySwitchConfig;->originUrl:Ljava/lang/String;

    invoke-virtual {p4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy$SpdySwitchConfig;->spdyUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->a(Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy$SpdySwitchConfig;)V

    move v0, v2

    goto :goto_2

    :cond_5
    const-string/jumbo v0, "T"

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->b:Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy$SpdySwitchConfig;

    iget-object v3, v3, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy$SpdySwitchConfig;->errorThreshold:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->FIRST_NOSPDY:Z

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->b:Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy$SpdySwitchConfig;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy$SpdySwitchConfig;->mdapSeed1:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->setRandom1(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->b:Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy$SpdySwitchConfig;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy$SpdySwitchConfig;->mdapSeed2:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->setRandom2(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->b:Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy$SpdySwitchConfig;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy$SpdySwitchConfig;->spdyUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->b:Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy$SpdySwitchConfig;

    iget-object v3, v3, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy$SpdySwitchConfig;->cookieOrigin:Ljava/lang/String;

    invoke-virtual {p3, v0, v3}, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->setExtUrl(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->b:Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy$SpdySwitchConfig;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy$SpdySwitchConfig;->open:Ljava/lang/String;

    const-string/jumbo v3, "T"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v2

    :goto_3
    if-eqz v0, :cond_18

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmDid()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->b:Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy$SpdySwitchConfig;

    iget-object v3, v3, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy$SpdySwitchConfig;->grayValue1:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->b:Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy$SpdySwitchConfig;

    iget-object v4, v4, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy$SpdySwitchConfig;->grayValue2:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_c

    :cond_7
    move v0, v1

    :goto_4
    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->b:Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy$SpdySwitchConfig;

    iget-object v3, v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy$SpdySwitchConfig;->operationTypeList:Ljava/util/List;

    const-string/jumbo v4, "ALL"

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy$SpdySwitchConfig;->operationTypeList:Ljava/util/List;

    const-string/jumbo v4, "ALL1"

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string/jumbo v3, "alipay.client.switches.all.get.afterlogin"

    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    iget-object v0, v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy$SpdySwitchConfig;->operationTypeList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_9
    move v0, v2

    :goto_5
    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->b:Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy$SpdySwitchConfig;

    if-eqz v0, :cond_a

    if-nez p1, :cond_f

    :cond_a
    move v0, v1

    :goto_6
    if-eqz v0, :cond_18

    move v0, v2

    goto/16 :goto_0

    :cond_b
    move v0, v1

    goto :goto_3

    :cond_c
    const-string/jumbo v5, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ+/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v5

    const-string/jumbo v6, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ+/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v6, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v0

    if-gt v5, v3, :cond_d

    if-gt v0, v4, :cond_d

    move v0, v2

    goto :goto_4

    :cond_d
    move v0, v1

    goto :goto_4

    :cond_e
    move v0, v1

    goto :goto_5

    :cond_f
    invoke-virtual {p3}, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->getNet0()I

    move-result v3

    if-nez v3, :cond_10

    iget-object v3, v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy$SpdySwitchConfig;->wifiOpen:Ljava/lang/String;

    const-string/jumbo v4, "T"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    move v0, v1

    goto :goto_6

    :cond_10
    iget-object v3, v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy$SpdySwitchConfig;->netKey:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy$SpdySwitchConfig;->netKey:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->getNet0()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    move v0, v1

    goto :goto_6

    :cond_11
    iget-object v3, v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy$SpdySwitchConfig;->sdkVersion:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12

    iget-object v3, v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy$SpdySwitchConfig;->sdkVersion:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->getOsVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->QUICK_DECIDE:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->QUICK_DECIDE_RESULT:Z

    move v0, v1

    goto/16 :goto_6

    :cond_12
    invoke-virtual {p3}, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->getNetKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;->getSpdyErrorByNetkey(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;->getBizErrorTimes()I

    move-result v4

    iget-object v5, v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy$SpdySwitchConfig;->onceSpdyErrorTimes:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-lt v4, v5, :cond_14

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;->isWriteGlobal()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {v3, p1}, Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;->writeGlobalError(Landroid/content/Context;)V

    :cond_13
    move v0, v1

    goto/16 :goto_6

    :cond_14
    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;->isConnetionError()Z

    move-result v4

    if-nez v4, :cond_15

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;->isSpdyClose()Z

    move-result v4

    if-eqz v4, :cond_16

    :cond_15
    move v0, v1

    goto/16 :goto_6

    :cond_16
    const-string/jumbo v4, "Ydps_Route"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-virtual {p3}, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->getNetKey()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy$SpdySwitchConfig;->allowSpdyErrorTimes:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lt v4, v0, :cond_17

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;->setSpdyClose(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto/16 :goto_6

    :cond_17
    move v0, v2

    goto/16 :goto_6

    :cond_18
    move v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto/16 :goto_0
.end method

.method public setNetTypeSpdyConnError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;->getSpdyErrorByNetkey(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;->setConnetionError(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public spdyExcuteTimesSave(Landroid/content/Context;Lcom/alipay/mobile/common/transport/http/NetCallGrapher;Z)V
    .locals 2

    :try_start_0
    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->getNetKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;->getSpdyErrorByNetkey(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;

    move-result-object v0

    if-nez p3, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;->addBizErrorTimes()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;->getBizErrorTimes()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;->setBizErrorTimes(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
