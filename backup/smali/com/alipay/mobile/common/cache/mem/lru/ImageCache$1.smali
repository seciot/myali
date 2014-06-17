.class Lcom/alipay/mobile/common/cache/mem/lru/ImageCache$1;
.super Ljava/util/LinkedHashMap;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;IFZ)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/cache/mem/lru/ImageCache$1;->this$0:Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 6

    iget-object v0, p0, Lcom/alipay/mobile/common/cache/mem/lru/ImageCache$1;->this$0:Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;

    iget-wide v0, v0, Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;->mSize:J

    iget-object v2, p0, Lcom/alipay/mobile/common/cache/mem/lru/ImageCache$1;->this$0:Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;

    #calls: Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;->a()J
    invoke-static {v2}, Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;->access$000(Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/PerformanceLog;->getInstance()Lcom/alipay/mobile/common/logging/PerformanceLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ImageCache evict: key="

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/logging/PerformanceLog;->log(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/cache/mem/Entity;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/cache/mem/Entity;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/cache/mem/lru/ImageEntity;

    iget-object v1, p0, Lcom/alipay/mobile/common/cache/mem/lru/ImageCache$1;->this$0:Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;

    iget-wide v2, v1, Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;->mSize:J

    invoke-virtual {v0}, Lcom/alipay/mobile/common/cache/mem/lru/ImageEntity;->getSize()I

    move-result v0

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;->mSize:J

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
