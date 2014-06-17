.class public final Lcom/google/zxing/oned/Code39Reader;
.super Lcom/google/zxing/oned/OneDReader;


# static fields
.field static final ALPHABET_STRING:Ljava/lang/String; = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%"

.field static final CHARACTER_ENCODINGS:[I

.field private static final a:[C

.field private static final b:I


# instance fields
.field private final c:Z

.field private final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/Code39Reader;->a:[C

    const/16 v0, 0x2c

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    const/16 v1, 0x27

    aget v0, v0, v1

    sput v0, Lcom/google/zxing/oned/Code39Reader;->b:I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x34t 0x0t 0x0t 0x0t
        0x21t 0x1t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0x60t 0x1t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x30t 0x1t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x24t 0x1t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x9t 0x1t 0x0t 0x0t
        0x49t 0x0t 0x0t 0x0t
        0x48t 0x1t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x18t 0x1t 0x0t 0x0t
        0x58t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xct 0x1t 0x0t 0x0t
        0x4ct 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x3t 0x1t 0x0t 0x0t
        0x43t 0x0t 0x0t 0x0t
        0x42t 0x1t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x12t 0x1t 0x0t 0x0t
        0x52t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x6t 0x1t 0x0t 0x0t
        0x46t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x81t 0x1t 0x0t 0x0t
        0xc1t 0x0t 0x0t 0x0t
        0xc0t 0x1t 0x0t 0x0t
        0x91t 0x0t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t
        0xd0t 0x0t 0x0t 0x0t
        0x85t 0x0t 0x0t 0x0t
        0x84t 0x1t 0x0t 0x0t
        0xc4t 0x0t 0x0t 0x0t
        0x94t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0xa2t 0x0t 0x0t 0x0t
        0x8at 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    iput-boolean v0, p0, Lcom/google/zxing/oned/Code39Reader;->c:Z

    iput-boolean v0, p0, Lcom/google/zxing/oned/Code39Reader;->d:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    iput-boolean p1, p0, Lcom/google/zxing/oned/Code39Reader;->c:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/zxing/oned/Code39Reader;->d:Z

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    iput-boolean p1, p0, Lcom/google/zxing/oned/Code39Reader;->c:Z

    iput-boolean p2, p0, Lcom/google/zxing/oned/Code39Reader;->d:Z

    return-void
.end method

.method private static a(I)C
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    aget v1, v1, v0

    if-ne v1, p0, :cond_0

    sget-object v1, Lcom/google/zxing/oned/Code39Reader;->a:[C

    aget-char v0, v1, v0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method private static a([I)I
    .locals 13

    const/4 v11, 0x3

    const/4 v5, -0x1

    const/4 v1, 0x0

    array-length v7, p0

    move v0, v1

    :goto_0
    const v2, 0x7fffffff

    move v4, v1

    :goto_1
    if-ge v4, v7, :cond_1

    aget v3, p0, v4

    if-ge v3, v2, :cond_0

    if-le v3, v0, :cond_0

    move v2, v3

    :cond_0
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_1

    :cond_1
    move v6, v1

    move v0, v1

    move v3, v1

    move v4, v1

    :goto_2
    if-ge v6, v7, :cond_3

    aget v8, p0, v6

    aget v9, p0, v6

    if-le v9, v2, :cond_2

    const/4 v9, 0x1

    add-int/lit8 v10, v7, -0x1

    sub-int/2addr v10, v6

    shl-int/2addr v9, v10

    or-int/2addr v0, v9

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v8

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    if-ne v4, v11, :cond_6

    move v12, v1

    move v1, v4

    move v4, v12

    :goto_3
    if-ge v4, v7, :cond_4

    if-lez v1, :cond_4

    aget v6, p0, v4

    aget v8, p0, v4

    if-le v8, v2, :cond_5

    add-int/lit8 v1, v1, -0x1

    shl-int/lit8 v6, v6, 0x1

    if-lt v6, v3, :cond_5

    move v0, v5

    :cond_4
    :goto_4
    return v0

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    if-gt v4, v11, :cond_7

    move v0, v5

    goto :goto_4

    :cond_7
    move v0, v2

    goto :goto_0
.end method

.method private static a(Ljava/lang/StringBuffer;)Ljava/lang/String;
    .locals 8

    const/4 v1, 0x0

    const/16 v7, 0x5a

    const/16 v6, 0x41

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_8

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    const/16 v5, 0x2b

    if-eq v0, v5, :cond_0

    const/16 v5, 0x24

    if-eq v0, v5, :cond_0

    const/16 v5, 0x25

    if-eq v0, v5, :cond_0

    const/16 v5, 0x2f

    if-ne v0, v5, :cond_7

    :cond_0
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    sparse-switch v0, :sswitch_data_0

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v2, 0x1

    :goto_2
    add-int/lit8 v2, v0, 0x1

    goto :goto_0

    :sswitch_0
    if-lt v5, v6, :cond_1

    if-gt v5, v7, :cond_1

    add-int/lit8 v0, v5, 0x20

    int-to-char v0, v0

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :sswitch_1
    if-lt v5, v6, :cond_2

    if-gt v5, v7, :cond_2

    add-int/lit8 v0, v5, -0x40

    int-to-char v0, v0

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :sswitch_2
    if-lt v5, v6, :cond_3

    const/16 v0, 0x45

    if-gt v5, v0, :cond_3

    add-int/lit8 v0, v5, -0x26

    int-to-char v0, v0

    goto :goto_1

    :cond_3
    const/16 v0, 0x46

    if-lt v5, v0, :cond_4

    const/16 v0, 0x57

    if-gt v5, v0, :cond_4

    add-int/lit8 v0, v5, -0xb

    int-to-char v0, v0

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :sswitch_3
    if-lt v5, v6, :cond_5

    const/16 v0, 0x4f

    if-gt v5, v0, :cond_5

    add-int/lit8 v0, v5, -0x20

    int-to-char v0, v0

    goto :goto_1

    :cond_5
    if-ne v5, v7, :cond_6

    const/16 v0, 0x3a

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_7
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v2

    goto :goto_2

    :cond_8
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_1
        0x25 -> :sswitch_2
        0x2b -> :sswitch_0
        0x2f -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public final decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Hashtable;)Lcom/google/zxing/Result;
    .locals 10

    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    invoke-virtual {p2, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/16 v2, 0x9

    new-array v6, v2, [I

    const/4 v2, 0x0

    array-length v7, v6

    move v4, v0

    :goto_1
    if-ge v4, v5, :cond_6

    invoke-virtual {p2, v4}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    xor-int/2addr v3, v2

    if-eqz v3, :cond_1

    aget v3, v6, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v6, v1

    :goto_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v7, -0x1

    if-ne v1, v3, :cond_4

    invoke-static {v6}, Lcom/google/zxing/oned/Code39Reader;->a([I)I

    move-result v3

    sget v8, Lcom/google/zxing/oned/Code39Reader;->b:I

    if-ne v3, v8, :cond_2

    const/4 v3, 0x0

    sub-int v8, v4, v0

    div-int/lit8 v8, v8, 0x2

    sub-int v8, v0, v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v8, 0x0

    invoke-virtual {p2, v3, v0, v8}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x2

    new-array v5, v1, [I

    const/4 v1, 0x0

    aput v0, v5, v1

    const/4 v0, 0x1

    aput v4, v5, v0

    const/4 v0, 0x1

    aget v0, v5, v0

    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    :goto_3
    if-ge v0, v4, :cond_7

    invoke-virtual {p2, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_7

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    aget v3, v6, v3

    const/4 v8, 0x1

    aget v8, v6, v8

    add-int/2addr v3, v8

    add-int/2addr v0, v3

    const/4 v3, 0x2

    :goto_4
    if-ge v3, v7, :cond_3

    add-int/lit8 v8, v3, -0x2

    aget v9, v6, v3

    aput v9, v6, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v3, v7, -0x2

    const/4 v8, 0x0

    aput v8, v6, v3

    add-int/lit8 v3, v7, -0x1

    const/4 v8, 0x0

    aput v8, v6, v3

    add-int/lit8 v1, v1, -0x1

    :goto_5
    const/4 v3, 0x1

    aput v3, v6, v1

    if-nez v2, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_7
    new-instance v6, Ljava/lang/StringBuffer;

    const/16 v1, 0x14

    invoke-direct {v6, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/16 v1, 0x9

    new-array v7, v1, [I

    :goto_6
    invoke-static {p2, v0, v7}, Lcom/google/zxing/oned/Code39Reader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    invoke-static {v7}, Lcom/google/zxing/oned/Code39Reader;->a([I)I

    move-result v1

    if-gez v1, :cond_8

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_8
    invoke-static {v1}, Lcom/google/zxing/oned/Code39Reader;->a(I)C

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    move v2, v0

    :goto_7
    array-length v8, v7

    if-ge v1, v8, :cond_12

    aget v8, v7, v1

    add-int/2addr v2, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :goto_8
    if-ge v1, v4, :cond_9

    invoke-virtual {p2, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_9

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_9
    const/16 v2, 0x2a

    if-ne v3, v2, :cond_11

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_9
    array-length v8, v7

    if-ge v2, v8, :cond_a

    aget v8, v7, v2

    add-int/2addr v3, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_a
    sub-int v2, v1, v0

    sub-int/2addr v2, v3

    if-eq v1, v4, :cond_b

    div-int/lit8 v2, v2, 0x2

    if-ge v2, v3, :cond_b

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_b
    iget-boolean v2, p0, Lcom/google/zxing/oned/Code39Reader;->c:Z

    if-eqz v2, :cond_e

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v4, :cond_c

    const-string/jumbo v7, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/2addr v3, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_c
    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    sget-object v7, Lcom/google/zxing/oned/Code39Reader;->a:[C

    rem-int/lit8 v3, v3, 0x2b

    aget-char v3, v7, v3

    if-eq v2, v3, :cond_d

    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0

    :cond_d
    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    :cond_e
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-nez v2, :cond_f

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_f
    iget-boolean v2, p0, Lcom/google/zxing/oned/Code39Reader;->d:Z

    if-eqz v2, :cond_10

    invoke-static {v6}, Lcom/google/zxing/oned/Code39Reader;->a(Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v2

    :goto_b
    const/4 v3, 0x1

    aget v3, v5, v3

    const/4 v4, 0x0

    aget v4, v5, v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    new-instance v1, Lcom/google/zxing/Result;

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/google/zxing/ResultPoint;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/ResultPoint;

    int-to-float v8, p1

    invoke-direct {v7, v3, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v7, v5, v6

    const/4 v3, 0x1

    new-instance v6, Lcom/google/zxing/ResultPoint;

    int-to-float v7, p1

    invoke-direct {v6, v0, v7}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v6, v5, v3

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v1, v2, v4, v5, v0}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v1

    :cond_10
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    :cond_11
    move v0, v1

    goto/16 :goto_6

    :cond_12
    move v1, v2

    goto/16 :goto_8
.end method
