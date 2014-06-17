.class Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache$1;
.super Ljava/util/LinkedHashMap;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;IFZ)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache$1;->this$0:Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache$1;->this$0:Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;

    #getter for: Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;->mSize:J
    invoke-static {v0}, Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;->access$000(Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache$1;->this$0:Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;

    #getter for: Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;->mMaxsize:J
    invoke-static {v2}, Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;->access$100(Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/PerformanceLog;->getInstance()Lcom/alipay/mobile/common/logging/PerformanceLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "LruDiskCache evict:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/PerformanceLog;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache$1;->this$0:Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/cache/disk/Entity;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/cache/disk/Entity;->getSize()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;->access$222(Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;J)J

    iget-object v1, p0, Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache$1;->this$0:Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    #calls: Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;->removeCacheFile(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;->access$300(Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
