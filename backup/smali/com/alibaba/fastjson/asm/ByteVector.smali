.class public Lcom/alibaba/fastjson/asm/ByteVector;
.super Ljava/lang/Object;


# instance fields
.field data:[B

.field length:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    return-void
.end method

.method private enlarge(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    add-int/2addr v1, p1

    if-le v0, v1, :cond_0

    :goto_0
    new-array v0, v0, [B

    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    iget v2, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method put11(II)Lcom/alibaba/fastjson/asm/ByteVector;
    .locals 4

    iget v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    add-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ByteVector;->enlarge(I)V

    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    add-int/lit8 v2, v0, 0x1

    int-to-byte v3, p1

    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x1

    int-to-byte v3, p2

    aput-byte v3, v1, v2

    iput v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    return-object p0
.end method

.method put12(II)Lcom/alibaba/fastjson/asm/ByteVector;
    .locals 4

    iget v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    add-int/lit8 v1, v0, 0x3

    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ByteVector;->enlarge(I)V

    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    add-int/lit8 v2, v0, 0x1

    int-to-byte v3, p1

    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x1

    ushr-int/lit8 v3, p2, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v0, 0x1

    int-to-byte v3, p2

    aput-byte v3, v1, v0

    iput v2, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    return-object p0
.end method

.method public putByte(I)Lcom/alibaba/fastjson/asm/ByteVector;
    .locals 4

    iget v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ByteVector;->enlarge(I)V

    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    add-int/lit8 v2, v0, 0x1

    int-to-byte v3, p1

    aput-byte v3, v1, v0

    iput v2, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    return-object p0
.end method

.method public putByteArray([BII)Lcom/alibaba/fastjson/asm/ByteVector;
    .locals 2

    iget v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    invoke-direct {p0, p3}, Lcom/alibaba/fastjson/asm/ByteVector;->enlarge(I)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    iget v1, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    return-object p0
.end method

.method public putInt(I)Lcom/alibaba/fastjson/asm/ByteVector;
    .locals 4

    iget v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    add-int/lit8 v1, v0, 0x4

    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ByteVector;->enlarge(I)V

    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    add-int/lit8 v2, v0, 0x1

    ushr-int/lit8 v3, p1, 0x18

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x1

    ushr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v0, 0x1

    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x1

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    iput v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    return-object p0
.end method

.method public putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;
    .locals 4

    iget v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    add-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ByteVector;->enlarge(I)V

    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    add-int/lit8 v2, v0, 0x1

    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x1

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    iput v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    return-object p0
.end method

.method public putUTF8(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/ByteVector;
    .locals 6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    iget v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    add-int/lit8 v1, v0, 0x2

    add-int/2addr v1, v3

    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    add-int/lit8 v1, v3, 0x2

    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ByteVector;->enlarge(I)V

    :cond_0
    iget-object v4, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    add-int/lit8 v2, v0, 0x1

    ushr-int/lit8 v1, v3, 0x8

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    add-int/lit8 v1, v2, 0x1

    int-to-byte v0, v3

    aput-byte v0, v4, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lez v5, :cond_1

    const/16 v2, 0x7f

    if-gt v5, v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    return-object p0
.end method
