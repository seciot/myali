.class public Lcom/alipay/mobile/framework/service/common/impl/DiskCacheServiceImpl;
.super Lcom/alipay/mobile/framework/service/common/DiskCacheService;


# instance fields
.field private a:Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/DiskCacheService;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/common/impl/DiskCacheServiceImpl;->a:Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/DiskCacheServiceImpl;->a:Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;->close()V

    return-void
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/DiskCacheServiceImpl;->a:Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;->get(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getDirectory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/DiskCacheServiceImpl;->a:Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;->getDirectory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxsize()J
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/DiskCacheServiceImpl;->a:Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;->getMaxsize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSize()J
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/DiskCacheServiceImpl;->a:Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public open()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/DiskCacheServiceImpl;->a:Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;->open()V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJJLjava/lang/String;)V
    .locals 10

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/DiskCacheServiceImpl;->a:Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJJLjava/lang/String;)V

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/DiskCacheServiceImpl;->a:Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public removeByGroup(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/DiskCacheServiceImpl;->a:Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;->removeByGroup(Ljava/lang/String;)V

    return-void
.end method
