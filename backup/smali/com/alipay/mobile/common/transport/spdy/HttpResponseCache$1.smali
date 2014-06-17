.class Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/common/transport/spdy/OkResponseCache;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$1;->this$0:Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$1;->this$0:Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;->get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;

    move-result-object v0

    return-object v0
.end method

.method public maybeRemove(Ljava/lang/String;Ljava/net/URI;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$1;->this$0:Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;

    #calls: Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;->a(Ljava/lang/String;Ljava/net/URI;)Z
    invoke-static {v0, p1, p2}, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;->access$000(Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;Ljava/lang/String;Ljava/net/URI;)Z

    return-void
.end method

.method public put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$1;->this$0:Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;->put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;

    move-result-object v0

    return-object v0
.end method

.method public trackConditionalCacheHit()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$1;->this$0:Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;

    #calls: Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;->a()V
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;->access$200(Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;)V

    return-void
.end method

.method public trackResponse(Lcom/alipay/mobile/common/transport/spdy/ResponseSource;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$1;->this$0:Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;

    #calls: Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;->a(Lcom/alipay/mobile/common/transport/spdy/ResponseSource;)V
    invoke-static {v0, p1}, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;->access$300(Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;Lcom/alipay/mobile/common/transport/spdy/ResponseSource;)V

    return-void
.end method

.method public update(Ljava/net/CacheResponse;Ljava/net/HttpURLConnection;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$1;->this$0:Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;

    invoke-static {v0, p1, p2}, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;->access$100(Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;Ljava/net/CacheResponse;Ljava/net/HttpURLConnection;)V

    return-void
.end method
