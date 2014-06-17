.class public Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/common/lbs/LBSLocationListener;


# static fields
.field private static a:Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;

.field private static h:Ljava/lang/String;

.field private static i:I

.field private static j:I

.field private static k:I


# instance fields
.field private b:Landroid/os/Handler;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/lbsinfo/LBSInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/alipay/mobile/common/lbs/LBSLocation;

.field private f:Landroid/telephony/TelephonyManager;

.field private g:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "LBSLocationManager"

    sput-object v0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->h:Ljava/lang/String;

    const/16 v0, 0x3e8

    sput v0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->i:I

    const/16 v0, 0x3e9

    sput v0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->j:I

    const/16 v0, 0x3ea

    sput v0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->k:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->d:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->c:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->f:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->c:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->g:Landroid/net/wifi/WifiManager;

    new-instance v0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather$1;-><init>(Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->b:Landroid/os/Handler;

    return-void
.end method

.method private declared-synchronized a()Lcom/alipay/mobilelbs/common/service/facade/vo/Location;
    .locals 5

    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;

    invoke-direct {v1}, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;-><init>()V

    iget-object v0, p0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->e:Lcom/alipay/mobile/common/lbs/LBSLocation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->e:Lcom/alipay/mobile/common/lbs/LBSLocation;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLatitude()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->latitude:D

    iget-object v0, p0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->e:Lcom/alipay/mobile/common/lbs/LBSLocation;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLongitude()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->longitude:D

    iget-object v0, p0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->e:Lcom/alipay/mobile/common/lbs/LBSLocation;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getAccuracy()F

    move-result v0

    float-to-double v2, v0

    iput-wide v2, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->accuracy:D

    iget-object v0, p0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->e:Lcom/alipay/mobile/common/lbs/LBSLocation;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getAltitude()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->altitude:D

    iget-object v0, p0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->e:Lcom/alipay/mobile/common/lbs/LBSLocation;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getBearing()F

    move-result v0

    float-to-double v2, v0

    iput-wide v2, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->direction:D

    iget-object v0, p0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->e:Lcom/alipay/mobile/common/lbs/LBSLocation;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getSpeed()F

    move-result v0

    float-to-double v2, v0

    iput-wide v2, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->speed:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->gsmInfos:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v3, v0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v3, :cond_1

    new-instance v3, Lcom/alipay/mobilelbs/common/service/facade/vo/CDMAInfo;

    invoke-direct {v3}, Lcom/alipay/mobilelbs/common/service/facade/vo/CDMAInfo;-><init>()V

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v4

    iput v4, v3, Lcom/alipay/mobilelbs/common/service/facade/vo/CDMAInfo;->bsid:I

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v4

    iput v4, v3, Lcom/alipay/mobilelbs/common/service/facade/vo/CDMAInfo;->nid:I

    const/4 v4, -0x1

    iput v4, v3, Lcom/alipay/mobilelbs/common/service/facade/vo/CDMAInfo;->rssi:I

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v0

    iput v0, v3, Lcom/alipay/mobilelbs/common/service/facade/vo/CDMAInfo;->sid:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iput-object v2, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->cdmaInfos:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    :try_start_3
    invoke-direct {p0}, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->c()Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->wifiInfos:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    monitor-exit p0

    return-object v1

    :catch_0
    move-exception v0

    :try_start_4
    sget-object v0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->h:Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->h:Ljava/lang/String;

    goto :goto_1

    :catch_2
    move-exception v0

    sget-object v0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->h:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic access$000()I
    .locals 1

    sget v0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->i:I

    return v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;)V
    .locals 8

    const-wide/16 v6, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->a()Lcom/alipay/mobilelbs/common/service/facade/vo/Location;

    move-result-object v3

    iget-object v0, p0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->e:Lcom/alipay/mobile/common/lbs/LBSLocation;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->e:Lcom/alipay/mobile/common/lbs/LBSLocation;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLatitude()D

    move-result-wide v4

    cmpl-double v1, v4, v6

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->e:Lcom/alipay/mobile/common/lbs/LBSLocation;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLongitude()D

    move-result-wide v4

    cmpl-double v1, v4, v6

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-interface {v0, v3, v1}, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoListener;->onLBSInfoChanged(Lcom/alipay/mobilelbs/common/service/facade/vo/Location;Z)V

    :cond_0
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    return-void
.end method

.method static synthetic access$200()I
    .locals 1

    sget v0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->j:I

    return v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getInstance()Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->requestLocationUpdates(Landroid/content/Context;Lcom/alipay/mobile/common/lbs/LBSLocationListener;)V

    :cond_0
    return-void
.end method

.method static synthetic access$400()I
    .locals 1

    sget v0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->k:I

    return v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getInstance()Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->removeUpdates(Landroid/content/Context;Lcom/alipay/mobile/common/lbs/LBSLocationListener;)V

    :cond_0
    return-void
.end method

.method private b()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x3

    const/4 v0, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x5

    if-lt v1, v4, :cond_3

    invoke-virtual {v2, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v2, v1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v4, v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v4, :cond_0

    new-instance v4, Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;

    invoke-direct {v4}, Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;-><init>()V

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    iput v1, v4, Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->mnc:I

    iput v2, v4, Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->mcc:I

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v5

    iput v5, v4, Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->cid:I

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    iput v0, v4, Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->lac:I

    const/4 v0, -0x1

    iput v0, v4, Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->rssi:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    if-eqz v0, :cond_1

    new-instance v5, Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;

    invoke-direct {v5}, Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;-><init>()V

    iput v1, v5, Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->mnc:I

    iput v2, v5, Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->mcc:I

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v6

    iput v6, v5, Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->lac:I

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v6

    iput v6, v5, Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->cid:I

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v0

    iput v0, v5, Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->rssi:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v3

    :cond_3
    move v1, v0

    move v2, v0

    goto :goto_0
.end method

.method private c()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilelbs/common/service/facade/vo/WifiInfo;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->g:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    new-instance v3, Lcom/alipay/mobilelbs/common/service/facade/vo/WifiInfo;

    invoke-direct {v3}, Lcom/alipay/mobilelbs/common/service/facade/vo/WifiInfo;-><init>()V

    iget-object v4, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobilelbs/common/service/facade/vo/WifiInfo;->mac:Ljava/lang/String;

    iget-object v4, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobilelbs/common/service/facade/vo/WifiInfo;->ssid:Ljava/lang/String;

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    iput v0, v3, Lcom/alipay/mobilelbs/common/service/facade/vo/WifiInfo;->rssi:I

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->a:Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->a:Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;

    :cond_0
    sget-object v0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->a:Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;

    return-object v0
.end method


# virtual methods
.method public getLastKnownLBSInfo()Lcom/alipay/mobilelbs/common/service/facade/vo/Location;
    .locals 4

    invoke-direct {p0}, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->a()Lcom/alipay/mobilelbs/common/service/facade/vo/Location;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->e:Lcom/alipay/mobile/common/lbs/LBSLocation;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getInstance()Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getLastKnownLocation(Landroid/content/Context;)Lcom/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLatitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->latitude:D

    invoke-virtual {v1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLongitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->longitude:D

    invoke-virtual {v1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getAccuracy()F

    move-result v2

    float-to-double v2, v2

    iput-wide v2, v0, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->accuracy:D

    invoke-virtual {v1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getAltitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->altitude:D

    invoke-virtual {v1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getBearing()F

    move-result v2

    float-to-double v2, v2

    iput-wide v2, v0, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->direction:D

    invoke-virtual {v1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getSpeed()F

    move-result v1

    float-to-double v1, v1

    iput-wide v1, v0, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->speed:D

    :cond_0
    return-object v0
.end method

.method public getWifiList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilelbs/common/service/facade/vo/WifiInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onLocationUpdate(Lcom/alipay/mobile/common/lbs/LBSLocation;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->setLBSLocation(Lcom/alipay/mobile/common/lbs/LBSLocation;)V

    return-void
.end method

.method public removeUpdates(Lcom/alipay/mobile/framework/lbsinfo/LBSInfoListener;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->b:Landroid/os/Handler;

    sget v2, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->k:I

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public requestLBSInfoUpdates(Lcom/alipay/mobile/framework/lbsinfo/LBSInfoListener;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->b:Landroid/os/Handler;

    sget v2, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->i:I

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->b:Landroid/os/Handler;

    sget v2, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->j:I

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected declared-synchronized setLBSLocation(Lcom/alipay/mobile/common/lbs/LBSLocation;)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iput-object p1, p0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->e:Lcom/alipay/mobile/common/lbs/LBSLocation;

    iget-object v0, p0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->b:Landroid/os/Handler;

    sget v2, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->i:I

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
