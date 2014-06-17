.class public abstract Lcom/alipay/mobile/common/transport/spdy/internal/AbstractOutputStream;
.super Ljava/io/OutputStream;


# instance fields
.field protected closed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method protected final checkNotClosed()V
    .locals 2

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/AbstractOutputStream;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public isClosed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/AbstractOutputStream;->closed:Z

    return v0
.end method

.method public final write(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/AbstractOutputStream;->write([B)V

    return-void
.end method
