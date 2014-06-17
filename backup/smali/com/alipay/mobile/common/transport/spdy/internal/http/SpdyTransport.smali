.class public final Lcom/alipay/mobile/common/transport/spdy/internal/http/SpdyTransport;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/common/transport/spdy/internal/http/Transport;


# instance fields
.field private final a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

.field private final b:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

.field private c:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/SpdyTransport;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    iput-object p2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/SpdyTransport;->b:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    return-void
.end method


# virtual methods
.method public final createRequestBody()Ljava/io/OutputStream;
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/SpdyTransport;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->policy:Lcom/alipay/mobile/common/transport/spdy/internal/http/Policy;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/Policy;->getFixedContentLength()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/SpdyTransport;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    iget-object v2, v2, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;

    invoke-virtual {v2, v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->setContentLength(J)V

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/SpdyTransport;->writeRequestHeaders()V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/SpdyTransport;->c:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public final flushRequest()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/SpdyTransport;->c:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public final getTransferStream(Ljava/net/CacheRequest;)Ljava/io/InputStream;
    .locals 3

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/UnknownLengthHttpInputStream;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/SpdyTransport;->c:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/SpdyTransport;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    invoke-direct {v0, v1, p1, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/UnknownLengthHttpInputStream;-><init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;)V

    return-object v0
.end method

.method public final makeReusable(ZLjava/io/OutputStream;Ljava/io/InputStream;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/SpdyTransport;->c:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/SpdyTransport;->c:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;

    sget-object v2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;->CANCEL:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->closeLater(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final readResponseHeaders()Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/SpdyTransport;->c:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->getResponseHeaders()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->fromNameValueBlock(Ljava/util/List;)Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/SpdyTransport;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->receiveHeaders(Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;)V

    new-instance v1, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/SpdyTransport;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    iget-object v2, v2, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->uri:Ljava/net/URI;

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;-><init>(Ljava/net/URI;Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;)V

    const-string/jumbo v0, "spdy/3"

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->setTransport(Ljava/lang/String;)V

    return-object v1
.end method

.method public final writeRequestBody(Lcom/alipay/mobile/common/transport/spdy/internal/http/RetryableOutputStream;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final writeRequestHeaders()V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/SpdyTransport;->c:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/SpdyTransport;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->writingRequestHeaders()V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/SpdyTransport;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->getHeaders()Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/SpdyTransport;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    iget-object v1, v1, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transport/spdy/Connection;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/spdy/Connection;->getHttpMinorVersion()I

    move-result v1

    if-ne v1, v6, :cond_1

    const-string/jumbo v3, "HTTP/1.1"

    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/SpdyTransport;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    iget-object v1, v1, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->policy:Lcom/alipay/mobile/common/transport/spdy/internal/http/Policy;

    invoke-interface {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/Policy;->getURL()Ljava/net/URL;

    move-result-object v4

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/SpdyTransport;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    iget-object v1, v1, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->method:Ljava/lang/String;

    invoke-static {v4}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->requestPath(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->getOriginAddress(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/SpdyTransport;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    iget-object v5, v5, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->uri:Ljava/net/URI;

    invoke-virtual {v5}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->addSpdyRequestHeaders(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/SpdyTransport;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->hasRequestBody()Z

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/SpdyTransport;->b:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->toNameValueBlock()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0, v1, v6}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->newStream(Ljava/util/List;ZZ)Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/SpdyTransport;->c:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/SpdyTransport;->c:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/SpdyTransport;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    iget-object v1, v1, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->getReadTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->setReadTimeout(J)V

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "HTTP/1.0"

    goto :goto_1
.end method
