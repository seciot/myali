.class public interface abstract Lcom/alipay/mobile/common/transport/spdy/OkResponseCache;
.super Ljava/lang/Object;


# virtual methods
.method public abstract get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;
.end method

.method public abstract maybeRemove(Ljava/lang/String;Ljava/net/URI;)V
.end method

.method public abstract put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;
.end method

.method public abstract trackConditionalCacheHit()V
.end method

.method public abstract trackResponse(Lcom/alipay/mobile/common/transport/spdy/ResponseSource;)V
.end method

.method public abstract update(Ljava/net/CacheResponse;Ljava/net/HttpURLConnection;)V
.end method
