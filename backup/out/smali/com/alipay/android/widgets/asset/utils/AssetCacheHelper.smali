.class public Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:I

.field private static f:Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;


# instance fields
.field private g:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private h:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

.field private i:Lcom/alipay/mobile/framework/service/common/SecurityCacheService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "_CACHE_OPEN_WAP"

    sput-object v0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->a:Ljava/lang/String;

    const-string/jumbo v0, "TRUE"

    sput-object v0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->b:Ljava/lang/String;

    const-string/jumbo v0, "_wealthWidgetHomeData"

    sput-object v0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->c:Ljava/lang/String;

    const-string/jumbo v0, "_wealthWidgetHomeData_8_1"

    sput-object v0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->d:Ljava/lang/String;

    const v0, 0x278d00

    sput v0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->e:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->g:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->g:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/common/CacheManagerService;->getMemCacheService()Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->h:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->g:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->i:Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    return-void
.end method

.method public static a()Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;
    .locals 1

    sget-object v0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->f:Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;

    invoke-direct {v0}, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;-><init>()V

    sput-object v0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->f:Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;

    :cond_0
    sget-object v0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->f:Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeInfoResult;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->i:Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    sget-object v2, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->d:Ljava/lang/String;

    new-instance v3, Lcom/alipay/android/widgets/asset/utils/a;

    invoke-direct {v3, p0}, Lcom/alipay/android/widgets/asset/utils/a;-><init>(Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;)V

    invoke-virtual {v0, p1, v2, v3}, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;->get(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeInfoResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u83b7\u53d6\u7f13\u5b58\uff0cwealthHomeResult="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    const-class v1, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->h:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeInfoResult;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->i:Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    sget-object v1, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->d:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, p1}, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u8bbe\u7f6e\u7f13\u5b58\uff0cwealthHomeResult="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-class v0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->h:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
