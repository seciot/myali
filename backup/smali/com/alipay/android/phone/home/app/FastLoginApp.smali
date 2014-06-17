.class public Lcom/alipay/android/phone/home/app/FastLoginApp;
.super Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
.source "FastLoginApp.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/alipay/android/phone/home/app/FastLoginApp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/alipay/android/phone/home/app/FastLoginApp;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/home/app/FastLoginApp;->a:Ljava/lang/String;

    .line 32
    new-instance v0, Lcom/alipay/android/phone/home/app/FastLoginApp;

    invoke-direct {v0}, Lcom/alipay/android/phone/home/app/FastLoginApp;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/home/app/FastLoginApp;->b:Lcom/alipay/android/phone/home/app/FastLoginApp;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;-><init>()V

    .line 35
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/home/app/FastLoginApp;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    .line 36
    iget-object v0, p0, Lcom/alipay/android/phone/home/app/FastLoginApp;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const-string/jumbo v1, "10000111"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setAppId(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/alipay/android/phone/home/app/FastLoginApp;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const-string/jumbo v1, "\u5176\u5b83"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setName(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/alipay/android/phone/home/app/FastLoginApp;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const-string/jumbo v1, "\u4e00\u952e\u767b\u5f55\u5e94\u7528\u5217\u8868"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setDesc(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/alipay/android/phone/home/app/FastLoginApp;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const-string/jumbo v1, "nativeApp"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setInstallerType(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/alipay/android/phone/home/app/FastLoginApp;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setAlipayApp(Z)V

    .line 41
    invoke-direct {p0}, Lcom/alipay/android/phone/home/app/FastLoginApp;->b()V

    .line 42
    return-void
.end method

.method public static a()Lcom/alipay/android/phone/home/app/FastLoginApp;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/alipay/android/phone/home/app/FastLoginApp;->b:Lcom/alipay/android/phone/home/app/FastLoginApp;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 46
    invoke-static {}, Lcom/alipay/android/phone/home/app/FastLoginApp;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/alipay/android/phone/home/app/FastLoginApp;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const-string/jumbo v1, "new_for_more_app"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setTipsType(Ljava/lang/String;)V

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/app/FastLoginApp;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setTipsType(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static c()Z
    .locals 3

    .prologue
    .line 57
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "NEW_FOR_THIRD_APP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 60
    const-string/jumbo v1, "NEW_FOR_THIRD_APP"

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
    .line 75
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 78
    if-nez p1, :cond_0

    .line 79
    :try_start_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 80
    :cond_0
    const-string/jumbo v1, "TARGET"

    const-string/jumbo v2, "FASTLOGINAPPS"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string/jumbo v1, "20000002"

    const-string/jumbo v2, "10000111"

    invoke-interface {v0, v1, v2, p1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 83
    invoke-static {}, Lcom/alipay/android/phone/home/app/FastLoginApp;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "NEW_FOR_THIRD_APP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "NEW_FOR_THIRD_APP"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 86
    invoke-direct {p0}, Lcom/alipay/android/phone/home/app/FastLoginApp;->b()V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :cond_1
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    sget-object v1, Lcom/alipay/android/phone/home/app/FastLoginApp;->a:Ljava/lang/String;

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
    sget-object v0, Lcom/alipay/android/phone/home/app/FastLoginApp;->a:Ljava/lang/String;

    const-string/jumbo v1, "\u672c\u5730\u5e94\u7528\uff0c\u5df2\u7ecf\u5185\u7f6e\uff0c\u65e0\u9700\u4e0b\u8f7d"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 105
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/openplatform/common/R$drawable;->app_fastlogin:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 107
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
    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public varargs installApp([Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 147
    sget-object v0, Lcom/alipay/android/phone/home/app/FastLoginApp;->a:Ljava/lang/String;

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
    .line 95
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
    sget-object v0, Lcom/alipay/android/phone/home/app/FastLoginApp;->a:Ljava/lang/String;

    const-string/jumbo v1, "\u672c\u5730\u5e94\u7528\uff0c\u65e0\u6cd5\u5378\u8f7d"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-void
.end method
