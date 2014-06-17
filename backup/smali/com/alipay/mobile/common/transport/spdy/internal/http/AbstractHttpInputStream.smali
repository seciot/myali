.class abstract Lcom/alipay/mobile/common/transport/spdy/internal/http/AbstractHttpInputStream;
.super Ljava/io/InputStream;


# instance fields
.field private final a:Ljava/net/CacheRequest;

.field private final b:Ljava/io/OutputStream;

.field protected closed:Z

.field protected final httpEngine:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

.field protected final in:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;Ljava/net/CacheRequest;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/AbstractHttpInputStream;->in:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/AbstractHttpInputStream;->httpEngine:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/net/CacheRequest;->getBody()Ljava/io/OutputStream;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    move-object p3, v0

    :cond_0
    iput-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/AbstractHttpInputStream;->b:Ljava/io/OutputStream;

    iput-object p3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/AbstractHttpInputStream;->a:Ljava/net/CacheRequest;

    return-void

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method protected final cacheWrite([BII)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/AbstractHttpInputStream;->b:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/AbstractHttpInputStream;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :cond_0
    return-void
.end method

.method protected final checkNotClosed()V
    .locals 2

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/AbstractHttpInputStream;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method protected final endOfInput()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/AbstractHttpInputStream;->a:Ljava/net/CacheRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/AbstractHttpInputStream;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/AbstractHttpInputStream;->httpEngine:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->release(Z)V

    return-void
.end method

.method public final read()I
    .locals 1

    invoke-static {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->readSingleByte(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method protected final unexpectedEndOfInput()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/AbstractHttpInputStream;->a:Ljava/net/CacheRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/AbstractHttpInputStream;->a:Ljava/net/CacheRequest;

    invoke-virtual {v0}, Ljava/net/CacheRequest;->abort()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/AbstractHttpInputStream;->httpEngine:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->release(Z)V

    return-void
.end method
