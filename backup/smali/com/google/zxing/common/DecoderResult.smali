.class public final Lcom/google/zxing/common/DecoderResult;
.super Ljava/lang/Object;


# instance fields
.field private final a:[B

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/Vector;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/String;Ljava/util/Vector;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/zxing/common/DecoderResult;->a:[B

    iput-object p2, p0, Lcom/google/zxing/common/DecoderResult;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/zxing/common/DecoderResult;->c:Ljava/util/Vector;

    iput-object p4, p0, Lcom/google/zxing/common/DecoderResult;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getByteSegments()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/common/DecoderResult;->c:Ljava/util/Vector;

    return-object v0
.end method

.method public final getECLevel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/common/DecoderResult;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getRawBytes()[B
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/common/DecoderResult;->a:[B

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/common/DecoderResult;->b:Ljava/lang/String;

    return-object v0
.end method
