.class public Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EBean;
.end annotation


# instance fields
.field private a:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private b:Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeInfoResult;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/alipay/android/widgets/asset/AssetWidgetGroup;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->c:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->e:Z

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    new-instance v0, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;-><init>(Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->b:Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getInstance()Lcom/alipay/mobile/common/helper/UserInfoHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getUserInfo(Lcom/alipay/mobile/framework/MicroApplicationContext;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->d:Lcom/alipay/android/widgets/asset/AssetWidgetGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->a(Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeInfoResult;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/alipay/android/widgets/asset/AssetWidgetGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->d:Lcom/alipay/android/widgets/asset/AssetWidgetGroup;

    return-void
.end method

.method public final a(Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeInfoResult;Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeInfoResult;->success:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->d:Lcom/alipay/android/widgets/asset/AssetWidgetGroup;

    invoke-virtual {v0, p1}, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->a(Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeInfoResult;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->e:Z

    invoke-static {}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getInstance()Lcom/alipay/mobile/common/helper/UserInfoHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getUserInfo(Lcom/alipay/mobile/framework/MicroApplicationContext;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->a()Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->a(Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeInfoResult;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->b(Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->c(Z)V

    return-void
.end method

.method public final b(Z)Z
    .locals 5

    const/4 v1, 0x0

    invoke-static {}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getInstance()Lcom/alipay/mobile/common/helper/UserInfoHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getUserInfo(Lcom/alipay/mobile/framework/MicroApplicationContext;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->e:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->d:Lcom/alipay/android/widgets/asset/AssetWidgetGroup;

    invoke-virtual {v2}, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    move p1, v1

    :cond_0
    :goto_0
    return p1

    :cond_1
    iget-object v2, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeInfoResult;

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->a(Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeInfoResult;Z)V

    move p1, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->a()Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->a(Ljava/lang/String;)Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeInfoResult;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "get cache = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v2, v1}, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->a(Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeInfoResult;Z)V

    move p1, v1

    goto :goto_0
.end method

.method public final c(Z)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->b:Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;

    invoke-virtual {v0, p1}, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;->setShowProgressDialog(Z)V

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->b:Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;->start([Ljava/lang/Object;)V

    return-void
.end method
