.class Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$1;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$1;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$1;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->i:Ljava/io/Writer;
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->access$000(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;)Ljava/io/Writer;

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-object v3

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$1;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;

    #calls: Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->f()V
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->access$100(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$1;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;

    #calls: Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->d()Z
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->access$200(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$1;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;

    #calls: Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->c()V
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->access$300(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$1;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;

    const/4 v2, 0x0

    #setter for: Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->k:I
    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->access$402(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;I)I

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
