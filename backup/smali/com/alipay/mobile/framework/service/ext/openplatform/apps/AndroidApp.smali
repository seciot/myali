.class public Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;
.super Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
.source "AndroidApp.java"

# interfaces
.implements Lcom/alipay/mobile/common/transport/TransportCallback;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Lcom/alipay/mobile/common/apkutil/AppInfoData;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;->d:Z

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "apps"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;->a:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;->b:Ljava/lang/String;

    .line 57
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public autoUpgradeApp()V
    .locals 4

    .prologue
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-tmp.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;->getDownloadService()Lcom/alipay/mobile/framework/service/common/DownloadService;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, p0}, Lcom/alipay/mobile/framework/service/common/DownloadService;->addDownload(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/alipay/mobile/common/transport/TransportCallback;)Ljava/util/concurrent/Future;

    .line 216
    return-void
.end method

.method public downloadApp()V
    .locals 4

    .prologue
    .line 61
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/download/ExternalDownloadManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/download/ExternalDownloadManager;

    .line 67
    new-instance v2, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;

    invoke-direct {v2}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;-><init>()V

    .line 68
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;->getAppDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->setDescription(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->setTitle(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->setDownloadUrl(Ljava/lang/String;)V

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;->getAppVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ".apk"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->setFileName(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;->isNeedAutoUpgrade()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->setShowRunningNotification(Z)V

    .line 73
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->setAppId(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0, v2, p0}, Lcom/alipay/mobile/framework/service/ext/download/ExternalDownloadManager;->addDownload(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;)V

    .line 75
    return-void

    .line 72
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInstalledPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;->a:Ljava/lang/String;

    return-object v0
.end method

.method public varargs installApp([Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 107
    iput-boolean v3, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;->d:Z

    .line 108
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 109
    aget-object v0, p1, v3

    .line 110
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;->uninstallApp()V

    .line 112
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ".apk"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    .line 116
    if-eqz v0, :cond_1

    .line 117
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;->onInstallComplete(Z)V

    .line 118
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;->onInstallComplete(Z)V

    goto :goto_0
.end method

.method public isDownloading()Z
    .locals 2

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    :cond_0
    const/4 v0, 0x0

    .line 228
    :goto_0
    return v0

    .line 223
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/download/ExternalDownloadManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/download/ExternalDownloadManager;

    .line 228
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/download/ExternalDownloadManager;->isDownloading(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isInstallBySystem()Z
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public isInstalled()Z
    .locals 2

    .prologue
    .line 148
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public isNeedUpgrade()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 153
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;->isInstalled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 174
    :cond_0
    :goto_0
    return v0

    .line 156
    :cond_1
    sget-object v2, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/apkutil/ApkUtil;->getApkFileInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/mobile/common/apkutil/AppInfoData;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;->c:Lcom/alipay/mobile/common/apkutil/AppInfoData;

    .line 158
    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;->c:Lcom/alipay/mobile/common/apkutil/AppInfoData;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;->c:Lcom/alipay/mobile/common/apkutil/AppInfoData;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/apkutil/AppInfoData;->getAppversionCode()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    .line 159
    goto :goto_0

    .line 161
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;->getMinSupportAppVersionCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 165
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;->c:Lcom/alipay/mobile/common/apkutil/AppInfoData;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/apkutil/AppInfoData;->getAppversionCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;->getMinSupportAppVersionCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ge v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 170
    :cond_4
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 171
    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;->c:Lcom/alipay/mobile/common/apkutil/AppInfoData;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/apkutil/AppInfoData;->getAppversion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;->getAppVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 168
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isPreInstall()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;->d:Z

    return v0
.end method

.method public launchAppWithAuthCode(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 233
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;->context:Landroid/content/Context;

    check-cast v0, Lcom/alipay/mobile/framework/AlipayApplication;

    .line 234
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 236
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 238
    if-nez p3, :cond_0

    .line 240
    :try_start_0
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 242
    :cond_0
    const-string/jumbo v1, "alipay_user_id"

    invoke-virtual {p3, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string/jumbo v1, "auth_code"

    invoke-virtual {p3, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string/jumbo v1, "app_id"

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string/jumbo v1, "version"

    const-string/jumbo v2, "1.0"

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string/jumbo v1, "alipay_client_version"

    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/info/AppInfo;->getmProductVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string/jumbo v1, "source"

    const-string/jumbo v2, "alipay_wallet"

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_1
    const-string/jumbo v1, "20000001"

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :goto_0
    return-void

    .line 251
    :catch_0
    move-exception v0

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u542f\u52a8\u5e94\u7528\u5931\u8d25:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;->showToastCenter(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCancelled(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    return-void
.end method

.method public onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 205
    return-void
.end method

.method public onPostExecute(Lcom/alipay/mobile/common/transport/Request;Lcom/alipay/mobile/common/transport/Response;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-tmp.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;->installApp([Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public onPreExecute(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    return-void
.end method

.method public onProgressUpdate(Lcom/alipay/mobile/common/transport/Request;D)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 200
    return-void
.end method

.method public preInstallApp()Z
    .locals 6

    .prologue
    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;->d:Z

    .line 90
    const/4 v0, 0x0

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 95
    :try_start_0
    sget-object v3, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "apps_preInstall"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3}, Lcom/alipay/mobile/common/utils/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 102
    :goto_0
    return v0

    .line 99
    :catch_0
    move-exception v1

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method public uninstallApp()V
    .locals 2

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 132
    :cond_0
    return-void
.end method
