.class public final Lcom/google/zxing/oned/UPCEReader;
.super Lcom/google/zxing/oned/UPCEANReader;


# static fields
.field private static final a:[I

.field private static final b:[[I


# instance fields
.field private final c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0xa

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/UPCEReader;->a:[I

    const/4 v0, 0x2

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/oned/UPCEReader;->b:[[I

    return-void

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x38t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANReader;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEReader;->c:[I

    return-void
.end method

.method public static convertUPCEtoUPCA(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v0, 0x6

    new-array v0, v0, [C

    const/4 v1, 0x1

    const/4 v2, 0x7

    invoke-virtual {p0, v1, v2, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-char v2, v0, v7

    packed-switch v2, :pswitch_data_0

    invoke-virtual {v1, v0, v3, v7}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    const-string/jumbo v0, "0000"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_0
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-virtual {v1, v0, v3, v4}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string/jumbo v2, "0000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0, v4, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_1
    invoke-virtual {v1, v0, v3, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    const-string/jumbo v2, "00000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0, v5, v4}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_2
    invoke-virtual {v1, v0, v3, v6}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    const-string/jumbo v2, "00000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-char v0, v0, v6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected final checkChecksum(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lcom/google/zxing/oned/UPCEReader;->convertUPCEtoUPCA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/google/zxing/oned/UPCEANReader;->checkChecksum(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected final decodeEnd(Lcom/google/zxing/common/BitArray;I)[I
    .locals 2

    const/4 v0, 0x1

    sget-object v1, Lcom/google/zxing/oned/UPCEReader;->a:[I

    invoke-static {p1, p2, v0, v1}, Lcom/google/zxing/oned/UPCEReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I

    move-result-object v0

    return-object v0
.end method

.method protected final decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuffer;)I
    .locals 11

    const/16 v10, 0xa

    const/4 v9, 0x1

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/google/zxing/oned/UPCEReader;->c:[I

    aput v1, v5, v1

    aput v1, v5, v9

    const/4 v0, 0x2

    aput v1, v5, v0

    const/4 v0, 0x3

    aput v1, v5, v0

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    aget v0, p2, v9

    move v4, v1

    move v3, v1

    :goto_0
    const/4 v2, 0x6

    if-ge v4, v2, :cond_1

    if-ge v0, v6, :cond_1

    sget-object v2, Lcom/google/zxing/oned/UPCEReader;->L_AND_G_PATTERNS:[[I

    invoke-static {p1, v5, v0, v2}, Lcom/google/zxing/oned/UPCEReader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v7

    rem-int/lit8 v2, v7, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v0

    move v0, v1

    :goto_1
    array-length v8, v5

    if-ge v0, v8, :cond_0

    aget v8, v5, v0

    add-int/2addr v2, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    if-lt v7, v10, :cond_5

    rsub-int/lit8 v0, v4, 0x5

    shl-int v0, v9, v0

    or-int/2addr v0, v3

    :goto_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v0

    move v0, v2

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_3
    if-gt v4, v9, :cond_4

    move v2, v1

    :goto_4
    if-ge v2, v10, :cond_3

    sget-object v5, Lcom/google/zxing/oned/UPCEReader;->b:[[I

    aget-object v5, v5, v4

    aget v5, v5, v2

    if-ne v3, v5, :cond_2

    add-int/lit8 v3, v4, 0x30

    int-to-char v3, v3

    invoke-virtual {p3, v1, v3}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v2, 0x30

    int-to-char v1, v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_3

    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_5
    move v0, v3

    goto :goto_2
.end method

.method final getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
    .locals 1

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    return-object v0
.end method
