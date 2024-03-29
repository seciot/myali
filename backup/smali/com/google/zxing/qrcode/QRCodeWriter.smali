.class public final Lcom/google/zxing/qrcode/QRCodeWriter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/zxing/Writer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/zxing/qrcode/encoder/QRCode;II)Lcom/google/zxing/common/BitMatrix;
    .locals 13

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/QRCode;->getMatrix()Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v7

    invoke-virtual {v6}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v8

    add-int/lit8 v0, v7, 0x8

    add-int/lit8 v1, v8, 0x8

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    div-int v0, v2, v0

    div-int v1, v4, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    mul-int v0, v7, v9

    sub-int v0, v2, v0

    div-int/lit8 v1, v0, 0x2

    mul-int v0, v8, v9

    sub-int v0, v4, v0

    div-int/lit8 v0, v0, 0x2

    new-instance v10, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v10, v2, v4}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    move v4, v0

    move v5, v3

    :goto_0
    if-ge v5, v8, :cond_2

    move v0, v1

    move v2, v3

    :goto_1
    if-ge v2, v7, :cond_1

    invoke-virtual {v6, v2, v5}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    invoke-virtual {v10, v0, v4, v9, v9}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v9

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v5, 0x1

    add-int v0, v4, v9

    move v4, v0

    move v5, v2

    goto :goto_0

    :cond_2
    return-object v10
.end method


# virtual methods
.method public final encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Hashtable;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public final encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Hashtable;)Lcom/google/zxing/common/BitMatrix;
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Found empty contents"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    if-eq p2, v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v2, "Can only encode QR_CODE, but got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-ltz p3, :cond_3

    if-gez p4, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v2, "Requested dimensions are too small: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    sget-object v1, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->L:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    if-eqz p5, :cond_5

    sget-object v0, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    invoke-virtual {p5, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    if-eqz v0, :cond_5

    :goto_0
    new-instance v1, Lcom/google/zxing/qrcode/encoder/QRCode;

    invoke-direct {v1}, Lcom/google/zxing/qrcode/encoder/QRCode;-><init>()V

    invoke-static {p1, v0, p5, v1}, Lcom/google/zxing/qrcode/encoder/Encoder;->encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Hashtable;Lcom/google/zxing/qrcode/encoder/QRCode;)V

    invoke-static {v1, p3, p4}, Lcom/google/zxing/qrcode/QRCodeWriter;->a(Lcom/google/zxing/qrcode/encoder/QRCode;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method
