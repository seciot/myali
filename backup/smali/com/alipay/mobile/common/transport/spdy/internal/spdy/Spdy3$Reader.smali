.class final Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Reader;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameReader;


# instance fields
.field private final a:Ljava/io/DataInputStream;

.field private final b:Z

.field private final c:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Reader;->a:Ljava/io/DataInputStream;

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Reader;->c:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader;

    iput-boolean p2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Reader;->b:Z

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

.method private a(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameReader$Handler;II)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Reader;->a:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    add-int/lit8 v2, v2, 0x4

    if-eq p3, v2, :cond_0

    const-string/jumbo v2, "TYPE_SETTINGS length: %d != 4 + 8 * %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Reader;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_0
    new-instance v4, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;

    invoke-direct {v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;-><init>()V

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    iget-object v5, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Reader;->a:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iget-object v6, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Reader;->a:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    const/high16 v7, -0x100

    and-int/2addr v7, v5

    ushr-int/lit8 v7, v7, 0x18

    const v8, 0xffffff

    and-int/2addr v5, v8

    invoke-virtual {v4, v5, v7, v6}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;->set(III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_2

    :goto_1
    invoke-interface {p1, v0, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameReader$Handler;->settings(ZLcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;)V

    return-void

    :cond_2
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Reader;->a:Ljava/io/DataInputStream;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Reader;->c:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->closeAll(Ljava/io/Closeable;Ljava/io/Closeable;)V

    return-void
.end method

.method public final nextFrame(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameReader$Handler;)Z
    .locals 11

    const/16 v10, 0x8

    const/4 v4, -0x1

    const v9, 0x7fffffff

    const/4 v1, 0x0

    const/4 v8, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Reader;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Reader;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    const/high16 v0, -0x8000

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    move v0, v8

    :goto_0
    const/high16 v5, -0x100

    and-int/2addr v5, v3

    ushr-int/lit8 v7, v5, 0x18

    const v5, 0xffffff

    and-int v6, v3, v5

    if-eqz v0, :cond_e

    const/high16 v0, 0x7fff

    and-int/2addr v0, v2

    ushr-int/lit8 v0, v0, 0x10

    const v3, 0xffff

    and-int/2addr v2, v3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "version != 3: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v0

    move v8, v1

    :goto_1
    return v8

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Unexpected frame"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Reader;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Reader;->a:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Reader;->a:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readShort()S

    move-result v5

    and-int v3, v0, v9

    and-int v4, v2, v9

    const v0, 0xe000

    and-int/2addr v0, v5

    ushr-int/lit8 v5, v0, 0xd

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Reader;->c:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader;

    add-int/lit8 v2, v6, -0xa

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader;->readNameValueBlock(I)Ljava/util/List;

    move-result-object v6

    and-int/lit8 v0, v7, 0x1

    if-eqz v0, :cond_3

    move v2, v8

    :goto_2
    and-int/lit8 v0, v7, 0x2

    if-eqz v0, :cond_2

    move v1, v8

    :cond_2
    sget-object v7, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;->SPDY_SYN_STREAM:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;

    move-object v0, p1

    invoke-interface/range {v0 .. v7}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameReader$Handler;->headers(ZZIIILjava/util/List;Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;)V

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Reader;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    and-int v3, v0, v9

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Reader;->c:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader;

    add-int/lit8 v2, v6, -0x4

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader;->readNameValueBlock(I)Ljava/util/List;

    move-result-object v6

    and-int/lit8 v0, v7, 0x1

    if-eqz v0, :cond_4

    move v2, v8

    :goto_3
    sget-object v7, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;->SPDY_REPLY:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;

    move-object v0, p1

    move v5, v4

    invoke-interface/range {v0 .. v7}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameReader$Handler;->headers(ZZIIILjava/util/List;Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;)V

    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_3

    :pswitch_3
    if-eq v6, v10, :cond_5

    const-string/jumbo v0, "TYPE_RST_STREAM length: %d != 8"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Reader;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Reader;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    and-int/2addr v0, v9

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Reader;->a:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;->fromSpdy3Rst(I)Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;

    move-result-object v3

    if-nez v3, :cond_6

    const-string/jumbo v0, "TYPE_RST_STREAM unexpected error code: %d"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Reader;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_6
    invoke-interface {p1, v0, v3}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameReader$Handler;->rstStream(ILcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;)V

    goto/16 :goto_1

    :pswitch_4
    invoke-direct {p0, p1, v7, v6}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Reader;->a(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameReader$Handler;II)V

    goto/16 :goto_1

    :pswitch_5
    if-eqz v6, :cond_7

    const-string/jumbo v0, "TYPE_NOOP length: %d != 0"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Reader;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_7
    invoke-interface {p1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameReader$Handler;->noop()V

    goto/16 :goto_1

    :pswitch_6
    const/4 v0, 0x4

    if-eq v6, v0, :cond_8

    const-string/jumbo v0, "TYPE_PING length: %d != 4"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Reader;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Reader;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iget-boolean v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Reader;->b:Z

    rem-int/lit8 v0, v2, 0x2

    if-ne v0, v8, :cond_9

    move v0, v8

    :goto_4
    if-ne v3, v0, :cond_a

    move v0, v8

    :goto_5
    invoke-interface {p1, v0, v2, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameReader$Handler;->ping(ZII)V

    goto/16 :goto_1

    :cond_9
    move v0, v1

    goto :goto_4

    :cond_a
    move v0, v1

    goto :goto_5

    :pswitch_7
    if-eq v6, v10, :cond_b

    const-string/jumbo v0, "TYPE_GOAWAY length: %d != 8"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Reader;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_b
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Reader;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    and-int/2addr v0, v9

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Reader;->a:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;->fromSpdyGoAway(I)Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;

    move-result-object v3

    if-nez v3, :cond_c

    const-string/jumbo v0, "TYPE_GOAWAY unexpected error code: %d"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Reader;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_c
    invoke-interface {p1, v0, v3}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameReader$Handler;->goAway(ILcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;)V

    goto/16 :goto_1

    :pswitch_8
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Reader;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    and-int v3, v0, v9

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Reader;->c:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader;

    add-int/lit8 v2, v6, -0x4

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader;->readNameValueBlock(I)Ljava/util/List;

    move-result-object v6

    sget-object v7, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;->SPDY_HEADERS:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;

    move-object v0, p1

    move v2, v1

    move v5, v4

    invoke-interface/range {v0 .. v7}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameReader$Handler;->headers(ZZIIILjava/util/List;Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;)V

    goto/16 :goto_1

    :pswitch_9
    if-eq v6, v10, :cond_d

    const-string/jumbo v0, "TYPE_WINDOW_UPDATE length: %d != 8"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Reader;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_d
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Reader;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Reader;->a:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    and-int/2addr v0, v9

    and-int/2addr v2, v9

    invoke-interface {p1, v0, v2, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameReader$Handler;->windowUpdate(IIZ)V

    goto/16 :goto_1

    :pswitch_a
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Reader;->a:Ljava/io/DataInputStream;

    int-to-long v1, v6

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->skipByReading(Ljava/io/InputStream;J)J

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "TODO"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    and-int v0, v2, v9

    and-int/lit8 v2, v7, 0x1

    if-eqz v2, :cond_f

    move v1, v8

    :cond_f
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Spdy3$Reader;->a:Ljava/io/DataInputStream;

    invoke-interface {p1, v1, v0, v2, v6}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameReader$Handler;->data(ZILjava/io/InputStream;I)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method public final readConnectionHeader()V
    .locals 0

    return-void
.end method
