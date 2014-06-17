.class public final Lcom/alipay/mobile/common/transport/spdy/internal/http/OkResponseCacheAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/common/transport/spdy/OkResponseCache;


# instance fields
.field private final a:Ljava/net/ResponseCache;


# direct methods
.method public constructor <init>(Ljava/net/ResponseCache;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/OkResponseCacheAdapter;->a:Ljava/net/ResponseCache;

    return-void
.end method


# virtual methods
.method public final get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/OkResponseCacheAdapter;->a:Ljava/net/ResponseCache;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/ResponseCache;->get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;

    move-result-object v0

    return-object v0
.end method

.method public final maybeRemove(Ljava/lang/String;Ljava/net/URI;)V
    .locals 0

    return-void
.end method

.method public final put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/OkResponseCacheAdapter;->a:Ljava/net/ResponseCache;

    invoke-virtual {v0, p1, p2}, Ljava/net/ResponseCache;->put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;

    move-result-object v0

    return-object v0
.end method

.method public final trackConditionalCacheHit()V
    .locals 0

    return-void
.end method

.method public final trackResponse(Lcom/alipay/mobile/common/transport/spdy/ResponseSource;)V
    .locals 0

    return-void
.end method

.method public final update(Ljava/net/CacheResponse;Ljava/net/HttpURLConnection;)V
    .locals 0

    return-void
.end method
