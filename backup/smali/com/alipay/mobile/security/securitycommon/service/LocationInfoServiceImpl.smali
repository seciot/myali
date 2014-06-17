.class public Lcom/alipay/mobile/security/securitycommon/service/LocationInfoServiceImpl;
.super Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;


# instance fields
.field private a:Lcom/alipay/mobile/framework/service/common/CacheManagerService;

.field private b:Z

.field private c:[I

.field private d:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x4

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;-><init>()V

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/alipay/mobile/security/securitycommon/service/LocationInfoServiceImpl;->c:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/alipay/mobile/security/securitycommon/service/LocationInfoServiceImpl;->d:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private static a(Landroid/telephony/TelephonyManager;)Lcom/alipay/mobile/framework/service/ext/security/bean/CellIdInfo;
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/alipay/mobile/framework/service/ext/security/bean/CellIdInfo;

    invoke-direct {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/CellIdInfo;-><init>()V

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v3

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/CellIdInfo;->setCid(I)V

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/framework/service/ext/security/bean/CellIdInfo;->setMcc(I)V

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/framework/service/ext/security/bean/CellIdInfo;->setMnc(I)V

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/framework/service/ext/security/bean/CellIdInfo;->setLac(I)V

    const-string/jumbo v0, "cdma"

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/CellIdInfo;->setType(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object v0, v1

    goto :goto_0
.end method

.method private a(Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;Landroid/content/Context;Lcom/alipay/mobile/common/lbs/LBSLocation;)V
    .locals 5

    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;->setLatitude(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;->setLongitude(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;->setAccuracy(Ljava/lang/String;)V

    const-string/jumbo v0, "phone"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    new-instance v1, Lcom/alipay/mobile/framework/service/ext/security/bean/CellIdInfo;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/CellIdInfo;-><init>()V

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getCellIDInfo-->        NetworkType = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getCellIDInfo-->        phoneType = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/security/securitycommon/service/LocationInfoServiceImpl;->c:[I

    invoke-static {v1, v2}, Lcom/alipay/mobile/security/securitycommon/service/LocationInfoServiceImpl;->a(I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/alipay/mobile/security/securitycommon/service/LocationInfoServiceImpl;->b(Landroid/telephony/TelephonyManager;)Lcom/alipay/mobile/framework/service/ext/security/bean/CellIdInfo;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;->setCellId(Ljava/lang/String;)V

    const-string/jumbo v0, "wifi"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;->setMac(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/security/securitycommon/service/LocationInfoServiceImpl;->d:[I

    invoke-static {v1, v2}, Lcom/alipay/mobile/security/securitycommon/service/LocationInfoServiceImpl;->a(I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/alipay/mobile/security/securitycommon/service/LocationInfoServiceImpl;->a(Landroid/telephony/TelephonyManager;)Lcom/alipay/mobile/framework/service/ext/security/bean/CellIdInfo;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/alipay/mobile/security/securitycommon/service/LocationInfoServiceImpl;->b(Landroid/telephony/TelephonyManager;)Lcom/alipay/mobile/framework/service/ext/security/bean/CellIdInfo;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lcom/alipay/mobile/security/securitycommon/service/LocationInfoServiceImpl;->a(Landroid/telephony/TelephonyManager;)Lcom/alipay/mobile/framework/service/ext/security/bean/CellIdInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private static a(I[I)Z
    .locals 4

    const/4 v0, 0x0

    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, p1, v1

    if-ne p0, v3, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/alipay/mobile/security/securitycommon/service/LocationInfoServiceImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/security/securitycommon/service/LocationInfoServiceImpl;->b:Z

    return p1
.end method

.method static synthetic access$100(Lcom/alipay/mobile/security/securitycommon/service/LocationInfoServiceImpl;Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;Landroid/content/Context;Lcom/alipay/mobile/common/lbs/LBSLocation;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/security/securitycommon/service/LocationInfoServiceImpl;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;Landroid/content/Context;Lcom/alipay/mobile/common/lbs/LBSLocation;)V

    return-void
.end method

.method private static b(Landroid/telephony/TelephonyManager;)Lcom/alipay/mobile/framework/service/ext/security/bean/CellIdInfo;
    .locals 9

    const/4 v1, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-instance v2, Lcom/alipay/mobile/framework/service/ext/security/bean/CellIdInfo;

    invoke-direct {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/CellIdInfo;-><init>()V

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    :try_start_2
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    const/4 v8, 0x5

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v4

    :cond_1
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/CellIdInfo;->setCid(I)V

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/framework/service/ext/security/bean/CellIdInfo;->setMcc(I)V

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/framework/service/ext/security/bean/CellIdInfo;->setMnc(I)V

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/framework/service/ext/security/bean/CellIdInfo;->setLac(I)V

    const-string/jumbo v0, "gsm"

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/CellIdInfo;->setType(Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v3

    move v3, v4

    :goto_2
    if-eqz p0, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "{[info=getCellGsm], [msg="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v6

    goto :goto_2
.end method


# virtual methods
.method public getCacheLocationInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/service/LocationInfoServiceImpl;->a:Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/common/CacheManagerService;->getMemCacheService()Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "locationInfoKey"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;->getLatitude()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;->getLongitude()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getInstance()Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getLastKnownLocation(Landroid/content/Context;)Lcom/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-direct {p0, v0, v2, v1}, Lcom/alipay/mobile/security/securitycommon/service/LocationInfoServiceImpl;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;Landroid/content/Context;Lcom/alipay/mobile/common/lbs/LBSLocation;)V

    :cond_1
    return-object v0
.end method

.method public getLocationInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;
    .locals 5

    new-instance v1, Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getInstance()Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    move-result-object v2

    new-instance v3, Lcom/alipay/mobile/security/securitycommon/service/LocationInfoServiceImpl$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/alipay/mobile/security/securitycommon/service/LocationInfoServiceImpl$1;-><init>(Lcom/alipay/mobile/security/securitycommon/service/LocationInfoServiceImpl;Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;Landroid/content/Context;)V

    invoke-virtual {v2, v0, v3}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->requestLocationUpdates(Landroid/content/Context;Lcom/alipay/mobile/common/lbs/LBSLocationListener;)V

    iget-boolean v0, p0, Lcom/alipay/mobile/security/securitycommon/service/LocationInfoServiceImpl;->b:Z

    if-nez v0, :cond_0

    const-string/jumbo v2, "LocationInfoServiceImpl"

    monitor-enter v2

    :try_start_0
    const-string/jumbo v0, "LocationInfoServiceImpl"

    const-wide/16 v3, 0x2710

    invoke-virtual {v0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    monitor-exit v2

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/alipay/mobile/security/securitycommon/service/LocationInfoServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    iput-object v0, p0, Lcom/alipay/mobile/security/securitycommon/service/LocationInfoServiceImpl;->a:Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    return-void
.end method

.method public putCacheLocationInfo()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/service/LocationInfoServiceImpl;->a:Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/common/CacheManagerService;->getMemCacheService()Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    move-result-object v0

    const-string/jumbo v1, "locationInfoKey"

    invoke-virtual {p0}, Lcom/alipay/mobile/security/securitycommon/service/LocationInfoServiceImpl;->getLocationInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;

    move-result-object v2

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
