.class public Lcom/alipay/mobile/framework/service/common/impl/DownloadServiceImpl;
.super Lcom/alipay/mobile/framework/service/common/DownloadService;


# instance fields
.field private a:Lcom/alipay/mobile/common/transport/download/DownloadManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/DownloadService;-><init>()V

    new-instance v0, Lcom/alipay/mobile/common/transport/download/DownloadManager;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transport/download/DownloadManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/DownloadServiceImpl;->a:Lcom/alipay/mobile/common/transport/download/DownloadManager;

    return-void
.end method


# virtual methods
.method public addDownload(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/alipay/mobile/common/transport/TransportCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/Header;",
            ">;",
            "Lcom/alipay/mobile/common/transport/TransportCallback;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/DownloadServiceImpl;->a:Lcom/alipay/mobile/common/transport/download/DownloadManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/common/transport/download/DownloadManager;->addDownload(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/alipay/mobile/common/transport/TransportCallback;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/DownloadServiceImpl;->a:Lcom/alipay/mobile/common/transport/download/DownloadManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/download/DownloadManager;->close()V

    return-void
.end method
