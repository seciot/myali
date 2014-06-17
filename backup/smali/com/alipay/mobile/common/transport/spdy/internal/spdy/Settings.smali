.class final Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;
.super Ljava/lang/Object;


# static fields
.field static final CLIENT_CERTIFICATE_VECTOR_SIZE:I = 0x8

.field static final COUNT:I = 0xa

.field static final CURRENT_CWND:I = 0x5

.field static final DEFAULT_INITIAL_WINDOW_SIZE:I = 0x10000

.field static final DOWNLOAD_BANDWIDTH:I = 0x2

.field static final DOWNLOAD_RETRANS_RATE:I = 0x6

.field static final FLAG_CLEAR_PREVIOUSLY_PERSISTED_SETTINGS:I = 0x1

.field static final FLOW_CONTROL_OPTIONS:I = 0x9

.field static final FLOW_CONTROL_OPTIONS_DISABLED:I = 0x1

.field static final INITIAL_WINDOW_SIZE:I = 0x7

.field static final MAX_CONCURRENT_STREAMS:I = 0x4

.field static final PERSISTED:I = 0x2

.field static final PERSIST_VALUE:I = 0x1

.field static final ROUND_TRIP_TIME:I = 0x3

.field static final UPLOAD_BANDWIDTH:I = 0x1


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private final d:[I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;->d:[I

    return-void
.end method


# virtual methods
.method final flags(I)I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;->isPersisted(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;->persistValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method final get(I)I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;->d:[I

    aget v0, v0, p1

    return v0
.end method

.method final getClientCertificateVectorSize(I)I
    .locals 2

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;->a:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;->d:[I

    const/16 v1, 0x8

    aget p1, v0, v1

    :cond_0
    return p1
.end method

.method final getCurrentCwnd(I)I
    .locals 2

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;->a:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;->d:[I

    const/4 v1, 0x5

    aget p1, v0, v1

    :cond_0
    return p1
.end method

.method final getDownloadBandwidth(I)I
    .locals 2

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;->d:[I

    const/4 v1, 0x2

    aget p1, v0, v1

    :cond_0
    return p1
.end method

.method final getDownloadRetransRate(I)I
    .locals 2

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;->a:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;->d:[I

    const/4 v1, 0x6

    aget p1, v0, v1

    :cond_0
    return p1
.end method

.method final getInitialWindowSize(I)I
    .locals 2

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;->a:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;->d:[I

    const/4 v1, 0x7

    aget p1, v0, v1

    :cond_0
    return p1
.end method

.method final getMaxConcurrentStreams(I)I
    .locals 2

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;->a:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;->d:[I

    const/4 v1, 0x4

    aget p1, v0, v1

    :cond_0
    return p1
.end method

.method final getRoundTripTime(I)I
    .locals 2

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;->a:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;->d:[I

    const/4 v1, 0x3

    aget p1, v0, v1

    :cond_0
    return p1
.end method

.method final getUploadBandwidth(I)I
    .locals 2

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;->d:[I

    const/4 v1, 0x1

    aget p1, v0, v1

    :cond_0
    return p1
.end method

.method final isFlowControlDisabled()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;->a:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;->d:[I

    const/16 v2, 0x9

    aget v1, v1, v2

    :goto_0
    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method final isPersisted(I)Z
    .locals 3

    const/4 v0, 0x1

    shl-int v1, v0, p1

    iget v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;->c:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isSet(I)Z
    .locals 3

    const/4 v0, 0x1

    shl-int v1, v0, p1

    iget v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;->a:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final merge(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;->flags(I)I

    move-result v1

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;->get(I)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;->set(III)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method final persistValue(I)Z
    .locals 3

    const/4 v0, 0x1

    shl-int v1, v0, p1

    iget v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;->b:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final set(III)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;->d:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    iget v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;->a:I

    or-int/2addr v1, v0

    iput v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;->a:I

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;->b:I

    or-int/2addr v1, v0

    iput v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;->b:I

    :goto_1
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;->c:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;->c:I

    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;->d:[I

    aput p3, v0, p1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;->b:I

    xor-int/lit8 v2, v0, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;->b:I

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;->c:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;->c:I

    goto :goto_2
.end method

.method final size()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method
