.class final Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Reader;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameReader;


# instance fields
.field private final a:Ljava/io/DataInputStream;

.field private final b:Z

.field private final c:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Reader;->a:Ljava/io/DataInputStream;

    iput-boolean p2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Reader;->b:Z

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Reader;->a:Ljava/io/DataInputStream;

    invoke-direct {v0, v1, p2}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;-><init>(Ljava/io/DataInputStream;Z)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Reader;->c:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;

    return-void
.end method

.method private static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .locals 2

    new-instance v0, Ljava/io/IOException;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Reader;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    return-void
.end method

.method public final nextFrame(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameReader$Handler;)Z
    .locals 13

    const/4 v4, -0x1

    const/high16 v11, -0x1

    const v10, 0x7fffffff

    const/4 v8, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Reader;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Reader;->a:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    and-int v2, v0, v11

    shr-int/lit8 v2, v2, 0x10

    const v5, 0xff00

    and-int/2addr v5, v0

    shr-int/lit8 v6, v5, 0x8

    and-int/lit16 v5, v0, 0xff

    and-int/2addr v3, v10

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "TODO"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    move v8, v1

    :goto_0
    :pswitch_1
    return v8

    :pswitch_2
    and-int/lit8 v0, v5, 0x1

    if-eqz v0, :cond_0

    move v1, v8

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Reader;->a:Ljava/io/DataInputStream;

    invoke-interface {p1, v1, v3, v0, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameReader$Handler;->data(ZILjava/io/InputStream;I)V

    goto :goto_0

    :pswitch_3
    if-nez v3, :cond_1

    const-string/jumbo v0, "TYPE_HEADERS streamId == 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Reader;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1
    and-int/lit8 v0, v5, 0x1

    if-eqz v0, :cond_3

    move v0, v8

    :goto_1
    move v12, v0

    move v0, v2

    move v2, v12

    :cond_2
    iget-object v6, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Reader;->c:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;

    invoke-virtual {v6, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->readHeaders(I)V

    and-int/lit8 v0, v5, 0x4

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Reader;->c:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->emitReferenceSet()V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Reader;->c:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->getAndReset()Ljava/util/List;

    move-result-object v6

    sget-object v7, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;->HTTP_20_HEADERS:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;

    move-object v0, p1

    move v5, v4

    invoke-interface/range {v0 .. v7}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameReader$Handler;->headers(ZZIIILjava/util/List;Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Reader;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Reader;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    and-int v0, v2, v11

    shr-int/lit8 v0, v0, 0x10

    const v5, 0xff00

    and-int/2addr v5, v2

    shr-int/lit8 v7, v5, 0x8

    and-int/lit16 v5, v2, 0xff

    and-int/lit8 v2, v5, 0x1

    if-eqz v2, :cond_5

    move v2, v8

    :goto_2
    and-int/2addr v6, v10

    const/16 v9, 0xa

    if-eq v7, v9, :cond_6

    const-string/jumbo v0, "TYPE_CONTINUATION didn\'t have FLAG_END_HEADERS"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Reader;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_5
    move v2, v1

    goto :goto_2

    :cond_6
    if-eq v6, v3, :cond_2

    const-string/jumbo v0, "TYPE_CONTINUATION streamId changed"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Reader;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_4
    const/4 v0, 0x4

    if-eq v2, v0, :cond_7

    const-string/jumbo v0, "TYPE_PRIORITY length: %d != 4"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Reader;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_7
    if-nez v3, :cond_8

    const-string/jumbo v0, "TYPE_PRIORITY streamId == 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Reader;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Reader;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    and-int/2addr v0, v10

    invoke-interface {p1, v3, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameReader$Handler;->priority(II)V

    goto/16 :goto_0

    :pswitch_5
    const/4 v0, 0x4

    if-eq v2, v0, :cond_9

    const-string/jumbo v0, "TYPE_RST_STREAM length: %d != 4"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Reader;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_9
    if-nez v3, :cond_a

    const-string/jumbo v0, "TYPE_RST_STREAM streamId == 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Reader;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Reader;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;->fromHttp2(I)Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;

    move-result-object v2

    if-nez v2, :cond_b

    const-string/jumbo v2, "TYPE_RST_STREAM unexpected error code: %d"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Reader;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_b
    invoke-interface {p1, v3, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameReader$Handler;->rstStream(ILcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;)V

    goto/16 :goto_0

    :pswitch_6
    rem-int/lit8 v0, v2, 0x8

    if-eqz v0, :cond_c

    const-string/jumbo v0, "TYPE_SETTINGS length %% 8 != 0: %s"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Reader;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_c
    if-eqz v3, :cond_d

    const-string/jumbo v0, "TYPE_SETTINGS streamId != 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Reader;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_d
    new-instance v3, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;

    invoke-direct {v3}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;-><init>()V

    move v0, v1

    :goto_3
    if-ge v0, v2, :cond_e

    iget-object v4, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Reader;->a:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    iget-object v5, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Reader;->a:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    const v6, 0xffffff

    and-int/2addr v4, v6

    invoke-virtual {v3, v4, v1, v5}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;->set(III)V

    add-int/lit8 v0, v0, 0x8

    goto :goto_3

    :cond_e
    invoke-interface {p1, v1, v3}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameReader$Handler;->settings(ZLcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;)V

    goto/16 :goto_0

    :pswitch_7
    const/16 v0, 0x8

    if-eq v2, v0, :cond_f

    const-string/jumbo v0, "TYPE_PING length != 8: %s"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Reader;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_f
    if-eqz v3, :cond_10

    const-string/jumbo v0, "TYPE_PING streamId != 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Reader;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_10
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Reader;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Reader;->a:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    and-int/lit8 v3, v5, 0x1

    if-eqz v3, :cond_11

    move v1, v8

    :cond_11
    invoke-interface {p1, v1, v0, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameReader$Handler;->ping(ZII)V

    goto/16 :goto_0

    :pswitch_8
    const/16 v0, 0x8

    if-ge v2, v0, :cond_12

    const-string/jumbo v0, "TYPE_GOAWAY length < 8: %s"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Reader;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_12
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Reader;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Reader;->a:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    add-int/lit8 v2, v2, -0x8

    invoke-static {v3}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;->fromHttp2(I)Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;

    move-result-object v4

    if-nez v4, :cond_13

    const-string/jumbo v0, "TYPE_RST_STREAM unexpected error code: %d"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Reader;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_13
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Reader;->a:Ljava/io/DataInputStream;

    int-to-long v5, v2

    invoke-static {v1, v5, v6}, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->skipByReading(Ljava/io/InputStream;J)J

    move-result-wide v5

    int-to-long v1, v2

    cmp-long v1, v5, v1

    if-eqz v1, :cond_14

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "TYPE_GOAWAY opaque data was truncated"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    invoke-interface {p1, v0, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameReader$Handler;->goAway(ILcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Reader;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    and-int/2addr v0, v10

    and-int/lit8 v2, v5, 0x1

    if-eqz v2, :cond_15

    move v1, v8

    :cond_15
    invoke-interface {p1, v3, v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameReader$Handler;->windowUpdate(IIZ)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public final readConnectionHeader()V
    .locals 3

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Reader;->b:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06;->access$000()[B

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Reader;->a:Ljava/io/DataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-static {}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06;->access$000()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Expected a connection header but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Http20Draft06$Reader;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method
