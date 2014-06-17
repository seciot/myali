.class final Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$FixedLengthOutputStream;
.super Lcom/alipay/mobile/common/transport/spdy/internal/AbstractOutputStream;


# instance fields
.field private final a:Ljava/io/OutputStream;

.field private b:J


# direct methods
.method private constructor <init>(Ljava/io/OutputStream;J)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/AbstractOutputStream;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$FixedLengthOutputStream;->a:Ljava/io/OutputStream;

    iput-wide p2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$FixedLengthOutputStream;->b:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/OutputStream;JLcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$FixedLengthOutputStream;-><init>(Ljava/io/OutputStream;J)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$FixedLengthOutputStream;->closed:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$FixedLengthOutputStream;->closed:Z

    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$FixedLengthOutputStream;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    new-instance v0, Ljava/net/ProtocolException;

    const-string/jumbo v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final flush()V
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$FixedLengthOutputStream;->closed:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$FixedLengthOutputStream;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    goto :goto_0
.end method

.method public final write([BII)V
    .locals 4

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$FixedLengthOutputStream;->checkNotClosed()V

    array-length v0, p1

    invoke-static {v0, p2, p3}, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->checkOffsetAndCount(III)V

    int-to-long v0, p3

    iget-wide v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$FixedLengthOutputStream;->b:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$FixedLengthOutputStream;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bytes but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$FixedLengthOutputStream;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$FixedLengthOutputStream;->b:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$FixedLengthOutputStream;->b:J

    return-void
.end method
