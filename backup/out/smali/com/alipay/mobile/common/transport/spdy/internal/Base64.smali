.class public final Lcom/alipay/mobile/common/transport/spdy/internal/Base64;
.super Ljava/lang/Object;


# static fields
.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alipay/mobile/common/transport/spdy/internal/Base64;->a:[B

    return-void

    :array_0
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
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
        0x2bt
        0x2ft
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode([B)[B
    .locals 1

    array-length v0, p0

    invoke-static {p0, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/Base64;->decode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BI)[B
    .locals 14

    const/16 v12, 0x20

    const/16 v11, 0xd

    const/16 v10, 0xa

    const/16 v9, 0x9

    const/4 v1, 0x0

    div-int/lit8 v0, p1, 0x4

    mul-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->EMPTY_BYTE_ARRAY:[B

    :goto_0
    return-object v0

    :cond_0
    new-array v7, v0, [B

    move v0, v1

    :goto_1
    add-int/lit8 v2, p1, -0x1

    aget-byte v2, p0, v2

    if-eq v2, v10, :cond_1

    if-eq v2, v11, :cond_1

    if-eq v2, v12, :cond_1

    if-eq v2, v9, :cond_1

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_2
    move v6, v1

    move v4, v1

    move v5, v1

    move v3, v1

    :goto_2
    if-ge v6, p1, :cond_8

    aget-byte v2, p0, v6

    if-eq v2, v10, :cond_c

    if-eq v2, v11, :cond_c

    if-eq v2, v12, :cond_c

    if-eq v2, v9, :cond_c

    const/16 v8, 0x41

    if-lt v2, v8, :cond_3

    const/16 v8, 0x5a

    if-gt v2, v8, :cond_3

    add-int/lit8 v2, v2, -0x41

    :goto_3
    shl-int/lit8 v4, v4, 0x6

    int-to-byte v2, v2

    or-int/2addr v4, v2

    rem-int/lit8 v2, v5, 0x4

    const/4 v8, 0x3

    if-ne v2, v8, :cond_b

    add-int/lit8 v2, v3, 0x1

    shr-int/lit8 v8, v4, 0x10

    int-to-byte v8, v8

    aput-byte v8, v7, v3

    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v8, v4, 0x8

    int-to-byte v8, v8

    aput-byte v8, v7, v2

    add-int/lit8 v2, v3, 0x1

    int-to-byte v8, v4

    aput-byte v8, v7, v3

    :goto_4
    add-int/lit8 v3, v5, 0x1

    move v13, v4

    move v4, v2

    move v2, v13

    :goto_5
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move v5, v3

    move v3, v4

    move v4, v2

    goto :goto_2

    :cond_3
    const/16 v8, 0x61

    if-lt v2, v8, :cond_4

    const/16 v8, 0x7a

    if-gt v2, v8, :cond_4

    add-int/lit8 v2, v2, -0x47

    goto :goto_3

    :cond_4
    const/16 v8, 0x30

    if-lt v2, v8, :cond_5

    const/16 v8, 0x39

    if-gt v2, v8, :cond_5

    add-int/lit8 v2, v2, 0x4

    goto :goto_3

    :cond_5
    const/16 v8, 0x2b

    if-ne v2, v8, :cond_6

    const/16 v2, 0x3e

    goto :goto_3

    :cond_6
    const/16 v8, 0x2f

    if-ne v2, v8, :cond_7

    const/16 v2, 0x3f

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    goto :goto_0

    :cond_8
    if-lez v0, :cond_9

    mul-int/lit8 v2, v0, 0x6

    shl-int/2addr v4, v2

    add-int/lit8 v2, v3, 0x1

    shr-int/lit8 v5, v4, 0x10

    int-to-byte v5, v5

    aput-byte v5, v7, v3

    const/4 v3, 0x1

    if-ne v0, v3, :cond_a

    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v0, v4, 0x8

    int-to-byte v0, v0

    aput-byte v0, v7, v2

    :cond_9
    :goto_6
    new-array v0, v3, [B

    invoke-static {v7, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    :cond_a
    move v3, v2

    goto :goto_6

    :cond_b
    move v2, v3

    goto :goto_4

    :cond_c
    move v2, v4

    move v4, v3

    move v3, v5

    goto :goto_5
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 9

    const/16 v8, 0x3d

    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x3

    new-array v3, v1, [B

    array-length v1, p0

    array-length v2, p0

    rem-int/lit8 v2, v2, 0x3

    sub-int v4, v1, v2

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    add-int/lit8 v2, v0, 0x1

    sget-object v5, Lcom/alipay/mobile/common/transport/spdy/internal/Base64;->a:[B

    aget-byte v6, p0, v1

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v6, v6, 0x2

    aget-byte v5, v5, v6

    aput-byte v5, v3, v0

    add-int/lit8 v0, v2, 0x1

    sget-object v5, Lcom/alipay/mobile/common/transport/spdy/internal/Base64;->a:[B

    aget-byte v6, p0, v1

    and-int/lit8 v6, v6, 0x3

    shl-int/lit8 v6, v6, 0x4

    add-int/lit8 v7, v1, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v7, v7, 0x4

    or-int/2addr v6, v7

    aget-byte v5, v5, v6

    aput-byte v5, v3, v2

    add-int/lit8 v5, v0, 0x1

    sget-object v2, Lcom/alipay/mobile/common/transport/spdy/internal/Base64;->a:[B

    add-int/lit8 v6, v1, 0x1

    aget-byte v6, p0, v6

    and-int/lit8 v6, v6, 0xf

    shl-int/lit8 v6, v6, 0x2

    add-int/lit8 v7, v1, 0x2

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v7, v7, 0x6

    or-int/2addr v6, v7

    aget-byte v2, v2, v6

    aput-byte v2, v3, v0

    add-int/lit8 v2, v5, 0x1

    sget-object v0, Lcom/alipay/mobile/common/transport/spdy/internal/Base64;->a:[B

    add-int/lit8 v6, v1, 0x2

    aget-byte v6, p0, v6

    and-int/lit8 v6, v6, 0x3f

    aget-byte v0, v0, v6

    aput-byte v0, v3, v5

    add-int/lit8 v0, v1, 0x3

    move v1, v0

    move v0, v2

    goto :goto_0

    :cond_0
    array-length v1, p0

    rem-int/lit8 v1, v1, 0x3

    packed-switch v1, :pswitch_data_0

    :goto_1
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v4, "US-ASCII"

    invoke-direct {v1, v3, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :pswitch_0
    add-int/lit8 v1, v0, 0x1

    sget-object v2, Lcom/alipay/mobile/common/transport/spdy/internal/Base64;->a:[B

    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v5, v5, 0x2

    aget-byte v2, v2, v5

    aput-byte v2, v3, v0

    add-int/lit8 v0, v1, 0x1

    sget-object v2, Lcom/alipay/mobile/common/transport/spdy/internal/Base64;->a:[B

    aget-byte v4, p0, v4

    and-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x4

    aget-byte v2, v2, v4

    aput-byte v2, v3, v1

    add-int/lit8 v1, v0, 0x1

    aput-byte v8, v3, v0

    add-int/lit8 v0, v1, 0x1

    aput-byte v8, v3, v1

    goto :goto_1

    :pswitch_1
    add-int/lit8 v1, v0, 0x1

    sget-object v2, Lcom/alipay/mobile/common/transport/spdy/internal/Base64;->a:[B

    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v5, v5, 0x2

    aget-byte v2, v2, v5

    aput-byte v2, v3, v0

    add-int/lit8 v0, v1, 0x1

    sget-object v2, Lcom/alipay/mobile/common/transport/spdy/internal/Base64;->a:[B

    aget-byte v5, p0, v4

    and-int/lit8 v5, v5, 0x3

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v6, v6, 0x4

    or-int/2addr v5, v6

    aget-byte v2, v2, v5

    aput-byte v2, v3, v1

    add-int/lit8 v1, v0, 0x1

    sget-object v2, Lcom/alipay/mobile/common/transport/spdy/internal/Base64;->a:[B

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x2

    aget-byte v2, v2, v4

    aput-byte v2, v3, v0

    add-int/lit8 v0, v1, 0x1

    aput-byte v8, v3, v1

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
