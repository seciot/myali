.class public final Lcom/alipay/b/b/c;
.super Ljava/lang/Object;


# static fields
.field private static j:Lcom/alipay/b/b/c;

.field private static k:[F

.field private static l:[F


# instance fields
.field private a:[[B

.field private b:[[B

.field private c:[B

.field private d:Z

.field private e:[B

.field private f:Z

.field private g:[B

.field private h:I

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x4

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alipay/b/b/c;->k:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/alipay/b/b/c;->l:[F

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x30t 0x89t 0x46t
        0x0t 0x98t 0x8at 0x46t
        0x0t 0x0t 0x8ct 0x46t
        0x0t 0x68t 0x8dt 0x46t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x80t 0xbbt 0x44t
        0x0t 0x80t 0xd4t 0x44t
        0x0t 0x80t 0xedt 0x44t
        0x0t 0x40t 0x3t 0x45t
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/alipay/b/b/c;->a:[[B

    iput-object v2, p0, Lcom/alipay/b/b/c;->b:[[B

    const/16 v0, 0x370

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/alipay/b/b/c;->c:[B

    iput-boolean v1, p0, Lcom/alipay/b/b/c;->d:Z

    const v0, 0x81330

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/alipay/b/b/c;->e:[B

    iput-boolean v1, p0, Lcom/alipay/b/b/c;->f:Z

    iput-object v2, p0, Lcom/alipay/b/b/c;->g:[B

    iput v1, p0, Lcom/alipay/b/b/c;->h:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/b/b/c;->i:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/b/b/c;->b()V

    invoke-direct {p0}, Lcom/alipay/b/b/c;->c()V

    invoke-direct {p0}, Lcom/alipay/b/b/c;->d()V

    return-void
.end method

.method private static a(B)B
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x40

    if-lt v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_1
    return v0

    :cond_0
    const-string/jumbo v1, "0123456789abcdefghijklmnopqrstuvwxyz~!@#$%^&*()_+-`\';:|/.<>?\\\"X "

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne p0, v1, :cond_1

    int-to-byte v0, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static a(BLjava/lang/String;)B
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne p0, v2, :cond_1

    int-to-byte v0, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a()Lcom/alipay/b/b/c;
    .locals 1

    sget-object v0, Lcom/alipay/b/b/c;->j:Lcom/alipay/b/b/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/b/b/c;

    invoke-direct {v0}, Lcom/alipay/b/b/c;-><init>()V

    sput-object v0, Lcom/alipay/b/b/c;->j:Lcom/alipay/b/b/c;

    :cond_0
    sget-object v0, Lcom/alipay/b/b/c;->j:Lcom/alipay/b/b/c;

    return-object v0
.end method

.method private static a([B)Ljava/lang/String;
    .locals 12

    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "1111111111111111"

    :goto_0
    return-object v0

    :cond_1
    array-length v2, p0

    if-lez v2, :cond_2

    const/16 v0, 0x20

    if-le v2, v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    const/16 v1, 0x10

    if-eq v2, v1, :cond_4

    const/16 v1, 0x20

    if-ne v2, v1, :cond_19

    :cond_4
    const/16 v1, 0x80

    new-array v4, v1, [B

    const-string/jumbo v3, "0123456789abcdef"

    array-length v5, p0

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v5, :cond_6

    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_18

    const/4 v1, 0x1

    :goto_3
    const/4 v0, 0x1

    if-ne v1, v0, :cond_17

    const-string/jumbo v3, "0123456789abcdef"

    const/4 v0, 0x0

    :goto_4
    div-int/lit8 v5, v2, 0x2

    if-lt v0, v5, :cond_8

    div-int/lit8 v0, v2, 0x2

    move v11, v1

    move v1, v0

    move v0, v11

    :goto_5
    if-nez v0, :cond_16

    const/16 v2, 0x10

    if-le v1, v2, :cond_16

    const/16 v2, 0x20

    if-gt v1, v2, :cond_16

    const/4 v2, 0x0

    :goto_6
    if-lt v2, v1, :cond_9

    const/4 v2, 0x1

    :goto_7
    if-eqz v2, :cond_16

    const/4 v2, 0x3

    const/16 v0, 0x80

    new-array v3, v0, [B

    const/16 v0, 0x80

    new-array v5, v0, [B

    const/4 v0, 0x0

    :goto_8
    const/16 v6, 0x80

    if-lt v0, v6, :cond_c

    const/16 v0, 0x14

    if-gt v1, v0, :cond_d

    const/16 v0, 0x14

    :goto_9
    const/4 v6, 0x0

    sub-int v7, v0, v1

    invoke-static {v4, v6, v5, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    :goto_a
    div-int/lit8 v4, v0, 0x4

    if-lt v1, v4, :cond_e

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x3

    move v11, v2

    move-object v2, v3

    move v3, v11

    :goto_b
    if-nez v3, :cond_15

    const/16 v1, 0x20

    new-array v1, v1, [B

    if-lez v0, :cond_f

    const/16 v4, 0x8

    if-gt v0, v4, :cond_f

    const/4 v4, 0x0

    rsub-int/lit8 v5, v0, 0x8

    invoke-static {v2, v4, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x8

    :goto_c
    new-instance v4, Ljava/lang/StringBuffer;

    const/16 v2, 0x91

    invoke-direct {v4, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    :goto_d
    if-lt v2, v0, :cond_11

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/alipay/a/a;->a([BII)I

    move-result v1

    const-string/jumbo v2, "%X%X%X%X%X%X%X%X%X%X%X%X"

    const/16 v5, 0xc

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    ushr-int/lit8 v7, v1, 0x16

    and-int/lit8 v7, v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    ushr-int/lit8 v7, v1, 0x14

    and-int/lit8 v7, v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    ushr-int/lit8 v7, v1, 0x12

    and-int/lit8 v7, v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    ushr-int/lit8 v7, v1, 0x10

    and-int/lit8 v7, v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    ushr-int/lit8 v7, v1, 0xe

    and-int/lit8 v7, v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    ushr-int/lit8 v7, v1, 0xc

    and-int/lit8 v7, v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    ushr-int/lit8 v7, v1, 0xa

    and-int/lit8 v7, v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x7

    ushr-int/lit8 v7, v1, 0x8

    and-int/lit8 v7, v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x8

    ushr-int/lit8 v7, v1, 0x6

    and-int/lit8 v7, v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x9

    ushr-int/lit8 v7, v1, 0x4

    and-int/lit8 v7, v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0xa

    ushr-int/lit8 v7, v1, 0x2

    and-int/lit8 v7, v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0xb

    and-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x8

    if-ne v0, v1, :cond_12

    packed-switch v3, :pswitch_data_0

    :cond_5
    :goto_e
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    aget-byte v6, p0, v1

    invoke-static {v6, v3}, Lcom/alipay/b/b/c;->a(BLjava/lang/String;)B

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_7

    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_8
    shl-int/lit8 v5, v0, 0x1

    aget-byte v5, p0, v5

    invoke-static {v5, v3}, Lcom/alipay/b/b/c;->a(BLjava/lang/String;)B

    move-result v5

    shl-int/lit8 v6, v0, 0x1

    add-int/lit8 v6, v6, 0x1

    aget-byte v6, p0, v6

    invoke-static {v6, v3}, Lcom/alipay/b/b/c;->a(BLjava/lang/String;)B

    move-result v6

    shl-int/lit8 v5, v5, 0x4

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    :cond_9
    aget-byte v3, v4, v2

    const/16 v5, 0x20

    if-eq v3, v5, :cond_a

    aget-byte v3, v4, v2

    invoke-static {v3}, Lcom/alipay/b/b/c;->a(B)B

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_b

    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_7

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    :cond_c
    const/16 v6, 0x20

    aput-byte v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8

    :cond_d
    const/16 v0, 0x20

    goto/16 :goto_9

    :cond_e
    shl-int/lit8 v4, v1, 0x2

    aget-byte v4, v5, v4

    invoke-static {v4}, Lcom/alipay/b/b/c;->a(B)B

    move-result v4

    shl-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-byte v6, v5, v6

    invoke-static {v6}, Lcom/alipay/b/b/c;->a(B)B

    move-result v6

    shl-int/lit8 v7, v1, 0x2

    add-int/lit8 v7, v7, 0x2

    aget-byte v7, v5, v7

    invoke-static {v7}, Lcom/alipay/b/b/c;->a(B)B

    move-result v7

    shl-int/lit8 v8, v1, 0x2

    add-int/lit8 v8, v8, 0x3

    aget-byte v8, v5, v8

    invoke-static {v8}, Lcom/alipay/b/b/c;->a(B)B

    move-result v8

    mul-int/lit8 v9, v1, 0x3

    shl-int/lit8 v4, v4, 0x2

    ushr-int/lit8 v10, v6, 0x4

    and-int/lit8 v10, v10, 0x3

    or-int/2addr v4, v10

    int-to-byte v4, v4

    aput-byte v4, v3, v9

    mul-int/lit8 v4, v1, 0x3

    add-int/lit8 v4, v4, 0x1

    shl-int/lit8 v6, v6, 0x4

    ushr-int/lit8 v9, v7, 0x2

    and-int/lit8 v9, v9, 0xf

    or-int/2addr v6, v9

    int-to-byte v6, v6

    aput-byte v6, v3, v4

    mul-int/lit8 v4, v1, 0x3

    add-int/lit8 v4, v4, 0x2

    shl-int/lit8 v6, v7, 0x6

    and-int/lit8 v7, v8, 0x3f

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_a

    :cond_f
    const/16 v4, 0x8

    if-le v0, v4, :cond_10

    const/16 v4, 0x10

    if-gt v0, v4, :cond_10

    const/4 v4, 0x0

    rsub-int/lit8 v5, v0, 0x10

    invoke-static {v2, v4, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x10

    goto/16 :goto_c

    :cond_10
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v5, "%X%X%X%X"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-byte v8, v1, v2

    ushr-int/lit8 v8, v8, 0x6

    and-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-byte v8, v1, v2

    ushr-int/lit8 v8, v8, 0x4

    and-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aget-byte v8, v1, v2

    ushr-int/lit8 v8, v8, 0x2

    and-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aget-byte v8, v1, v2

    and-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_d

    :pswitch_0
    const-string/jumbo v0, "0212"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_e

    :pswitch_1
    const-string/jumbo v0, "3200"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_e

    :cond_12
    const/16 v1, 0x10

    if-ne v0, v1, :cond_13

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_e

    :pswitch_2
    const-string/jumbo v0, "1212"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_e

    :pswitch_3
    const-string/jumbo v0, "3211"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_e

    :cond_13
    const/16 v1, 0xf

    if-ne v0, v1, :cond_14

    const-string/jumbo v0, "0303"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_e

    :cond_14
    const/16 v1, 0x18

    if-ne v0, v1, :cond_5

    const-string/jumbo v0, "1313"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_e

    :cond_15
    move-object v1, v2

    goto/16 :goto_c

    :cond_16
    move v3, v0

    move-object v2, v4

    move v0, v1

    goto/16 :goto_b

    :cond_17
    move v0, v1

    move-object v4, p0

    move v1, v2

    goto/16 :goto_5

    :cond_18
    move v1, v0

    goto/16 :goto_3

    :cond_19
    move v1, v2

    move-object v4, p0

    goto/16 :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a(I)Z
    .locals 12

    iget-object v0, p0, Lcom/alipay/b/b/c;->g:[B

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/b/b/c;->h:I

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v2, 0x0

    const v0, 0x81330

    iget v1, p0, Lcom/alipay/b/b/c;->h:I

    div-int/2addr v0, v1

    const/4 v1, 0x6

    if-ge p1, v1, :cond_2

    :goto_1
    const v1, 0xac44

    mul-int/2addr v1, p1

    iget v3, p0, Lcom/alipay/b/b/c;->h:I

    div-int/lit8 v3, v3, 0x2

    div-int/2addr v1, v3

    if-ge v0, v1, :cond_3

    :goto_2
    const/4 v1, 0x0

    move v4, v1

    :goto_3
    if-lt v4, v0, :cond_4

    div-int/lit8 v0, v2, 0x2

    :goto_4
    const v1, 0x40998

    if-lt v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x6

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_5
    iget v3, p0, Lcom/alipay/b/b/c;->h:I

    div-int/lit8 v3, v3, 0x2

    if-lt v1, v3, :cond_5

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lcom/alipay/b/b/c;->e:[B

    iget v5, p0, Lcom/alipay/b/b/c;->h:I

    mul-int/2addr v5, v4

    shl-int/lit8 v6, v1, 0x1

    add-int/2addr v5, v6

    aget-byte v3, v3, v5

    and-int/lit16 v3, v3, 0xff

    iget-object v5, p0, Lcom/alipay/b/b/c;->e:[B

    iget v6, p0, Lcom/alipay/b/b/c;->h:I

    mul-int/2addr v6, v4

    shl-int/lit8 v7, v1, 0x1

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v3, v5

    int-to-short v3, v3

    rem-int/lit8 v5, v4, 0x3

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/alipay/b/b/c;->g:[B

    shl-int/lit8 v6, v1, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    iget-object v6, p0, Lcom/alipay/b/b/c;->g:[B

    shl-int/lit8 v7, v1, 0x1

    add-int/lit8 v7, v7, 0x1

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    int-to-short v5, v5

    int-to-double v6, v3

    const-wide v8, 0x3fe999999999999aL

    mul-double/2addr v6, v8

    int-to-double v8, v5

    const-wide v10, 0x3fc999999999999aL

    mul-double/2addr v8, v10

    add-double v5, v6, v8

    double-to-int v3, v5

    int-to-short v3, v3

    :goto_6
    iget-object v5, p0, Lcom/alipay/b/b/c;->e:[B

    iget v6, p0, Lcom/alipay/b/b/c;->h:I

    mul-int/2addr v6, v4

    shl-int/lit8 v7, v1, 0x1

    add-int/2addr v6, v7

    int-to-byte v7, v3

    aput-byte v7, v5, v6

    iget-object v5, p0, Lcom/alipay/b/b/c;->e:[B

    iget v6, p0, Lcom/alipay/b/b/c;->h:I

    mul-int/2addr v6, v4

    shl-int/lit8 v7, v1, 0x1

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v5, v6

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    int-to-double v5, v3

    const-wide v7, 0x3fe999999999999aL

    mul-double/2addr v5, v7

    double-to-int v3, v5

    int-to-short v3, v3

    goto :goto_6

    :cond_7
    iget-object v1, p0, Lcom/alipay/b/b/c;->e:[B

    shl-int/lit8 v2, v0, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lcom/alipay/b/b/c;->e:[B

    shl-int/lit8 v3, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    int-to-short v1, v1

    int-to-double v1, v1

    const-wide v3, 0x3fe999999999999aL

    mul-double/2addr v1, v3

    double-to-int v1, v1

    int-to-short v1, v1

    iget-object v2, p0, Lcom/alipay/b/b/c;->e:[B

    shl-int/lit8 v3, v0, 0x1

    int-to-byte v4, v1

    aput-byte v4, v2, v3

    iget-object v2, p0, Lcom/alipay/b/b/c;->e:[B

    shl-int/lit8 v3, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4
.end method

.method private a(Ljava/io/InputStream;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v3, v2, [B

    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    iget-object v2, p0, Lcom/alipay/b/b/c;->g:[B

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alipay/b/b/c;->g:[B

    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/alipay/b/b/c;->h:I

    if-lez v4, :cond_1

    const/4 v2, 0x4

    new-array v5, v2, [C

    fill-array-data v5, :array_0

    move v2, v0

    :goto_0
    add-int/lit8 v6, v4, -0x4

    add-int/lit8 v6, v6, -0x4

    if-lt v2, v6, :cond_2

    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :goto_2
    return v0

    :cond_2
    aget-byte v6, v3, v2

    const/4 v7, 0x0

    aget-char v7, v5, v7

    if-ne v6, v7, :cond_3

    add-int/lit8 v6, v2, 0x1

    aget-byte v6, v3, v6

    const/4 v7, 0x1

    aget-char v7, v5, v7

    if-ne v6, v7, :cond_3

    add-int/lit8 v6, v2, 0x2

    aget-byte v6, v3, v6

    const/4 v7, 0x2

    aget-char v7, v5, v7

    if-ne v6, v7, :cond_3

    add-int/lit8 v6, v2, 0x3

    aget-byte v6, v3, v6

    const/4 v7, 0x3

    aget-char v7, v5, v7

    if-ne v6, v7, :cond_3

    add-int/lit8 v6, v2, 0x4

    aget-byte v6, v3, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v2, 0x4

    add-int/lit8 v7, v7, 0x1

    aget-byte v7, v3, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    add-int/lit8 v7, v2, 0x4

    add-int/lit8 v7, v7, 0x2

    aget-byte v7, v3, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    add-int/lit8 v7, v2, 0x4

    add-int/lit8 v7, v7, 0x3

    aget-byte v7, v3, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v6, v7

    if-lez v6, :cond_3

    sub-int v7, v4, v2

    add-int/lit8 v7, v7, -0x4

    add-int/lit8 v7, v7, -0x4

    if-gt v6, v7, :cond_3

    iput v6, p0, Lcom/alipay/b/b/c;->h:I

    new-array v4, v6, [B

    iput-object v4, p0, Lcom/alipay/b/b/c;->g:[B

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x4

    iget-object v4, p0, Lcom/alipay/b/b/c;->g:[B

    const/4 v5, 0x0

    invoke-static {v3, v2, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    nop

    :array_0
    .array-data 0x2
        0x64t 0x0t
        0x61t 0x0t
        0x74t 0x0t
        0x61t 0x0t
    .end array-data
.end method

.method private b()V
    .locals 9

    const/4 v8, 0x4

    const/4 v1, 0x0

    const/16 v0, 0x370

    filled-new-array {v8, v0}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lcom/alipay/b/b/c;->a:[[B

    move v2, v1

    :goto_0
    if-lt v2, v8, :cond_0

    return-void

    :cond_0
    const-wide v3, 0x401921fb54442d18L

    sget-object v0, Lcom/alipay/b/b/c;->k:[F

    aget v0, v0, v2

    float-to-double v5, v0

    mul-double/2addr v3, v5

    const-wide v5, 0x40e5888000000000L

    div-double/2addr v3, v5

    double-to-float v3, v3

    move v0, v1

    :goto_1
    const/16 v4, 0x1b8

    if-lt v0, v4, :cond_1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    const v4, 0x4394f0df

    int-to-float v5, v0

    mul-float/2addr v4, v5

    const v5, 0x3f2d5025

    int-to-float v6, v0

    mul-float/2addr v5, v6

    int-to-float v6, v0

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    int-to-float v5, v0

    mul-float/2addr v5, v3

    invoke-static {v5}, Landroid/util/FloatMath;->sin(F)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    int-to-short v4, v4

    iget-object v5, p0, Lcom/alipay/b/b/c;->a:[[B

    aget-object v5, v5, v2

    shl-int/lit8 v6, v0, 0x1

    int-to-byte v7, v4

    aput-byte v7, v5, v6

    iget-object v5, p0, Lcom/alipay/b/b/c;->a:[[B

    aget-object v5, v5, v2

    shl-int/lit8 v6, v0, 0x1

    add-int/lit8 v6, v6, 0x1

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v5, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private b([B[II)[B
    .locals 11

    const/4 v1, 0x0

    const/4 v3, 0x0

    aput v3, p2, v3

    if-gtz p3, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-static {p1}, Lcom/alipay/b/b/c;->a([B)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string/jumbo v0, "SonicWaveNFC"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "strHex="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const v0, 0x40998

    mul-int/lit16 v2, v6, 0xdc

    shl-int/lit8 v2, v2, 0x1

    div-int v7, v0, v2

    if-lez v7, :cond_0

    move v4, v3

    :goto_1
    if-lt v4, v7, :cond_2

    iget-object v1, p0, Lcom/alipay/b/b/c;->e:[B

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_2
    if-lt v2, v6, :cond_3

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lcom/alipay/b/b/c;->d:Z

    if-eqz v0, :cond_4

    mul-int/lit8 v0, v7, 0x3

    div-int/lit8 v0, v0, 0x4

    if-lt v4, v0, :cond_4

    iget-object v0, p0, Lcom/alipay/b/b/c;->c:[B

    :goto_3
    iget-object v8, p0, Lcom/alipay/b/b/c;->e:[B

    aget v9, p2, v3

    const/16 v10, 0x370

    invoke-static {v0, v3, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget v0, p2, v3

    add-int/lit16 v0, v0, 0x370

    aput v0, p2, v3

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_4
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const-string/jumbo v8, "0123"

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_6

    iget-boolean v8, p0, Lcom/alipay/b/b/c;->d:Z

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/alipay/b/b/c;->b:[[B

    aget-object v0, v8, v0

    goto :goto_3

    :cond_5
    iget-object v8, p0, Lcom/alipay/b/b/c;->a:[[B

    aget-object v0, v8, v0

    goto :goto_3

    :cond_6
    move-object v0, v1

    goto :goto_3
.end method

.method private c()V
    .locals 9

    const/4 v8, 0x4

    const/4 v1, 0x0

    const/16 v0, 0x370

    filled-new-array {v8, v0}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lcom/alipay/b/b/c;->b:[[B

    move v2, v1

    :goto_0
    if-lt v2, v8, :cond_0

    return-void

    :cond_0
    const-wide v3, 0x401921fb54442d18L

    sget-object v0, Lcom/alipay/b/b/c;->l:[F

    aget v0, v0, v2

    float-to-double v5, v0

    mul-double/2addr v3, v5

    const-wide v5, 0x40e5888000000000L

    div-double/2addr v3, v5

    double-to-float v3, v3

    move v0, v1

    :goto_1
    const/16 v4, 0x1b8

    if-lt v0, v4, :cond_1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    const v4, 0x4394f0df

    int-to-float v5, v0

    mul-float/2addr v4, v5

    const v5, 0x3f2d5025

    int-to-float v6, v0

    mul-float/2addr v5, v6

    int-to-float v6, v0

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-double v4, v4

    const-wide v6, 0x3fd3333333333333L

    mul-double/2addr v4, v6

    double-to-float v4, v4

    int-to-float v5, v0

    mul-float/2addr v5, v3

    invoke-static {v5}, Landroid/util/FloatMath;->sin(F)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    int-to-short v4, v4

    iget-object v5, p0, Lcom/alipay/b/b/c;->b:[[B

    aget-object v5, v5, v2

    shl-int/lit8 v6, v0, 0x1

    int-to-byte v7, v4

    aput-byte v7, v5, v6

    iget-object v5, p0, Lcom/alipay/b/b/c;->b:[[B

    aget-object v5, v5, v2

    shl-int/lit8 v6, v0, 0x1

    add-int/lit8 v6, v6, 0x1

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v5, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private d()V
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    const/16 v2, 0xdc

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/alipay/b/b/c;->c:[B

    shl-int/lit8 v3, v0, 0x1

    aput-byte v1, v2, v3

    iget-object v2, p0, Lcom/alipay/b/b/c;->c:[B

    shl-int/lit8 v3, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    aput-byte v1, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/b/b/c;->d:Z

    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string/jumbo v2, "Asset:%s"

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p2, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/b/b/c;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/alipay/b/b/c;->g:[B

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iput-object v2, p0, Lcom/alipay/b/b/c;->i:Ljava/lang/String;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v1}, Lcom/alipay/b/b/c;->a(Ljava/io/InputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :cond_2
    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v2

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    :goto_1
    throw v0

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public final a([B[II)[B
    .locals 14

    iget-boolean v1, p0, Lcom/alipay/b/b/c;->d:Z

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, p2, v1

    if-gtz p3, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-static {p1}, Lcom/alipay/b/b/c;->a([B)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "SonicWaveNFC"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "strHex="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x6

    move/from16 v0, p3

    if-le v0, v1, :cond_3

    const/16 p3, 0x6

    :cond_3
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const v1, 0xac44

    mul-int v1, v1, p3

    mul-int/lit16 v2, v8, 0xdc

    shl-int/lit8 v2, v2, 0x1

    div-int v9, v1, v2

    if-gtz v9, :cond_4

    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    new-instance v10, Lcom/alipay/b/b/a;

    invoke-direct {v10}, Lcom/alipay/b/b/a;-><init>()V

    iget-boolean v1, p0, Lcom/alipay/b/b/c;->d:Z

    if-eqz v1, :cond_5

    sget-object v1, Lcom/alipay/b/b/c;->l:[F

    :goto_1
    const/4 v2, 0x0

    move v6, v2

    :goto_2
    if-lt v6, v9, :cond_6

    iget-object v1, p0, Lcom/alipay/b/b/c;->e:[B

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/alipay/b/b/c;->k:[F

    goto :goto_1

    :cond_6
    iget-boolean v2, p0, Lcom/alipay/b/b/c;->d:Z

    if-eqz v2, :cond_7

    shl-int/lit8 v2, v9, 0x1

    div-int/lit8 v2, v2, 0x3

    if-lt v6, v2, :cond_7

    const/4 v2, 0x1

    :goto_3
    const/4 v3, 0x0

    move v5, v3

    :goto_4
    if-lt v5, v8, :cond_8

    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    goto :goto_3

    :cond_8
    const-string/jumbo v3, "0123"

    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    aget v3, v1, v3

    float-to-int v3, v3

    invoke-virtual {v10, v3}, Lcom/alipay/b/b/a;->a(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_5
    const/16 v3, 0x1b8

    if-lt v4, v3, :cond_9

    const/4 v3, 0x0

    aget v4, p2, v3

    add-int/lit16 v4, v4, 0x370

    aput v4, p2, v3

    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_4

    :cond_9
    if-eqz v2, :cond_a

    const/4 v3, 0x0

    :goto_6
    iget-object v11, p0, Lcom/alipay/b/b/c;->e:[B

    const/4 v12, 0x0

    aget v12, p2, v12

    shl-int/lit8 v13, v4, 0x1

    add-int/2addr v12, v13

    int-to-byte v13, v3

    aput-byte v13, v11, v12

    iget-object v11, p0, Lcom/alipay/b/b/c;->e:[B

    const/4 v12, 0x0

    aget v12, p2, v12

    shl-int/lit8 v13, v4, 0x1

    add-int/2addr v12, v13

    add-int/lit8 v12, v12, 0x1

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v11, v12

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_5

    :cond_a
    invoke-virtual {v10}, Lcom/alipay/b/b/a;->a()S

    move-result v3

    goto :goto_6

    :cond_b
    invoke-direct/range {p0 .. p3}, Lcom/alipay/b/b/c;->b([B[II)[B

    move-result-object v1

    iget-boolean v2, p0, Lcom/alipay/b/b/c;->f:Z

    if-eqz v2, :cond_0

    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/alipay/b/b/c;->a(I)Z

    goto/16 :goto_0
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/b/b/c;->f:Z

    return-void
.end method
