.class public Lcom/alipay/mobile/framework/service/common/impl/CacheManagerServiceImpl;
.super Lcom/alipay/mobile/framework/service/common/CacheManagerService;


# instance fields
.field private a:Lcom/alipay/mobile/framework/service/common/DiskCacheService;

.field private b:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

.field private c:Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;

.field private d:Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/CacheManagerService;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;->getInstance()Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/CacheManagerServiceImpl;->c:Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;

    invoke-static {}, Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;->getInstance()Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/CacheManagerServiceImpl;->d:Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/impl/CacheManagerServiceImpl;->a()V

    return-void
.end method

.method private declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/CacheManagerServiceImpl;->a:Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/framework/service/common/impl/DiskCacheServiceImpl;

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/CacheManagerServiceImpl;->c:Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/framework/service/common/impl/DiskCacheServiceImpl;-><init>(Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/CacheManagerServiceImpl;->a:Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/CacheManagerServiceImpl;->b:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    if-nez v0, :cond_1

    new-instance v0, Lcom/alipay/mobile/framework/service/common/impl/GenericMemCacheServiceImpl;

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/CacheManagerServiceImpl;->d:Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/framework/service/common/impl/GenericMemCacheServiceImpl;-><init>(Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/CacheManagerServiceImpl;->b:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/CacheManagerServiceImpl;->a:Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/common/DiskCacheService;->close()V

    return-void
.end method

.method public getDiskCacheService()Lcom/alipay/mobile/framework/service/common/DiskCacheService;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/CacheManagerServiceImpl;->a:Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    return-object v0
.end method

.method public getMemCacheService()Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/CacheManagerServiceImpl;->b:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    return-object v0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/CacheManagerServiceImpl;->b:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/CacheManagerServiceImpl;->a:Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/framework/service/common/DiskCacheService;->get(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
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

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/CacheManagerServiceImpl;->a:Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/common/DiskCacheService;->open()V

    return-void
.end method

.method public put2Cache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[BJJLjava/lang/String;)V
    .locals 10

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/CacheManagerServiceImpl;->b:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/CacheManagerServiceImpl;->a:Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-wide/from16 v5, p6

    move-wide/from16 v7, p8

    move-object/from16 v9, p10

    invoke-virtual/range {v0 .. v9}, Lcom/alipay/mobile/framework/service/common/DiskCacheService;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJJLjava/lang/String;)V

    return-void
.end method
