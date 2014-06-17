.class final Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Writer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameWriter;


# instance fields
.field private final a:Ljava/io/DataOutputStream;

.field private final b:Z

.field private final c:Ljava/io/ByteArrayOutputStream;

.field private final d:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Writer;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Writer;->a:Ljava/io/DataOutputStream;

    iput-boolean p2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Writer;->b:Z

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Writer;->c:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Writer;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Writer;->c:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Writer;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Writer;->d:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Writer;

    return-void
.end method

.method private a(ZIILjava/util/List;)V
    .locals 6

    const v5, 0x7fffffff

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Writer;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Writer;->d:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Writer;

    invoke-virtual {v0, p4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Writer;->writeHeaders(Ljava/util/List;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Writer;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    const/4 v0, 0x5

    :cond_0
    if-eq p3, v4, :cond_1

    or-int/lit8 v0, v0, 0x8

    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Writer;->a:Ljava/io/DataOutputStream;

    const v3, 0xffff

    and-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x10

    or-int/lit16 v1, v1, 0x100

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Writer;->a:Ljava/io/DataOutputStream;

    and-int v1, p2, v5

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    if-eq p3, v4, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Writer;->a:Ljava/io/DataOutputStream;

    and-int v1, p3, v5

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Writer;->c:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Writer;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Writer;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    return-void
.end method

.method public final declared-synchronized connectionHeader()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Writer;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Writer;->a:Ljava/io/DataOutputStream;

    invoke-static {}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06;->access$000()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final data(ZI[B)V
    .locals 6

    const/4 v4, 0x0

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Writer;->data(ZI[BII)V

    return-void
.end method

.method public final declared-synchronized data(ZI[BII)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Writer;->a:Ljava/io/DataOutputStream;

    const v2, 0xffff

    and-int/2addr v2, p5

    shl-int/lit8 v2, v2, 0x10

    or-int/lit8 v2, v2, 0x0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Writer;->a:Ljava/io/DataOutputStream;

    const v1, 0x7fffffff

    and-int/2addr v1, p2

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Writer;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p3, p4, p5}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized flush()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Writer;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized goAway(ILcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized headers(ILjava/util/List;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, -0x1

    :try_start_0
    invoke-direct {p0, v0, p1, v1, p2}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Writer;->a(ZIILjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized noop()V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized ping(ZII)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized rstStream(ILcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "TODO"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized settings(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;)V
    .locals 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Writer;->a:Ljava/io/DataOutputStream;

    const v3, 0xffff

    and-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x10

    or-int/lit16 v1, v1, 0x400

    or-int/lit8 v1, v1, 0x0

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Writer;->a:Ljava/io/DataOutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Writer;->a:Ljava/io/DataOutputStream;

    const v2, 0xffffff

    and-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Writer;->a:Ljava/io/DataOutputStream;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized synReply(ZILjava/util/List;)V
    .locals 1

    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Writer;->a(ZIILjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized synStream(ZZIIIILjava/util/List;)V
    .locals 1

    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p3, p5, p7}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Writer;->a(ZIILjava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized windowUpdate(II)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method
