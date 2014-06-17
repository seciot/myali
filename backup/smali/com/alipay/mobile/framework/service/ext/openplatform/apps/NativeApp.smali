.class public Lcom/alipay/mobile/framework/service/ext/openplatform/apps/NativeApp;
.super Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
.source "NativeApp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;-><init>()V

    return-void
.end method


# virtual methods
.method public autoUpgradeApp()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public downloadApp()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public getInstalledPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public varargs installApp([Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    return-void
.end method

.method public isDownloading()Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public isInstallBySystem()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public isInstalled()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public isNeedUpgrade()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public isPreInstall()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public launchAppWithAuthCode(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 74
    if-eqz p3, :cond_0

    .line 76
    const-string/jumbo v1, "param"

    invoke-static {p3}, Lcom/alipay/mobile/common/utils/BundleUtil;->deserialBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_0
    const-string/jumbo v1, "10000007"

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/NativeApp;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    const-string/jumbo v1, "sourceId"

    const-string/jumbo v2, "10000111#paiIcon"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-string/jumbo v2, "20000001"

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/NativeApp;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->getMessage()Ljava/lang/String;

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u542f\u52a8\u5e94\u7528\u5931\u8d25\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/NativeApp;->showToastCenter(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public preInstallApp()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public uninstallApp()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method
