.class public Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;
.super Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
.source "InnerApp.java"


# instance fields
.field a:Ljava/lang/Runnable;

.field private final b:Ljava/lang/String;

.field private c:Lcom/alipay/mobile/common/apkutil/AppInfoData;

.field private d:Z

.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->d:Z

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->e:Landroid/os/Handler;

    .line 250
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/d;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/d;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->a:Ljava/lang/Runnable;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->context:Landroid/content/Context;

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

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->b:Ljava/lang/String;

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->e:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".jar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 223
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 224
    if-eqz p3, :cond_0

    .line 225
    const-string/jumbo v1, "param"

    invoke-static {p3}, Lcom/alipay/mobile/common/utils/BundleUtil;->deserialBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_0
    const-string/jumbo v1, "10000007"

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 228
    const-string/jumbo v1, "sourceId"

    const-string/jumbo v2, "10000111#paiIcon"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 232
    :try_start_0
    const-string/jumbo v1, "alipay_user_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string/jumbo v1, "auth_code"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string/jumbo v1, "app_id"

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string/jumbo v1, "version"

    const-string/jumbo v2, "1.0"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string/jumbo v1, "alipay_client_version"

    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/info/AppInfo;->getmProductVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string/jumbo v1, "source"

    const-string/jumbo v2, "alipay_wallet"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-string/jumbo v2, "20000001"

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->getMessage()Ljava/lang/String;

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u542f\u52a8\u5e94\u7528\u5931\u8d25\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->showToastCenter(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public autoUpgradeApp()V
    .locals 0

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->downloadApp()V

    .line 115
    return-void
.end method

.method public downloadApp()V
    .locals 4

    .prologue
    .line 124
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

    .line 130
    new-instance v2, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;

    invoke-direct {v2}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;-><init>()V

    .line 131
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->getAppDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->setDescription(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->setTitle(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->setDownloadUrl(Ljava/lang/String;)V

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->getAppVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ".jar"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->setFileName(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->isNeedAutoUpgrade()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->setShowRunningNotification(Z)V

    .line 136
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->setAppId(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0, v2, p0}, Lcom/alipay/mobile/framework/service/ext/download/ExternalDownloadManager;->addDownload(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;)V

    .line 138
    return-void

    .line 135
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInstalledPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->b:Ljava/lang/String;

    return-object v0
.end method

.method public varargs installApp([Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 85
    iput-boolean v3, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->d:Z

    .line 86
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 87
    aget-object v0, p1, v3

    .line 88
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->uninstallApp()V

    .line 90
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ".jar"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    .line 94
    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->a:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 96
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->onInstallComplete(Z)V

    goto :goto_0
.end method

.method public isDownloading()Z
    .locals 2

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    :cond_0
    const/4 v0, 0x0

    .line 184
    :goto_0
    return v0

    .line 179
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

    .line 184
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/download/ExternalDownloadManager;->isDownloading(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isInstallBySystem()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public isInstalled()Z
    .locals 2

    .prologue
    .line 142
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const/4 v0, 0x1

    .line 145
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedUpgrade()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 151
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->isInstalled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 170
    :cond_0
    :goto_0
    return v0

    .line 154
    :cond_1
    sget-object v2, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/apkutil/ApkUtil;->getApkFileInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/mobile/common/apkutil/AppInfoData;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->c:Lcom/alipay/mobile/common/apkutil/AppInfoData;

    .line 156
    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->c:Lcom/alipay/mobile/common/apkutil/AppInfoData;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->c:Lcom/alipay/mobile/common/apkutil/AppInfoData;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/apkutil/AppInfoData;->getAppversionCode()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    .line 157
    goto :goto_0

    .line 159
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->getMinSupportAppVersionCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 162
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->c:Lcom/alipay/mobile/common/apkutil/AppInfoData;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/apkutil/AppInfoData;->getAppversionCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->getMinSupportAppVersionCode()Ljava/lang/String;

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

    .line 167
    :cond_4
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 168
    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->c:Lcom/alipay/mobile/common/apkutil/AppInfoData;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/apkutil/AppInfoData;->getAppversion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->getAppVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 165
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isPreInstall()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->d:Z

    return v0
.end method

.method public launchAppWithAuthCode(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 194
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findDescriptionById(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    move-result-object v0

    .line 196
    if-nez v0, :cond_0

    .line 197
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/b;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public preInstallApp()Z
    .locals 6

    .prologue
    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->d:Z

    .line 61
    const/4 v0, 0x0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".jar"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 66
    :try_start_0
    sget-object v3, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->context:Landroid/content/Context;

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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 75
    :goto_0
    return v0

    .line 70
    :catch_0
    move-exception v1

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 72
    :catch_1
    move-exception v1

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method public uninstallApp()V
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->a()Ljava/lang/String;

    move-result-object v0

    .line 107
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 110
    :cond_0
    return-void
.end method
