.class public Lcom/alipay/android/widgets/asset/utils/BindCardProcessor;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private c:Lcom/alipay/mobile/framework/service/common/SchemeService;

.field private d:Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;

.field private e:Lcom/alipay/mobile/framework/service/ext/security/AuthService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "BANKCARD_ADD_LOGIN_INTRO_ENABLE"

    sput-object v0, Lcom/alipay/android/widgets/asset/utils/BindCardProcessor;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/widgets/asset/utils/BindCardProcessor;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/utils/BindCardProcessor;->c:Lcom/alipay/mobile/framework/service/common/SchemeService;

    const-class v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/utils/BindCardProcessor;->e:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-static {}, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->a()Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/utils/BindCardProcessor;->d:Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    const/4 v1, 0x0

    const-string/jumbo v0, "true"

    sget-object v2, Lcom/alipay/android/widgets/asset/utils/BindCardProcessor;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/base/config/SwitchConfigUtils;->getConfigValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-class v2, Lcom/alipay/android/widgets/asset/utils/BindCardProcessor;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onReceive---openwap\uff0cSwitchConfig\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",isLogin="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/widgets/asset/utils/BindCardProcessor;->e:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/utils/BindCardProcessor;->e:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/utils/BindCardProcessor;->e:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/alipay/android/widgets/asset/utils/BindCardProcessor;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "LastScheme():"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/android/widgets/asset/utils/BindCardProcessor;->c:Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/service/common/SchemeService;->getLastScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/widgets/asset/utils/BindCardProcessor;->c:Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/common/SchemeService;->getLastScheme()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/common/misc/ExtStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isBindCard()Z

    move-result v3

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/utils/BindCardProcessor;->d:Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-class v4, Lcom/alipay/android/widgets/asset/utils/BindCardProcessor;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onReceive-cacheOpendWapFlag"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-object v4, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->b:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez v3, :cond_3

    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "isIntroEnabled"

    const-string/jumbo v4, "true"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "source"

    const-string/jumbo v4, "login"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v3, p0, Lcom/alipay/android/widgets/asset/utils/BindCardProcessor;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    :cond_2
    const-class v3, Lcom/alipay/android/widgets/asset/utils/BindCardProcessor;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onReceive-TopRunningApp"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string/jumbo v3, "09999983"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-string/jumbo v3, "20000004"

    const-string/jumbo v4, "09999983"

    invoke-interface {v1, v3, v4, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/utils/BindCardProcessor;->d:Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v3}, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-class v0, Lcom/alipay/android/widgets/asset/utils/BindCardProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto/16 :goto_1
.end method
