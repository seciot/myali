.class final Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$ChunkedOutputStream;
.super Lcom/alipay/mobile/common/transport/spdy/internal/AbstractOutputStream;


# static fields
.field private static final a:[B

.field private static final b:[B

.field private static final c:[B


# instance fields
.field private final d:[B

.field private final e:Ljava/io/OutputStream;

.field private final f:I

.field private final g:Ljava/io/ByteArrayOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$ChunkedOutputStream;->a:[B

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$ChunkedOutputStream;->b:[B

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$ChunkedOutputStream;->c:[B

    return-void

    :array_0
    .array-data 0x1
        0xdt
        0xat
    .end array-data

    nop

    :array_1
    .array-data 0x1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data

    :array_2
    .array-data 0x1
        0x30t
        0xdt
        0xat
        0xdt
        0xat
    .end array-data
.end method

.method private constructor <init>(Ljava/io/OutputStream;I)V
    .locals 3

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/AbstractOutputStream;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$ChunkedOutputStream;->d:[B

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$ChunkedOutputStream;->e:Ljava/io/OutputStream;

    const/4 v2, 0x1

    const/4 v1, 0x4

    add-int/lit8 v0, p2, -0x4

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    shr-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    sub-int v0, p2, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$ChunkedOutputStream;->f:I

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$ChunkedOutputStream;->g:Ljava/io/ByteArrayOutputStream;

    return-void

    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xdt
        0xat
    .end array-data
.end method

.method synthetic constructor <init>(Ljava/io/OutputStream;ILcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$ChunkedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$ChunkedOutputStream;->g:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-gtz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$ChunkedOutputStream;->a(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$ChunkedOutputStream;->g:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$ChunkedOutputStream;->e:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$ChunkedOutputStream;->g:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$ChunkedOutputStream;->e:Ljava/io/OutputStream;

    sget-object v1, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$ChunkedOutputStream;->a:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method

.method private a(I)V
    .locals 4

    const/16 v0, 0x8

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$ChunkedOutputStream;->d:[B

    add-int/lit8 v0, v0, -0x1

    sget-object v2, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$ChunkedOutputStream;->b:[B

    and-int/lit8 v3, p1, 0xf

    aget-byte v2, v2, v3

    aput-byte v2, v1, v0

    ushr-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$ChunkedOutputStream;->e:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$ChunkedOutputStream;->d:[B

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$ChunkedOutputStream;->d:[B

    array-length v3, v3

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized close()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$ChunkedOutputStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$ChunkedOutputStream;->closed:Z

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$ChunkedOutputStream;->a()V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$ChunkedOutputStream;->e:Ljava/io/OutputStream;

    sget-object v1, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$ChunkedOutputStream;->c:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

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
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$ChunkedOutputStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$ChunkedOutputStream;->a()V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$ChunkedOutputStream;->e:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized write([BII)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$ChunkedOutputStream;->checkNotClosed()V

    array-length v0, p1

    invoke-static {v0, p2, p3}, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->checkOffsetAndCount(III)V

    :goto_0
    if-lez p3, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$ChunkedOutputStream;->g:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$ChunkedOutputStream;->f:I

    if-ge p3, v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$ChunkedOutputStream;->f:I

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$ChunkedOutputStream;->g:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$ChunkedOutputStream;->g:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$ChunkedOutputStream;->g:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    iget v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$ChunkedOutputStream;->f:I

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$ChunkedOutputStream;->a()V

    :cond_1
    :goto_1
    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$ChunkedOutputStream;->f:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$ChunkedOutputStream;->a(I)V

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$ChunkedOutputStream;->e:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$ChunkedOutputStream;->e:Ljava/io/OutputStream;

    sget-object v2, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport$ChunkedOutputStream;->a:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    monitor-exit p0

    return-void
.end method
