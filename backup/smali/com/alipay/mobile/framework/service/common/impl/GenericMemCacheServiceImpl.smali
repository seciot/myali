.class public Lcom/alipay/mobile/framework/service/common/impl/GenericMemCacheServiceImpl;
.super Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;


# instance fields
.field private a:Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/common/impl/GenericMemCacheServiceImpl;->a:Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/GenericMemCacheServiceImpl;->a:Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/GenericMemCacheServiceImpl;->a:Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/GenericMemCacheServiceImpl;->a:Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeByGroup(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/GenericMemCacheServiceImpl;->a:Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;->removeByGroup(Ljava/lang/String;)V

    return-void
.end method
