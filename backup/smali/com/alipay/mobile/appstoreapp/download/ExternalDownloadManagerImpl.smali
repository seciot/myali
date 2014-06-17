.class public Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadManagerImpl;
.super Lcom/alipay/mobile/framework/service/ext/download/ExternalDownloadManager;
.source "ExternalDownloadManagerImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/download/ExternalDownloadManager;-><init>()V

    return-void
.end method


# virtual methods
.method public addDownload(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 28
    if-eqz p1, :cond_1

    .line 29
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 32
    :cond_0
    const/16 v0, 0x270f

    const-string/jumbo v1, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-interface {p2, p1, v0, v1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;->onFailed(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;ILjava/lang/String;)V

    .line 48
    :cond_1
    :goto_0
    return-void

    .line 36
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 37
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadIntentService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    const-string/jumbo v2, "command"

    const-string/jumbo v3, "add"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    const-string/jumbo v2, "request"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 42
    if-eqz p2, :cond_3

    .line 43
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadStatusReceiver;->registerCallback(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;)V

    .line 46
    :cond_3
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/AlipayApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public cancel(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 62
    if-eqz p1, :cond_0

    .line 63
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 64
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadIntentService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    const-string/jumbo v2, "command"

    const-string/jumbo v3, "cancel"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string/jumbo v2, "downloadUrl"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/AlipayApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 71
    :cond_0
    return-void
.end method

.method public isDownloading(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 85
    invoke-static {p1}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadStatusReceiver;->isDownloadTaskExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    return-void
.end method
