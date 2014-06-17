.class Lcom/alipay/mobile/common/cache/disk/DiskCache$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/cache/disk/DiskCache;

.field final synthetic val$data:[B

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/cache/disk/DiskCache;Ljava/lang/String;[BLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache$1;->this$0:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    iput-object p2, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache$1;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache$1;->val$data:[B

    iput-object p4, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache$1;->this$0:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->getDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache$1;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache$1;->this$0:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    iget-object v2, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache$1;->val$data:[B

    invoke-static {v1, v0, v2}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->access$000(Lcom/alipay/mobile/common/cache/disk/DiskCache;Ljava/lang/String;[B)V

    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache$1;->this$0:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    #calls: Lcom/alipay/mobile/common/cache/disk/DiskCache;->a()V
    invoke-static {v0}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->access$100(Lcom/alipay/mobile/common/cache/disk/DiskCache;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/alipay/mobile/common/cache/disk/CacheException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/PerformanceLog;->getInstance()Lcom/alipay/mobile/common/logging/PerformanceLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "diskCache finish put:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache$1;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/PerformanceLog;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "fail to put cache:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/PerformanceLog;->getInstance()Lcom/alipay/mobile/common/logging/PerformanceLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "diskCache finish put:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache$1;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/PerformanceLog;->log(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/PerformanceLog;->getInstance()Lcom/alipay/mobile/common/logging/PerformanceLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "diskCache finish put:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache$1;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/PerformanceLog;->log(Ljava/lang/String;)V

    throw v0
.end method
