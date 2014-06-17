.class public final Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsEngine;
.super Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;


# instance fields
.field private a:Ljavax/net/ssl/SSLSocket;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;Lcom/alipay/mobile/common/transport/spdy/internal/http/Policy;Ljava/lang/String;Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;Lcom/alipay/mobile/common/transport/spdy/Connection;Lcom/alipay/mobile/common/transport/spdy/internal/http/RetryableOutputStream;)V
    .locals 1

    invoke-direct/range {p0 .. p6}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;-><init>(Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;Lcom/alipay/mobile/common/transport/spdy/internal/http/Policy;Ljava/lang/String;Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;Lcom/alipay/mobile/common/transport/spdy/Connection;Lcom/alipay/mobile/common/transport/spdy/internal/http/RetryableOutputStream;)V

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Lcom/alipay/mobile/common/transport/spdy/Connection;->getSocket()Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    :goto_0
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsEngine;->a:Ljavax/net/ssl/SSLSocket;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final acceptCacheResponseType(Ljava/net/CacheResponse;)Z
    .locals 1

    instance-of v0, p1, Ljava/net/SecureCacheResponse;

    return v0
.end method

.method protected final connected(Lcom/alipay/mobile/common/transport/spdy/Connection;)V
    .locals 1

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/spdy/Connection;->getSocket()Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsEngine;->a:Ljavax/net/ssl/SSLSocket;

    invoke-super {p0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->connected(Lcom/alipay/mobile/common/transport/spdy/Connection;)V

    return-void
.end method

.method public final getSslSocket()Ljavax/net/ssl/SSLSocket;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsEngine;->a:Ljavax/net/ssl/SSLSocket;

    return-object v0
.end method

.method protected final getTunnelConfig()Lcom/alipay/mobile/common/transport/spdy/TunnelRequest;
    .locals 5

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsEngine;->requestHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsEngine;->getDefaultUserAgent()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsEngine;->policy:Lcom/alipay/mobile/common/transport/spdy/internal/http/Policy;

    invoke-interface {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/Policy;->getURL()Ljava/net/URL;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/TunnelRequest;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->getEffectivePort(Ljava/net/URL;)I

    move-result v1

    iget-object v4, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsEngine;->requestHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;

    invoke-virtual {v4}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->getProxyAuthorization()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v1, v0, v4}, Lcom/alipay/mobile/common/transport/spdy/TunnelRequest;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method protected final includeAuthorityInRequestLine()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
