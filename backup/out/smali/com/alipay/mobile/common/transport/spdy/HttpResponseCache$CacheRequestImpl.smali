.class final Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$CacheRequestImpl;
.super Ljava/net/CacheRequest;


# instance fields
.field private final a:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;

.field private b:Ljava/io/OutputStream;

.field private c:Z

.field private d:Ljava/io/OutputStream;

.field final synthetic this$0:Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;)V
    .locals 2

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$CacheRequestImpl;->this$0:Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;

    invoke-direct {p0}, Ljava/net/CacheRequest;-><init>()V

    iput-object p2, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$CacheRequestImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$CacheRequestImpl;->b:Ljava/io/OutputStream;

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$CacheRequestImpl$1;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$CacheRequestImpl;->b:Ljava/io/OutputStream;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$CacheRequestImpl$1;-><init>(Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$CacheRequestImpl;Ljava/io/OutputStream;Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$CacheRequestImpl;->d:Ljava/io/OutputStream;

    return-void
.end method

.method static synthetic access$700(Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$CacheRequestImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$CacheRequestImpl;->c:Z

    return v0
.end method

.method static synthetic access$702(Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$CacheRequestImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$CacheRequestImpl;->c:Z

    return p1
.end method


# virtual methods
.method public final abort()V
    .locals 2

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$CacheRequestImpl;->this$0:Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$CacheRequestImpl;->c:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$CacheRequestImpl;->c:Z

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$CacheRequestImpl;->this$0:Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;->access$908(Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;)I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$CacheRequestImpl;->b:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$CacheRequestImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;->abort()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final getBody()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$CacheRequestImpl;->d:Ljava/io/OutputStream;

    return-object v0
.end method
