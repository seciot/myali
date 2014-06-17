.class public Lcom/alipay/android/phone/home/app/HomeMoreApp;
.super Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
.source "HomeMoreApp.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/alipay/android/phone/home/app/HomeMoreApp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/alipay/android/phone/home/app/HomeMoreApp;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/home/app/HomeMoreApp;->a:Ljava/lang/String;

    .line 34
    new-instance v0, Lcom/alipay/android/phone/home/app/HomeMoreApp;

    invoke-direct {v0}, Lcom/alipay/android/phone/home/app/HomeMoreApp;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/home/app/HomeMoreApp;->b:Lcom/alipay/android/phone/home/app/HomeMoreApp;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;-><init>()V

    .line 37
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/home/app/HomeMoreApp;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    .line 38
    iget-object v0, p0, Lcom/alipay/android/phone/home/app/HomeMoreApp;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const-string/jumbo v1, "20000081"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setAppId(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/alipay/android/phone/home/app/HomeMoreApp;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const-string/jumbo v1, "\u66f4\u591a"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setName(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/alipay/android/phone/home/app/HomeMoreApp;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const-string/jumbo v1, "\u66f4\u591a\u652f\u4ed8\u5b9d\u5e94\u7528"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setDesc(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/alipay/android/phone/home/app/HomeMoreApp;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const-string/jumbo v1, "nativeApp"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setInstallerType(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/alipay/android/phone/home/app/HomeMoreApp;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setAlipayApp(Z)V

    .line 43
    invoke-direct {p0}, Lcom/alipay/android/phone/home/app/HomeMoreApp;->b()V

    .line 44
    return-void
.end method

.method public static a()Lcom/alipay/android/phone/home/app/HomeMoreApp;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/alipay/android/phone/home/app/HomeMoreApp;->b:Lcom/alipay/android/phone/home/app/HomeMoreApp;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 48
    invoke-static {}, Lcom/alipay/android/phone/home/app/HomeMoreApp;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/alipay/android/phone/home/app/HomeMoreApp;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const-string/jumbo v1, "new_for_more_app"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setTipsType(Ljava/lang/String;)V

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/app/HomeMoreApp;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setTipsType(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static c()Z
    .locals 3

    .prologue
    .line 78
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "NEW_FOR_MORE_APP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 81
    const-string/jumbo v1, "NEW_FOR_MORE_APP"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public authAndLaunch(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 59
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 62
    :try_start_0
    const-string/jumbo v1, "20000001"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v1

    .line 63
    if-nez v1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    const-class v2, Lcom/alipay/android/phone/home/ui/AppsCenterActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lcom/alipay/android/phone/home/app/HomeMoreApp;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "NEW_FOR_MORE_APP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "NEW_FOR_MORE_APP"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 69
    invoke-direct {p0}, Lcom/alipay/android/phone/home/app/HomeMoreApp;->b()V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    sget-object v1, Lcom/alipay/android/phone/home/app/HomeMoreApp;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public autoUpgradeApp()V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

.method public downloadApp()V
    .locals 2

    .prologue
    .line 142
    sget-object v0, Lcom/alipay/android/phone/home/app/HomeMoreApp;->a:Ljava/lang/String;

    const-string/jumbo v1, "\u672c\u5730\u5e94\u7528\uff0c\u5df2\u7ecf\u5185\u7f6e\uff0c\u65e0\u9700\u4e0b\u8f7d"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 106
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/openplatform/common/R$drawable;->app_more:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 108
    return-object v0
.end method

.method public getInstalledPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    return-object v0
.end method

.method public iconHasLoaded()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public varargs installApp([Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 147
    sget-object v0, Lcom/alipay/android/phone/home/app/HomeMoreApp;->a:Ljava/lang/String;

    const-string/jumbo v1, "\u672c\u5730\u5e94\u7528\uff0c\u5df2\u7ecf\u5185\u7f6e\uff0c\u65e0\u9700\u5b89\u88c5"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public isAlipayApp()Z
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x1

    return v0
.end method

.method public isDisplay()Z
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x1

    return v0
.end method

.method public isDownloading()Z
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public isInstallBySystem()Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public isInstalled()Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method public isNeedAuth()Z
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public isNeedUpgrade()Z
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public isOffline()Z
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public isPreInstall()Z
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public launchAppWithAuthCode(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 182
    return-void
.end method

.method public preInstallApp()Z
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public uninstallApp()V
    .locals 2

    .prologue
    .line 152
    sget-object v0, Lcom/alipay/android/phone/home/app/HomeMoreApp;->a:Ljava/lang/String;

    const-string/jumbo v1, "\u672c\u5730\u5e94\u7528\uff0c\u65e0\u6cd5\u5378\u8f7d"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-void
.end method
