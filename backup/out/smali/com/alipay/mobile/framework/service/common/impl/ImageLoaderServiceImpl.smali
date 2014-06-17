.class public Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl;
.super Lcom/alipay/mobile/framework/service/common/ImageLoaderService;


# instance fields
.field private a:Lcom/alipay/mobile/common/image/ImageLoader;

.field private b:Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl$ImageStrategy;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/ImageLoaderService;-><init>()V

    new-instance v0, Lcom/alipay/mobile/common/transport/http/HttpManager;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transport/http/HttpManager;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/alipay/mobile/common/image/ImageLoader;

    invoke-static {}, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;->getInstance()Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;->getInstance()Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;

    move-result-object v3

    invoke-static {}, Lcom/alipay/mobile/common/task/TaskManager;->getInstance()Lcom/alipay/mobile/common/task/TaskManager;

    move-result-object v4

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/alipay/mobile/common/image/ImageLoader;-><init>(Lcom/alipay/mobile/common/transport/http/HttpManager;Lcom/alipay/mobile/common/cache/disk/DiskCache;Lcom/alipay/mobile/common/cache/mem/MemCache;Lcom/alipay/mobile/common/task/TaskManager;)V

    iput-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl;->a:Lcom/alipay/mobile/common/image/ImageLoader;

    new-instance v0, Lcom/alipay/mobile/framework/service/common/impl/DefaultImageStrategy;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/common/impl/DefaultImageStrategy;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl;->b:Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl$ImageStrategy;

    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl;->a:Lcom/alipay/mobile/common/image/ImageLoader;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/image/ImageLoader;->cancel(Ljava/lang/String;Lcom/alipay/mobile/common/image/ImageLoaderListener;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public startLoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;II)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl;->startLoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;IILcom/alipay/mobile/common/image/ImageCacheListener;)V

    return-void
.end method

.method public startLoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;IILcom/alipay/mobile/common/image/ImageCacheListener;)V
    .locals 8

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl;->b:Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl$ImageStrategy;

    invoke-interface {v0, p3, p4}, Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl$ImageStrategy;->loadAssetImage(Ljava/lang/String;Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl;->b:Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl$ImageStrategy;

    invoke-interface {v0, p3, p5, p6}, Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl$ImageStrategy;->preferImageUrl(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl$1;

    invoke-direct {v4, p0, p4, p3}, Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl$1;-><init>(Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl;Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl;->a:Lcom/alipay/mobile/common/image/ImageLoader;

    move-object v1, p1

    move-object v2, p2

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/common/image/ImageLoader;->startLoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/image/ImageLoaderListener;IILcom/alipay/mobile/common/image/ImageCacheListener;)V

    goto :goto_0
.end method
