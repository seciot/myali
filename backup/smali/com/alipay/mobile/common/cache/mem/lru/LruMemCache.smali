.class public Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;
.super Lcom/alipay/mobile/common/cache/mem/MemCache;


# static fields
.field private static a:Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;


# direct methods
.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/alipay/mobile/common/cache/mem/MemCache;-><init>()V

    new-instance v0, Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache$1;

    const/16 v1, 0xa

    const/high16 v2, 0x3f40

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache$1;-><init>(Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;IFZ)V

    iput-object v0, p0, Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;->mMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;->mGroup:Ljava/util/HashMap;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;
    .locals 2

    const-class v1, Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;->a:Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;

    invoke-direct {v0}, Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;->a:Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;

    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;->a:Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/common/cache/mem/MemCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected makeEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/common/cache/mem/Entity;
    .locals 1

    new-instance v0, Lcom/alipay/mobile/common/cache/mem/Entity;

    invoke-direct {v0, p1, p2, p3}, Lcom/alipay/mobile/common/cache/mem/Entity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public declared-synchronized put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/common/cache/mem/MemCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected recordPut(Lcom/alipay/mobile/common/cache/mem/Entity;)V
    .locals 0

    return-void
.end method

.method protected recordRemove(Lcom/alipay/mobile/common/cache/mem/Entity;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/common/cache/mem/MemCache;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
