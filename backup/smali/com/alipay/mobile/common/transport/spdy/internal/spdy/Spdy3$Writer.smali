.class final Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameWriter;


# instance fields
.field private final a:Ljava/io/DataOutputStream;

.field private final b:Ljava/io/ByteArrayOutputStream;

.field private final c:Ljava/io/DataOutputStream;

.field private final d:Z


# direct methods
.method constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->a:Ljava/io/DataOutputStream;

    iput-boolean p2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->d:Z

    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    sget-object v1, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3;->DICTIONARY:[B

    invoke-virtual {v0, v1}, Ljava/util/zip/Deflater;->setDictionary([B)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->b:Ljava/io/ByteArrayOutputStream;

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-static {}, Lcom/alipay/mobile/common/transport/spdy/internal/Platform;->get()Lcom/alipay/mobile/common/transport/spdy/internal/Platform;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->b:Ljava/io/ByteArrayOutputStream;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/Platform;->newDeflaterOutputStream(Ljava/io/OutputStream;Ljava/util/zip/Deflater;Z)Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->c:Ljava/io/DataOutputStream;

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->b:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->c:Ljava/io/DataOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->c:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->c:Ljava/io/DataOutputStream;

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->c:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->a:Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->c:Ljava/io/DataOutputStream;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->closeAll(Ljava/io/Closeable;Ljava/io/Closeable;)V

    return-void
.end method

.method public final declared-synchronized connectionHeader()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized data(ZI[B)V
    .locals 6

    monitor-enter p0

    const/4 v4, 0x0

    :try_start_0
    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->data(ZI[BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized data(ZI[BII)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->a:Ljava/io/DataOutputStream;

    const v2, 0x7fffffff

    and-int/2addr v2, p2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->a:Ljava/io/DataOutputStream;

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const v2, 0xffffff

    and-int/2addr v2, p5

    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p3, p4, p5}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized flush()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->a:Ljava/io/DataOutputStream;

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
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;->spdyGoAwayCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->a:Ljava/io/DataOutputStream;

    const v1, -0x7ffcfff9

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->a:Ljava/io/DataOutputStream;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->a:Ljava/io/DataOutputStream;

    iget v1, p2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;->spdyGoAwayCode:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized headers(ILjava/util/List;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->b:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->a:Ljava/io/DataOutputStream;

    const v2, -0x7ffcfff8

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->a:Ljava/io/DataOutputStream;

    const v2, 0xffffff

    and-int/2addr v0, v2

    or-int/lit8 v0, v0, 0x0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->a:Ljava/io/DataOutputStream;

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->b:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->a:Ljava/io/DataOutputStream;

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

.method public final declared-synchronized noop()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->a:Ljava/io/DataOutputStream;

    const v1, -0x7ffcfffb

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->a:Ljava/io/DataOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->a:Ljava/io/DataOutputStream;

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

.method public final declared-synchronized ping(ZII)V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->d:Z

    rem-int/lit8 v2, p2, 0x2

    if-ne v2, v0, :cond_0

    move v2, v0

    :goto_0
    if-eq v3, v2, :cond_1

    :goto_1
    if-eq p1, v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "payload != reply"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->a:Ljava/io/DataOutputStream;

    const v1, -0x7ffcfffa

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->a:Ljava/io/DataOutputStream;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized rstStream(ILcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;->spdyRstCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->a:Ljava/io/DataOutputStream;

    const v1, -0x7ffcfffd

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->a:Ljava/io/DataOutputStream;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->a:Ljava/io/DataOutputStream;

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->a:Ljava/io/DataOutputStream;

    iget v1, p2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;->spdyRstCode:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized settings(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;)V
    .locals 5

    const v4, 0xffffff

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;->size()I

    move-result v0

    mul-int/lit8 v1, v0, 0x8

    add-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->a:Ljava/io/DataOutputStream;

    const v3, -0x7ffcfffc

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->a:Ljava/io/DataOutputStream;

    and-int/2addr v1, v4

    or-int/lit8 v1, v1, 0x0

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-gt v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;->flags(I)I

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->a:Ljava/io/DataOutputStream;

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    and-int v3, v0, v4

    or-int/2addr v1, v3

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->a:Ljava/io/DataOutputStream;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->a:Ljava/io/DataOutputStream;

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

.method public final declared-synchronized synReply(ZILjava/util/List;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p3}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->a(Ljava/util/List;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->b:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->a:Ljava/io/DataOutputStream;

    const v3, -0x7ffcfffe

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->a:Ljava/io/DataOutputStream;

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const v3, 0xffffff

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->a:Ljava/io/DataOutputStream;

    const v1, 0x7fffffff

    and-int/2addr v1, p2

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->b:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized synStream(ZZIIIILjava/util/List;)V
    .locals 5

    const v4, 0x7fffffff

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p7}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->a(Ljava/util/List;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->b:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    add-int/lit8 v2, v1, 0xa

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz p2, :cond_0

    const/4 v0, 0x2

    :cond_0
    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->a:Ljava/io/DataOutputStream;

    const v3, -0x7ffcffff

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->a:Ljava/io/DataOutputStream;

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const v3, 0xffffff

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->a:Ljava/io/DataOutputStream;

    and-int v1, p3, v4

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->a:Ljava/io/DataOutputStream;

    and-int v1, p4, v4

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->a:Ljava/io/DataOutputStream;

    and-int/lit8 v1, p5, 0x7

    shl-int/lit8 v1, v1, 0xd

    or-int/lit8 v1, v1, 0x0

    and-int/lit16 v2, p6, 0xff

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->b:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized windowUpdate(II)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->a:Ljava/io/DataOutputStream;

    const v1, -0x7ffcfff7

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->a:Ljava/io/DataOutputStream;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Writer;->a:Ljava/io/DataOutputStream;

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
