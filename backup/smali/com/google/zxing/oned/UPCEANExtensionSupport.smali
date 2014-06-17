.class final Lcom/google/zxing/oned/UPCEANExtensionSupport;
.super Ljava/lang/Object;


# static fields
.field private static final a:[I

.field private static final b:[I


# instance fields
.field private final c:[I

.field private final d:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/UPCEANExtensionSupport;->a:[I

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/oned/UPCEANExtensionSupport;->b:[I

    return-void

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x18t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANExtensionSupport;->c:[I

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANExtensionSupport;->d:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method final decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuffer;)I
    .locals 8

    iget-object v4, p0, Lcom/google/zxing/oned/UPCEANExtensionSupport;->c:[I

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, v4, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, v4, v0

    const/4 v0, 0x2

    const/4 v1, 0x0

    aput v1, v4, v0

    const/4 v0, 0x3

    const/4 v1, 0x0

    aput v1, v4, v0

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    const/4 v0, 0x1

    aget v1, p2, v0

    const/4 v2, 0x0

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    const/4 v0, 0x5

    if-ge v3, v0, :cond_3

    if-ge v1, v5, :cond_3

    sget-object v0, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    invoke-static {p1, v4, v1, v0}, Lcom/google/zxing/oned/UPCEANReader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v6

    rem-int/lit8 v0, v6, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_1
    array-length v7, v4

    if-ge v0, v7, :cond_0

    aget v7, v4, v0

    add-int/2addr v1, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const/16 v0, 0xa

    if-lt v6, v0, :cond_a

    const/4 v0, 0x1

    rsub-int/lit8 v6, v3, 0x4

    shl-int/2addr v0, v6

    or-int/2addr v0, v2

    :goto_2
    const/4 v2, 0x4

    if-eq v3, v2, :cond_2

    :goto_3
    if-ge v1, v5, :cond_1

    invoke-virtual {p1, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1
    :goto_4
    if-ge v1, v5, :cond_2

    invoke-virtual {p1, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/4 v3, 0x5

    if-eq v0, v3, :cond_4

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_4
    const/4 v0, 0x0

    move v3, v0

    :goto_5
    const/16 v0, 0xa

    if-ge v3, v0, :cond_6

    sget-object v0, Lcom/google/zxing/oned/UPCEANExtensionSupport;->b:[I

    aget v0, v0, v3

    if-ne v2, v0, :cond_5

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v2, 0x0

    add-int/lit8 v0, v5, -0x2

    :goto_6
    if-ltz v0, :cond_7

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v6, v6, -0x30

    add-int/2addr v2, v6

    add-int/lit8 v0, v0, -0x2

    goto :goto_6

    :cond_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5

    :cond_6
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_7
    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v0, v5, -0x1

    :goto_7
    if-ltz v0, :cond_8

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, -0x30

    add-int/2addr v2, v5

    add-int/lit8 v0, v0, -0x2

    goto :goto_7

    :cond_8
    mul-int/lit8 v0, v2, 0x3

    rem-int/lit8 v0, v0, 0xa

    if-eq v0, v3, :cond_9

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_9
    return v1

    :cond_a
    move v0, v2

    goto :goto_2
.end method

.method final decodeRow(ILcom/google/zxing/common/BitArray;I)Lcom/google/zxing/Result;
    .locals 12

    const/4 v2, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    sget-object v0, Lcom/google/zxing/oned/UPCEANExtensionSupport;->a:[I

    invoke-static {p2, p3, v10, v0}, Lcom/google/zxing/oned/UPCEANReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I

    move-result-object v4

    iget-object v0, p0, Lcom/google/zxing/oned/UPCEANExtensionSupport;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->setLength(I)V

    invoke-virtual {p0, p2, v4, v0}, Lcom/google/zxing/oned/UPCEANExtensionSupport;->decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuffer;)I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move-object v0, v2

    :goto_0
    new-instance v1, Lcom/google/zxing/Result;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/zxing/ResultPoint;

    new-instance v7, Lcom/google/zxing/ResultPoint;

    aget v8, v4, v10

    aget v4, v4, v11

    add-int/2addr v4, v8

    int-to-float v4, v4

    const/high16 v8, 0x4000

    div-float/2addr v4, v8

    int-to-float v8, p1

    invoke-direct {v7, v4, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v7, v3, v10

    new-instance v4, Lcom/google/zxing/ResultPoint;

    int-to-float v5, v5

    int-to-float v7, p1

    invoke-direct {v4, v5, v7}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, v3, v11

    sget-object v4, Lcom/google/zxing/BarcodeFormat;->UPC_EAN_EXTENSION:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v1, v6, v2, v3, v4}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Lcom/google/zxing/Result;->putAllMetadata(Ljava/util/Hashtable;)V

    :cond_0
    return-object v1

    :pswitch_1
    sget-object v0, Lcom/google/zxing/ResultMetadataType;->ISSUE_NUMBER:Lcom/google/zxing/ResultMetadataType;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    move-object v3, v1

    move-object v1, v0

    :goto_1
    if-nez v3, :cond_5

    move-object v0, v2

    goto :goto_0

    :pswitch_2
    sget-object v3, Lcom/google/zxing/ResultMetadataType;->SUGGESTED_PRICE:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const-string/jumbo v0, ""

    :goto_2
    invoke-virtual {v6, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    div-int/lit8 v7, v1, 0x64

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    rem-int/lit8 v1, v1, 0x64

    const/16 v8, 0xa

    if-ge v1, v8, :cond_4

    new-instance v8, Ljava/lang/StringBuffer;

    const-string/jumbo v9, "0"

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v7, 0x2e

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    move-object v1, v3

    move-object v3, v0

    goto :goto_1

    :sswitch_0
    const-string/jumbo v0, "\u62e2"

    goto :goto_2

    :sswitch_1
    const-string/jumbo v0, "$"

    goto :goto_2

    :sswitch_2
    const-string/jumbo v0, "90000"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v2

    goto :goto_4

    :cond_1
    const-string/jumbo v0, "99991"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "0.00"

    goto :goto_4

    :cond_2
    const-string/jumbo v0, "99990"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "Used"

    goto :goto_4

    :cond_3
    const-string/jumbo v0, ""

    goto :goto_2

    :cond_4
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v11}, Ljava/util/Hashtable;-><init>(I)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x35 -> :sswitch_1
        0x39 -> :sswitch_2
    .end sparse-switch
.end method
