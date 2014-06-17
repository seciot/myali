.class public final Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
.super Ljava/lang/Object;


# static fields
.field public static final H:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

.field public static final L:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

.field public static final M:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

.field public static final Q:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

.field private static final a:[Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;


# instance fields
.field private final b:I

.field private final c:I

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    const-string/jumbo v1, "L"

    invoke-direct {v0, v2, v3, v1}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->L:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    new-instance v0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    const-string/jumbo v1, "M"

    invoke-direct {v0, v3, v2, v1}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->M:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    new-instance v0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    const-string/jumbo v1, "Q"

    invoke-direct {v0, v4, v5, v1}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->Q:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    new-instance v0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    const-string/jumbo v1, "H"

    invoke-direct {v0, v5, v4, v1}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->H:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    sget-object v1, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->M:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->L:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->H:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->Q:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->a:[Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    return-void
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->b:I

    iput p2, p0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->c:I

    iput-object p3, p0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->d:Ljava/lang/String;

    return-void
.end method

.method public static forBits(I)Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .locals 1

    if-ltz p0, :cond_0

    sget-object v0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->a:[Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    array-length v0, v0

    if-lt p0, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    sget-object v0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->a:[Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    aget-object v0, v0, p0

    return-object v0
.end method


# virtual methods
.method public final getBits()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->c:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final ordinal()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->b:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->d:Ljava/lang/String;

    return-object v0
.end method
