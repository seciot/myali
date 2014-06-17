.class public final Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/common/transport/spdy/internal/http/Transport;


# static fields
.field public static final DEFAULT_CHUNK_LENGTH:I = 0x400


# instance fields
.field private final a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

.field private final b:Ljava/io/InputStream;

.field private final c:Ljava/io/OutputStream;

.field private d:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;Ljava/io/OutputStream;Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    iput-object p2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport;->c:Ljava/io/OutputStream;

    iput-object p2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport;->d:Ljava/io/OutputStream;

    iput-object p3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport;->b:Ljava/io/InputStream;

    return-void
.end method

.method private static a(Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;Ljava/io/InputStream;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transport/spdy/Connection;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/spdy/Connection;->getSocket()Ljava/net/Socket;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Ljava/net/Socket;->getSoTimeout()I

    move-result v2

    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->skipAll(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;Ljava/io/InputStream;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport;->a(Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;Ljava/io/InputStream;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport;)Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport;)Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport;->b:Ljava/io/InputStream;

    return-object v0
.end method


# virtual methods
.method public final createRequestBody()Ljava/io/OutputStream;
    .locals 7

    const-wide/16 v5, -0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->isChunked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    iget-object v1, v1, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->policy:Lcom/alipay/mobile/common/transport/spdy/internal/http/Policy;

    invoke-interface {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/Policy;->getChunkLength()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    iget-object v1, v1, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transport/spdy/Connection;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/spdy/Connection;->getHttpMinorVersion()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->setChunked()V

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->policy:Lcom/alipay/mobile/common/transport/spdy/internal/http/Policy;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/Policy;->getChunkLength()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/16 v0, 0x400

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport;->writeRequestHeaders()V

    new-instance v1, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$ChunkedOutputStream;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport;->d:Ljava/io/OutputStream;

    invoke-direct {v1, v2, v0, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$ChunkedOutputStream;-><init>(Ljava/io/OutputStream;ILcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$1;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->policy:Lcom/alipay/mobile/common/transport/spdy/internal/http/Policy;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/Policy;->getFixedContentLength()J

    move-result-wide v1

    cmp-long v0, v1, v5

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->setContentLength(J)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport;->writeRequestHeaders()V

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$FixedLengthOutputStream;

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport;->d:Ljava/io/OutputStream;

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$FixedLengthOutputStream;-><init>(Ljava/io/OutputStream;JLcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$1;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->getContentLength()J

    move-result-wide v1

    const-wide/32 v3, 0x7fffffff

    cmp-long v0, v1, v3

    if-lez v0, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Use setFixedLengthStreamingMode() or setChunkedStreamingMode() for requests larger than 2 GiB."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    cmp-long v0, v1, v5

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport;->writeRequestHeaders()V

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RetryableOutputStream;

    long-to-int v1, v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RetryableOutputStream;-><init>(I)V

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RetryableOutputStream;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RetryableOutputStream;-><init>()V

    goto :goto_0
.end method

.method public final flushRequest()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport;->d:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport;->c:Ljava/io/OutputStream;

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport;->d:Ljava/io/OutputStream;

    return-void
.end method

.method public final getTransferStream(Ljava/net/CacheRequest;)Ljava/io/InputStream;
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->hasResponseBody()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$FixedLengthInputStream;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport;->b:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$FixedLengthInputStream;-><init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;I)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->responseHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->isChunked()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$ChunkedInputStream;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport;->b:Ljava/io/InputStream;

    invoke-direct {v0, v1, p1, p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$ChunkedInputStream;-><init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->responseHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->getContentLength()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$FixedLengthInputStream;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport;->b:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    iget-object v3, v3, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->responseHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->getContentLength()I

    move-result v3

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$FixedLengthInputStream;-><init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;I)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/UnknownLengthHttpInputStream;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport;->b:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    invoke-direct {v0, v1, p1, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/UnknownLengthHttpInputStream;-><init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;)V

    goto :goto_0
.end method

.method public final makeReusable(ZLjava/io/OutputStream;Ljava/io/InputStream;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p2, :cond_2

    check-cast p2, Lcom/alipay/mobile/common/transport/spdy/internal/AbstractOutputStream;

    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/spdy/internal/AbstractOutputStream;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    iget-object v1, v1, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->hasConnectionClose()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    iget-object v1, v1, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->responseHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    iget-object v1, v1, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->responseHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->hasConnectionClose()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    instance-of v1, p3, Lcom/alipay/mobile/common/transport/spdy/internal/http/UnknownLengthHttpInputStream;

    if-nez v1, :cond_0

    if-eqz p3, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    invoke-static {v0, p3}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport;->a(Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;Ljava/io/InputStream;)Z

    move-result v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final readResponseHeaders()Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport;->b:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->fromBytes(Ljava/io/InputStream;)Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    iget-object v1, v1, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transport/spdy/Connection;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->getHttpMinorVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/spdy/Connection;->setHttpMinorVersion(I)V

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->receiveHeaders(Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;)V

    new-instance v1, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    iget-object v2, v2, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->uri:Ljava/net/URI;

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;-><init>(Ljava/net/URI;Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;)V

    const-string/jumbo v0, "http/1.1"

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->setTransport(Ljava/lang/String;)V

    return-object v1
.end method

.method public final writeRequestBody(Lcom/alipay/mobile/common/transport/spdy/internal/http/RetryableOutputStream;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport;->d:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RetryableOutputStream;->writeToSocket(Ljava/io/OutputStream;)V

    return-void
.end method

.method public final writeRequestHeaders()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->writingRequestHeaders()V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->getHeaders()Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->toBytes()[B

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport;->d:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
