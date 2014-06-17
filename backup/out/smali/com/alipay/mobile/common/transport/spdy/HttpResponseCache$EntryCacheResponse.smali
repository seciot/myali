.class Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$EntryCacheResponse;
.super Ljava/net/CacheResponse;


# instance fields
.field private final a:Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;

.field private final b:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Snapshot;

.field private final c:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Snapshot;)V
    .locals 1

    invoke-direct {p0}, Ljava/net/CacheResponse;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$EntryCacheResponse;->a:Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;

    iput-object p2, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$EntryCacheResponse;->b:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Snapshot;

    invoke-static {p2}, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;->access$1000(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Snapshot;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$EntryCacheResponse;->c:Ljava/io/InputStream;

    return-void
.end method

.method static synthetic access$500(Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$EntryCacheResponse;)Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Snapshot;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$EntryCacheResponse;->b:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Snapshot;

    return-object v0
.end method


# virtual methods
.method public getBody()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$EntryCacheResponse;->c:Ljava/io/InputStream;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$EntryCacheResponse;->a:Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->d:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->access$1100(Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;)Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->toMultimap(Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
