.class public Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ExternalDownloadStatusReceiver.java"


# static fields
.field private static callbackData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadStatusReceiver;->callbackData:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static isDownloadTaskExists(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 127
    if-nez p0, :cond_0

    move v0, v1

    .line 131
    :goto_0
    return v0

    .line 130
    :cond_0
    sget-object v0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadStatusReceiver;->callbackData:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 131
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static registerCallback(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 105
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 106
    sget-object v0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadStatusReceiver;->callbackData:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    sget-object v0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadStatusReceiver;->callbackData:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    :goto_0
    sget-object v1, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadStatusReceiver;->callbackData:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_0
    return-void

    .line 108
    :cond_1
    sget-object v0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadStatusReceiver;->callbackData:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    .line 111
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method private static unRegisterCallbacks(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 94
    sget-object v0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadStatusReceiver;->callbackData:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 34
    const-string/jumbo v0, "downloadUrl"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 36
    const/4 v0, 0x0

    .line 37
    if-eqz v2, :cond_9

    .line 38
    sget-object v0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadStatusReceiver;->callbackData:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    .line 40
    :goto_0
    if-nez v1, :cond_1

    .line 91
    :cond_0
    :goto_1
    return-void

    .line 43
    :cond_1
    const-string/jumbo v0, "downloadRequest"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;

    .line 46
    const-string/jumbo v3, "status"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 47
    const-string/jumbo v4, "prepare"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 48
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;

    .line 49
    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;->onPrepare(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;)V

    goto :goto_2

    .line 54
    :cond_2
    const-string/jumbo v4, "downloading"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 55
    const-string/jumbo v2, "progress"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 57
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;

    .line 58
    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;->onProgress(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;I)V

    goto :goto_3

    .line 63
    :cond_3
    const-string/jumbo v4, "finish"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 64
    const-string/jumbo v3, "filePath"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 66
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;

    .line 67
    invoke-interface {v1, v0, v3}, Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;->onFinish(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;Ljava/lang/String;)V

    goto :goto_4

    .line 69
    :cond_4
    invoke-static {v2}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadStatusReceiver;->unRegisterCallbacks(Ljava/lang/String;)V

    goto :goto_1

    .line 73
    :cond_5
    const-string/jumbo v4, "fail"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 74
    const-string/jumbo v3, "errorMsg"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 76
    const-string/jumbo v4, "errorCode"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 78
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;

    .line 79
    invoke-interface {v1, v0, v4, v3}, Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;->onFailed(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;ILjava/lang/String;)V

    goto :goto_5

    .line 81
    :cond_6
    invoke-static {v2}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadStatusReceiver;->unRegisterCallbacks(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 85
    :cond_7
    const-string/jumbo v4, "cancel"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;

    .line 87
    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;->onCancel(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;)V

    goto :goto_6

    .line 89
    :cond_8
    invoke-static {v2}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadStatusReceiver;->unRegisterCallbacks(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    move-object v1, v0

    goto/16 :goto_0
.end method
