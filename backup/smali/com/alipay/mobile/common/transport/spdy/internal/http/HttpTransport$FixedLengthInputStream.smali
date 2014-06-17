.class Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$FixedLengthInputStream;
.super Lcom/alipay/mobile/common/transport/spdy/internal/http/AbstractHttpInputStream;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;I)V
    .locals 1

    invoke-direct {p0, p1, p3, p2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/AbstractHttpInputStream;-><init>(Ljava/io/InputStream;Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;Ljava/net/CacheRequest;)V

    iput p4, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$FixedLengthInputStream;->a:I

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$FixedLengthInputStream;->a:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$FixedLengthInputStream;->endOfInput()V

    :cond_0
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$FixedLengthInputStream;->checkNotClosed()V

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$FixedLengthInputStream;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$FixedLengthInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$FixedLengthInputStream;->a:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public close()V
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$FixedLengthInputStream;->closed:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$FixedLengthInputStream;->a:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$FixedLengthInputStream;->httpEngine:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    #calls: Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport;->a(Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;Ljava/io/InputStream;)Z
    invoke-static {v0, p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport;->access$200(Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;Ljava/io/InputStream;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$FixedLengthInputStream;->unexpectedEndOfInput()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$FixedLengthInputStream;->closed:Z

    goto :goto_0
.end method

.method public read([BII)I
    .locals 3

    const/4 v0, -0x1

    array-length v1, p1

    invoke-static {v1, p2, p3}, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->checkOffsetAndCount(III)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$FixedLengthInputStream;->checkNotClosed()V

    iget v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$FixedLengthInputStream;->a:I

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$FixedLengthInputStream;->in:Ljava/io/InputStream;

    iget v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$FixedLengthInputStream;->a:I

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, p1, p2, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$FixedLengthInputStream;->unexpectedEndOfInput()V

    new-instance v0, Ljava/net/ProtocolException;

    const-string/jumbo v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$FixedLengthInputStream;->a:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$FixedLengthInputStream;->a:I

    invoke-virtual {p0, p1, p2, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$FixedLengthInputStream;->cacheWrite([BII)V

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$FixedLengthInputStream;->a:I

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$FixedLengthInputStream;->endOfInput()V

    :cond_2
    move v0, v1

    goto :goto_0
.end method
