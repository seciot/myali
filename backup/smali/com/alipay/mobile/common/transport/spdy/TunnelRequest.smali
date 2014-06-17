.class public final Lcom/alipay/mobile/common/transport/spdy/TunnelRequest;
.super Ljava/lang/Object;


# instance fields
.field final host:Ljava/lang/String;

.field final port:I

.field final proxyAuthorization:Ljava/lang/String;

.field final userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "userAgent == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/TunnelRequest;->host:Ljava/lang/String;

    iput p2, p0, Lcom/alipay/mobile/common/transport/spdy/TunnelRequest;->port:I

    iput-object p3, p0, Lcom/alipay/mobile/common/transport/spdy/TunnelRequest;->userAgent:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/common/transport/spdy/TunnelRequest;->proxyAuthorization:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final getRequestHeaders()Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;
    .locals 4

    new-instance v1, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "CONNECT "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/TunnelRequest;->host:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/alipay/mobile/common/transport/spdy/TunnelRequest;->port:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " HTTP/1.1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->setRequestLine(Ljava/lang/String;)V

    const-string/jumbo v2, "Host"

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/TunnelRequest;->port:I

    const-string/jumbo v3, "https"

    invoke-static {v3}, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->getDefaultPort(Ljava/lang/String;)I

    move-result v3

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/TunnelRequest;->host:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "User-Agent"

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/TunnelRequest;->userAgent:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/TunnelRequest;->proxyAuthorization:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Proxy-Authorization"

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/TunnelRequest;->proxyAuthorization:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v0, "Proxy-Connection"

    const-string/jumbo v2, "Keep-Alive"

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/TunnelRequest;->host:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/alipay/mobile/common/transport/spdy/TunnelRequest;->port:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
