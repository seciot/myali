.class public final Lcom/google/zxing/oned/Code128Writer;
.super Lcom/google/zxing/oned/UPCEANWriter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANWriter;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;II)Z
    .locals 3

    add-int v0, p1, p2

    :goto_0
    if-ge p1, v0, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    const/16 v2, 0x39

    if-le v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Hashtable;)Lcom/google/zxing/common/BitMatrix;
    .locals 3

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    if-eq p2, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v2, "Can only encode CODE_128, but got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/UPCEANWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Hashtable;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public final encode(Ljava/lang/String;)[B
    .locals 13

    const/16 v6, 0x63

    const/4 v8, 0x1

    const/16 v7, 0x64

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    const/16 v0, 0x50

    if-le v10, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v2, "Contents length should be between 1 and 80 characters, but got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v5

    :goto_0
    if-ge v0, v10, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-lt v1, v2, :cond_2

    const/16 v2, 0x7e

    if-le v1, v2, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Contents should only contain characters between \' \' and \'~\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    move v2, v5

    move v3, v5

    move v4, v8

    move v9, v5

    :goto_1
    if-ge v2, v10, :cond_b

    if-ne v3, v6, :cond_5

    const/4 v0, 0x2

    :goto_2
    sub-int v1, v10, v2

    if-lt v1, v0, :cond_6

    invoke-static {p1, v2, v0}, Lcom/google/zxing/oned/Code128Writer;->a(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_6

    move v1, v6

    :goto_3
    if-ne v1, v3, :cond_8

    if-ne v3, v7, :cond_7

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x20

    add-int/lit8 v1, v2, 0x1

    move v2, v3

    :goto_4
    sget-object v3, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object v3, v3, v0

    invoke-virtual {v11, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    mul-int/2addr v0, v4

    add-int v3, v9, v0

    if-eqz v1, :cond_f

    add-int/lit8 v0, v4, 0x1

    :goto_5
    move v4, v0

    move v9, v3

    move v3, v2

    move v2, v1

    goto :goto_1

    :cond_5
    const/4 v0, 0x4

    goto :goto_2

    :cond_6
    move v1, v7

    goto :goto_3

    :cond_7
    add-int/lit8 v0, v2, 0x2

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v1, v2, 0x2

    move v2, v3

    goto :goto_4

    :cond_8
    if-nez v3, :cond_a

    if-ne v1, v7, :cond_9

    const/16 v0, 0x68

    :goto_6
    move v12, v2

    move v2, v1

    move v1, v12

    goto :goto_4

    :cond_9
    const/16 v0, 0x69

    goto :goto_6

    :cond_a
    move v0, v1

    goto :goto_6

    :cond_b
    rem-int/lit8 v0, v9, 0x67

    sget-object v1, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object v0, v1, v0

    invoke-virtual {v11, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v0, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    const/16 v1, 0x6a

    aget-object v0, v0, v1

    invoke-virtual {v11, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v11}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v3

    move v1, v5

    :cond_c
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    move v2, v5

    :goto_7
    array-length v4, v0

    if-ge v2, v4, :cond_c

    aget v4, v0, v2

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_d
    new-array v1, v1, [B

    invoke-virtual {v11}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-static {v1, v5, v0, v8}, Lcom/google/zxing/oned/Code128Writer;->appendPattern([BI[II)I

    move-result v0

    add-int/2addr v5, v0

    goto :goto_8

    :cond_e
    return-object v1

    :cond_f
    move v0, v4

    goto :goto_5
.end method
