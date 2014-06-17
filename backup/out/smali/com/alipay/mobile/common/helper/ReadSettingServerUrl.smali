.class public Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;

.field private static b:Ljava/lang/String;


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "https://mclient.alipay.com/gateway.do"

    sput-object v0, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "https://mobilegw.alipay.com/mgw.htm"

    iput-object v0, p0, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->c:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/base/config/ChannelConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ChannelConfig;

    const-string/jumbo v1, "isSandbox"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/base/config/ChannelConfig;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    const-string/jumbo v0, "https://mobiletestabc.alipaydev.com/mobilegw/net/mgw.htm"

    iput-object v0, p0, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->c:Ljava/lang/String;

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getCcdcURL(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "content://com.alipay.setting/CcrCcdcUrl"

    const-string/jumbo v1, "https://ccdcapi.alipay.com/cacheWapCardInfo.json"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "https://ccdcapi.alipay.com/cacheWapCardInfo.json"

    goto :goto_0
.end method

.method public static final getCmsHost(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "content://com.alipay.setting/CmsUrl"

    const-string/jumbo v1, "http://d.alipay.com"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "http://d.alipay.com"

    goto :goto_0
.end method

.method public static final getCmsUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "content://com.alipay.setting/CmsUrl"

    const-string/jumbo v1, "http://d.alipay.com/mbresultyy/prc.htm"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "http://d.alipay.com/mbresultyy/prc.htm"

    goto :goto_0
.end method

.method public static final getCpbSignAddCmsUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "content://com.alipay.setting/CpbSignAddUrl"

    const-string/jumbo v1, "http://d.alipay.net/cpbSign/add.htm"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "http://d.alipay.com/cpbSign/add.htm"

    goto :goto_0
.end method

.method public static final getInnerBatchPayPrefix1(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "content://com.alipay.setting/inner_batch_pay_prefix1"

    const-string/jumbo v1, "http://maliprod.alipay.com/batch_payment.do"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "http://maliprod.alipay.com/batch_payment.do"

    goto :goto_0
.end method

.method public static final getInnerBatchPayPrefix2(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "content://com.alipay.setting/inner_batch_pay_prefix2"

    const-string/jumbo v1, "http://mali.alipay.com/batch_payment.do"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "http://mali.alipay.com/batch_payment.do"

    goto :goto_0
.end method

.method public static final getInnerSinglePayPrefix1(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "content://com.alipay.setting/inner_single_pay_prefix1"

    const-string/jumbo v1, "http://maliprod.alipay.com/w/trade_pay.do"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "http://maliprod.alipay.com/w/trade_pay.do"

    goto :goto_0
.end method

.method public static final getInnerSinglePayPrefix2(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "content://com.alipay.setting/inner_single_pay_prefix2"

    const-string/jumbo v1, "http://mali.alipay.com/w/trade_pay.do"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "http://mali.alipay.com/w/trade_pay.do"

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;
    .locals 2

    const-class v1, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->a:Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;

    invoke-direct {v0}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->a:Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;

    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->a:Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static final getNonsupportCmsUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "content://com.alipay.setting/NonsupportUrl"

    const-string/jumbo v1, "http://d.alipay.net/cpbSign/nonsupport.htm"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "http://d.alipay.com/cpbSign/nonsupport.htm"

    goto :goto_0
.end method

.method public static final getOuterPayPrefix(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "content://com.alipay.setting/outer_pay_prefix"

    const-string/jumbo v1, "http://wappaygw.alipay.com/service/rest.htm"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "http://wappaygw.alipay.com/service/rest.htm"

    goto :goto_0
.end method

.method public static final getPoliceCenterUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "content://com.alipay.setting/SafePoliceCenterUrl"

    const-string/jumbo v1, "https://clientsc.alipay.com/account/gateway.htm"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "https://clientsc.alipay.com/account/gateway.htm"

    goto :goto_0
.end method

.method public static final getRobotUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "content://com.alipay.setting/ContainerServerUrl"

    const-string/jumbo v1, "https://cschannel.alipay.com/mobile/csrouter.htm?platform=android"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "https://cschannel.alipay.com/mobile/csrouter.htm?platform=android"

    goto :goto_0
.end method

.method public static final getSafePayServerUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "content://com.alipay.setting/SafePayServerUrl"

    sget-object v1, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->b:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "https://mclient.alipay.com/gateway.do"

    goto :goto_0
.end method

.method public static final getStatisticsUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "content://com.alipay.setting/StatisticsServerUrl"

    const-string/jumbo v1, "http://mdap.alipay.com/loggw/log.do"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "http://mdap.alipay.com/loggw/log.do"

    goto :goto_0
.end method

.method public static final getTaobaoMobileDomain(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "content://com.alipay.setting/taobao_mobile_domain"

    const-string/jumbo v1, "m.taobao.com"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "m.taobao.com"

    goto :goto_0
.end method

.method public static final getTmallMobileDomain(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "content://com.alipay.setting/tmall_mobile_domain"

    const-string/jumbo v1, "m.tmall.com"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "m.tmall.com"

    goto :goto_0
.end method

.method public static getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p2
.end method

.method public static isDebug(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x4000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static final setSafePayUrl(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getGWFURL(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "content://com.alipay.setting/GWFServerUrl"

    iget-object v1, p0, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->c:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public getmUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final isOnline(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p1}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getGWFURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ".alipay.net"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setmUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->c:Ljava/lang/String;

    return-void
.end method
