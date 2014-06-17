.class public abstract Lcom/alipay/mobile/common/transport/spdy/internal/FaultRecoveringOutputStream;
.super Lcom/alipay/mobile/common/transport/spdy/internal/AbstractOutputStream;


# instance fields
.field private final a:I

.field private b:Ljava/io/ByteArrayOutputStream;

.field private c:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(ILjava/io/OutputStream;)V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/AbstractOutputStream;-><init>()V

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/FaultRecoveringOutputStream;->a:I

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/FaultRecoveringOutputStream;->b:Ljava/io/ByteArrayOutputStream;

    iput-object p2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/FaultRecoveringOutputStream;->c:Ljava/io/OutputStream;

    return-void
.end method

.method private a(Ljava/io/IOException;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/FaultRecoveringOutputStream;->b:Ljava/io/ByteArrayOutputStream;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception p1

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/FaultRecoveringOutputStream;->replacementStream(Ljava/io/IOException;)Ljava/io/OutputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/FaultRecoveringOutputStream;->replaceStream(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/FaultRecoveringOutputStream;->closed:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/FaultRecoveringOutputStream;->c:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/FaultRecoveringOutputStream;->closed:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/FaultRecoveringOutputStream;->a(Ljava/io/IOException;)Z

    move-result v1

    if-nez v1, :cond_0

    throw v0
.end method

.method public final flush()V
    .locals 2

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/FaultRecoveringOutputStream;->closed:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/FaultRecoveringOutputStream;->c:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/FaultRecoveringOutputStream;->a(Ljava/io/IOException;)Z

    move-result v1

    if-nez v1, :cond_0

    throw v0
.end method

.method public isRecoverable()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/FaultRecoveringOutputStream;->b:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final replaceStream(Ljava/io/OutputStream;)V
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/FaultRecoveringOutputStream;->isRecoverable()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/FaultRecoveringOutputStream;->c:Ljava/io/OutputStream;

    if-ne v0, p1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/FaultRecoveringOutputStream;->b:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/FaultRecoveringOutputStream;->c:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/FaultRecoveringOutputStream;->c:Ljava/io/OutputStream;

    goto :goto_0
.end method

.method protected abstract replacementStream(Ljava/io/IOException;)Ljava/io/OutputStream;
.end method

.method public final write([BII)V
    .locals 2

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/FaultRecoveringOutputStream;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    invoke-static {v0, p2, p3}, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->checkOffsetAndCount(III)V

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/FaultRecoveringOutputStream;->c:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/FaultRecoveringOutputStream;->b:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/FaultRecoveringOutputStream;->b:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    add-int/2addr v0, p3

    iget v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/FaultRecoveringOutputStream;->a:I

    if-le v0, v1, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/FaultRecoveringOutputStream;->b:Ljava/io/ByteArrayOutputStream;

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/FaultRecoveringOutputStream;->b:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/FaultRecoveringOutputStream;->a(Ljava/io/IOException;)Z

    move-result v1

    if-nez v1, :cond_1

    throw v0
.end method
