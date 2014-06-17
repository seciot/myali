.class public final Lcom/google/zxing/qrcode/decoder/Decoder;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    sget-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->QR_CODE_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    iput-object v0, p0, Lcom/google/zxing/qrcode/decoder/Decoder;->a:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    return-void
.end method


# virtual methods
.method public final decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Hashtable;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0

    return-object v0
.end method

.method public final decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Hashtable;)Lcom/google/zxing/common/DecoderResult;
    .locals 13

    const/4 v1, 0x0

    new-instance v0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;

    invoke-direct {v0, p1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readVersion()Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readFormatInformation()Lcom/google/zxing/qrcode/decoder/FormatInformation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->getErrorCorrectionLevel()Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readCodewords()[B

    move-result-object v0

    invoke-static {v0, v5, v6}, Lcom/google/zxing/qrcode/decoder/DataBlock;->getDataBlocks([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)[Lcom/google/zxing/qrcode/decoder/DataBlock;

    move-result-object v7

    move v0, v1

    move v2, v1

    :goto_0
    array-length v3, v7

    if-ge v0, v3, :cond_0

    aget-object v3, v7, v0

    invoke-virtual {v3}, Lcom/google/zxing/qrcode/decoder/DataBlock;->getNumDataCodewords()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-array v8, v2, [B

    move v0, v1

    move v2, v1

    :goto_1
    array-length v3, v7

    if-ge v0, v3, :cond_4

    aget-object v3, v7, v0

    invoke-virtual {v3}, Lcom/google/zxing/qrcode/decoder/DataBlock;->getCodewords()[B

    move-result-object v9

    invoke-virtual {v3}, Lcom/google/zxing/qrcode/decoder/DataBlock;->getNumDataCodewords()I

    move-result v10

    array-length v4, v9

    new-array v11, v4, [I

    move v3, v1

    :goto_2
    if-ge v3, v4, :cond_1

    aget-byte v12, v9, v3

    and-int/lit16 v12, v12, 0xff

    aput v12, v11, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    array-length v3, v9

    sub-int/2addr v3, v10

    :try_start_0
    iget-object v4, p0, Lcom/google/zxing/qrcode/decoder/Decoder;->a:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    invoke-virtual {v4, v11, v3}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v1

    :goto_3
    if-ge v3, v10, :cond_2

    aget v4, v11, v3

    int-to-byte v4, v4

    aput-byte v4, v9, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0

    :cond_2
    move v3, v1

    :goto_4
    if-ge v3, v10, :cond_3

    add-int/lit8 v4, v2, 0x1

    aget-byte v11, v9, v3

    aput-byte v11, v8, v2

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-static {v8, v5, v6, p2}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decode([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Hashtable;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0

    return-object v0
.end method

.method public final decode([[Z)Lcom/google/zxing/common/DecoderResult;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode([[ZLjava/util/Hashtable;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0

    return-object v0
.end method

.method public final decode([[ZLjava/util/Hashtable;)Lcom/google/zxing/common/DecoderResult;
    .locals 6

    const/4 v1, 0x0

    array-length v3, p1

    new-instance v4, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v4, v3}, Lcom/google/zxing/common/BitMatrix;-><init>(I)V

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v5, p1, v2

    aget-boolean v5, v5, v0

    if-eqz v5, :cond_0

    invoke-virtual {v4, v0, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v4, p2}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Hashtable;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0

    return-object v0
.end method
