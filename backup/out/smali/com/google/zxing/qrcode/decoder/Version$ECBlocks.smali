.class public final Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:[Lcom/google/zxing/qrcode/decoder/Version$ECB;


# direct methods
.method constructor <init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->a:I

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    iput-object v0, p0, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->b:[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    return-void
.end method

.method constructor <init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->a:I

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    iput-object v0, p0, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->b:[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    return-void
.end method


# virtual methods
.method public final getECBlocks()[Lcom/google/zxing/qrcode/decoder/Version$ECB;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->b:[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    return-object v0
.end method

.method public final getECCodewordsPerBlock()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->a:I

    return v0
.end method

.method public final getNumBlocks()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->b:[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->b:[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final getTotalECCodewords()I
    .locals 2

    iget v0, p0, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->a:I

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getNumBlocks()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method
