.class public Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadIntentService;
.super Landroid/app/IntentService;
.source "ExternalDownloadIntentService.java"


# static fields
.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Future",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/alipay/mobile/framework/service/common/DownloadService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadIntentService;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    const-string/jumbo v0, "ExternalDownloadIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-static {p0}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadIntentService;->b(Ljava/lang/String;)V

    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 93
    if-eqz p0, :cond_0

    .line 94
    sget-object v0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadIntentService;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 95
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 97
    sget-object v0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadIntentService;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 159
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 160
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 161
    if-nez v0, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_0

    .line 166
    const-class v1, Lcom/alipay/mobile/framework/service/common/DownloadService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/DownloadService;

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadIntentService;->a:Lcom/alipay/mobile/framework/service/common/DownloadService;

    goto :goto_0
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 46
    const-string/jumbo v0, "command"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 49
    const-string/jumbo v0, "request"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;

    .line 51
    const-string/jumbo v0, "add"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 52
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadIntentService;->b:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->getFileName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v2, ""

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_1
    const-string/jumbo v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v2

    const-string/jumbo v5, "downloads"

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/common/info/DeviceInfo;->getExternalStoragePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "/downloads/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    move-result v7

    if-nez v7, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "path not exist but fail to create: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_3
    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;

    invoke-direct {v2, v1, v0}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;-><init>(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadIntentService;->a:Lcom/alipay/mobile/framework/service/common/DownloadService;

    invoke-virtual {v1, v3, v0, v6, v2}, Lcom/alipay/mobile/framework/service/common/DownloadService;->addDownload(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/alipay/mobile/common/transport/TransportCallback;)Ljava/util/concurrent/Future;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v1, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadIntentService;->b:Ljava/util/Map;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_4
    :goto_2
    return-void

    .line 52
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "/"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " dir exist,but not directory."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object v2, v6

    goto :goto_1

    .line 57
    :cond_7
    const-string/jumbo v0, "true"

    const-string/jumbo v3, "cancelDownloadConfirm"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 59
    const-string/jumbo v3, "downloadUrl"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 61
    if-eqz v5, :cond_4

    .line 64
    const-string/jumbo v3, "cancel"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 65
    if-nez v0, :cond_8

    .line 66
    invoke-static {v5}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadIntentService;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 68
    :cond_8
    sget-object v0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadIntentService;->b:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 69
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_4

    .line 70
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u53d6\u6d88\u4e0b\u8f7d\uff1f"

    const-string/jumbo v3, "\u662f"

    new-instance v4, Lcom/alipay/mobile/appstoreapp/download/a;

    invoke-direct {v4, p0, v5}, Lcom/alipay/mobile/appstoreapp/download/a;-><init>(Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadIntentService;Ljava/lang/String;)V

    const-string/jumbo v5, "\u5426"

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2
.end method
