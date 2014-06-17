.class public Lcom/alibaba/fastjson/util/UTF8Decoder;
.super Ljava/nio/charset/CharsetDecoder;


# static fields
.field private static final charset:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/UTF8Decoder;->charset:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/high16 v1, 0x3f80

    sget-object v0, Lcom/alibaba/fastjson/util/UTF8Decoder;->charset:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1, v1}, Ljava/nio/charset/CharsetDecoder;-><init>(Ljava/nio/charset/Charset;FF)V

    return-void
.end method

.method private decodeArrayLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 11

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v6

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->position()I

    move-result v3

    add-int v4, v0, v3

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->limit()I

    move-result v3

    add-int v7, v0, v3

    sub-int v0, v2, v1

    sub-int v3, v7, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int v8, v4, v0

    :goto_0
    if-ge v4, v8, :cond_1

    aget-byte v0, v5, v1

    if-ltz v0, :cond_1

    add-int/lit8 v0, v4, 0x1

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v5, v1

    int-to-char v1, v1

    aput-char v1, v6, v4

    move v4, v0

    move v1, v3

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v4, 0x1

    int-to-char v3, v3

    aput-char v3, v6, v4

    add-int/lit8 v1, v1, 0x1

    move v4, v0

    :cond_1
    :goto_1
    if-ge v1, v2, :cond_10

    aget-byte v3, v5, v1

    if-ltz v3, :cond_2

    if-lt v4, v7, :cond_0

    const/4 v5, 0x1

    move-object v0, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/util/UTF8Decoder;->xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_2
    shr-int/lit8 v0, v3, 0x5

    const/4 v8, -0x2

    if-ne v0, v8, :cond_6

    sub-int v0, v2, v1

    const/4 v8, 0x2

    if-lt v0, v8, :cond_3

    if-lt v4, v7, :cond_4

    :cond_3
    const/4 v5, 0x2

    move-object v0, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/util/UTF8Decoder;->xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v0

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v1, 0x1

    aget-byte v8, v5, v0

    invoke-static {v3, v8}, Lcom/alibaba/fastjson/util/UTF8Decoder;->isMalformed2(II)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    invoke-static {p1, v1, p2, v4, v0}, Lcom/alibaba/fastjson/util/UTF8Decoder;->malformed(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v0

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v4, 0x1

    shl-int/lit8 v3, v3, 0x6

    xor-int/2addr v3, v8

    xor-int/lit16 v3, v3, 0xf80

    int-to-char v3, v3

    aput-char v3, v6, v4

    add-int/lit8 v1, v1, 0x2

    move v4, v0

    goto :goto_1

    :cond_6
    shr-int/lit8 v0, v3, 0x4

    const/4 v8, -0x2

    if-ne v0, v8, :cond_a

    sub-int v0, v2, v1

    const/4 v8, 0x3

    if-lt v0, v8, :cond_7

    if-lt v4, v7, :cond_8

    :cond_7
    const/4 v5, 0x3

    move-object v0, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/util/UTF8Decoder;->xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v0

    goto :goto_2

    :cond_8
    add-int/lit8 v0, v1, 0x1

    aget-byte v8, v5, v0

    add-int/lit8 v0, v1, 0x2

    aget-byte v9, v5, v0

    invoke-static {v3, v8, v9}, Lcom/alibaba/fastjson/util/UTF8Decoder;->isMalformed3(III)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x3

    invoke-static {p1, v1, p2, v4, v0}, Lcom/alibaba/fastjson/util/UTF8Decoder;->malformed(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v0

    goto :goto_2

    :cond_9
    add-int/lit8 v0, v4, 0x1

    shl-int/lit8 v3, v3, 0xc

    shl-int/lit8 v8, v8, 0x6

    xor-int/2addr v3, v8

    xor-int/2addr v3, v9

    xor-int/lit16 v3, v3, 0x1f80

    int-to-char v3, v3

    aput-char v3, v6, v4

    add-int/lit8 v1, v1, 0x3

    move v4, v0

    goto :goto_1

    :cond_a
    shr-int/lit8 v0, v3, 0x3

    const/4 v8, -0x2

    if-ne v0, v8, :cond_f

    sub-int v0, v2, v1

    const/4 v8, 0x4

    if-lt v0, v8, :cond_b

    sub-int v0, v7, v4

    const/4 v8, 0x2

    if-ge v0, v8, :cond_c

    :cond_b
    const/4 v5, 0x4

    move-object v0, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/util/UTF8Decoder;->xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v0

    goto/16 :goto_2

    :cond_c
    add-int/lit8 v0, v1, 0x1

    aget-byte v0, v5, v0

    add-int/lit8 v8, v1, 0x2

    aget-byte v8, v5, v8

    add-int/lit8 v9, v1, 0x3

    aget-byte v9, v5, v9

    and-int/lit8 v3, v3, 0x7

    shl-int/lit8 v3, v3, 0x12

    and-int/lit8 v10, v0, 0x3f

    shl-int/lit8 v10, v10, 0xc

    or-int/2addr v3, v10

    and-int/lit8 v10, v8, 0x3f

    shl-int/lit8 v10, v10, 0x6

    or-int/2addr v3, v10

    and-int/lit8 v10, v9, 0x3f

    or-int/2addr v3, v10

    invoke-static {v0, v8, v9}, Lcom/alibaba/fastjson/util/UTF8Decoder;->isMalformed4(III)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {v3}, Lcom/alibaba/fastjson/util/UTF8Decoder$Surrogate;->neededFor(I)Z

    move-result v0

    if-nez v0, :cond_e

    :cond_d
    const/4 v0, 0x4

    invoke-static {p1, v1, p2, v4, v0}, Lcom/alibaba/fastjson/util/UTF8Decoder;->malformed(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v0

    goto/16 :goto_2

    :cond_e
    add-int/lit8 v0, v4, 0x1

    invoke-static {v3}, Lcom/alibaba/fastjson/util/UTF8Decoder$Surrogate;->high(I)C

    move-result v8

    aput-char v8, v6, v4

    add-int/lit8 v4, v0, 0x1

    invoke-static {v3}, Lcom/alibaba/fastjson/util/UTF8Decoder$Surrogate;->low(I)C

    move-result v3

    aput-char v3, v6, v0

    add-int/lit8 v1, v1, 0x4

    goto/16 :goto_1

    :cond_f
    const/4 v0, 0x1

    invoke-static {p1, v1, p2, v4, v0}, Lcom/alibaba/fastjson/util/UTF8Decoder;->malformed(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v0

    goto/16 :goto_2

    :cond_10
    const/4 v5, 0x0

    move-object v0, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/util/UTF8Decoder;->xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v0

    goto/16 :goto_2
.end method

.method private static final isMalformed2(II)Z
    .locals 2

    and-int/lit8 v0, p0, 0x1e

    if-eqz v0, :cond_0

    and-int/lit16 v0, p1, 0xc0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isMalformed3(III)Z
    .locals 2

    const/16 v1, 0x80

    const/16 v0, -0x20

    if-ne p0, v0, :cond_0

    and-int/lit16 v0, p1, 0xe0

    if-eq v0, v1, :cond_1

    :cond_0
    and-int/lit16 v0, p1, 0xc0

    if-ne v0, v1, :cond_1

    and-int/lit16 v0, p2, 0xc0

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final isMalformed4(III)Z
    .locals 2

    const/16 v1, 0x80

    and-int/lit16 v0, p0, 0xc0

    if-ne v0, v1, :cond_0

    and-int/lit16 v0, p1, 0xc0

    if-ne v0, v1, :cond_0

    and-int/lit16 v0, p2, 0xc0

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNotContinuation(I)Z
    .locals 2

    and-int/lit16 v0, p0, 0xc0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static lookupN(Ljava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;
    .locals 2

    const/4 v0, 0x1

    :goto_0
    if-ge v0, p1, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/UTF8Decoder;->isNotContinuation(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    goto :goto_1
.end method

.method private static malformed(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;
    .locals 1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {p0, p4}, Lcom/alibaba/fastjson/util/UTF8Decoder;->malformedN(Ljava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson/util/UTF8Decoder;->updatePositions(Ljava/nio/Buffer;ILjava/nio/Buffer;I)V

    return-object v0
.end method

.method public static malformedN(Ljava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;
    .locals 6

    const/16 v5, 0x80

    const/4 v4, 0x5

    const/4 v0, 0x2

    const/4 v3, -0x2

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    shr-int/lit8 v2, v0, 0x2

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, v4}, Lcom/alibaba/fastjson/util/UTF8Decoder;->lookupN(Ljava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    goto :goto_0

    :cond_1
    shr-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-ge v0, v4, :cond_2

    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/util/UTF8Decoder;->lookupN(Ljava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {v1}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-static {v1}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    const/16 v4, -0x20

    if-ne v2, v4, :cond_4

    and-int/lit16 v2, v3, 0xe0

    if-eq v2, v5, :cond_5

    :cond_4
    invoke-static {v3}, Lcom/alibaba/fastjson/util/UTF8Decoder;->isNotContinuation(I)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    move v0, v1

    :cond_6
    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xf4

    if-gt v2, v4, :cond_9

    const/16 v4, 0xf0

    if-ne v2, v4, :cond_7

    const/16 v4, 0x90

    if-lt v3, v4, :cond_9

    const/16 v4, 0xbf

    if-gt v3, v4, :cond_9

    :cond_7
    const/16 v4, 0xf4

    if-ne v2, v4, :cond_8

    and-int/lit16 v2, v3, 0xf0

    if-ne v2, v5, :cond_9

    :cond_8
    invoke-static {v3}, Lcom/alibaba/fastjson/util/UTF8Decoder;->isNotContinuation(I)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    invoke-static {v1}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    goto :goto_0

    :cond_a
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/UTF8Decoder;->isNotContinuation(I)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    goto :goto_0

    :cond_b
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static final updatePositions(Ljava/nio/Buffer;ILjava/nio/Buffer;I)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p2, p3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private static xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;
    .locals 1

    invoke-static {p0, p1, p3, p4}, Lcom/alibaba/fastjson/util/UTF8Decoder;->updatePositions(Ljava/nio/Buffer;ILjava/nio/Buffer;I)V

    if-eqz p5, :cond_0

    sub-int v0, p2, p1

    if-ge v0, p5, :cond_1

    :cond_0
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    goto :goto_0
.end method


# virtual methods
.method protected decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/util/UTF8Decoder;->decodeArrayLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method
