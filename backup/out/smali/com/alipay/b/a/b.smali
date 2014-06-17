.class public final Lcom/alipay/b/a/b;
.super Ljava/lang/Object;


# static fields
.field private static h:[F

.field private static i:[F

.field private static j:[F

.field private static k:[F

.field private static l:[F

.field private static m:[F

.field private static y:Lcom/alipay/b/a/b;


# instance fields
.field private A:[F

.field private B:[F

.field protected a:[B

.field protected b:I

.field protected c:I

.field protected d:F

.field protected e:Z

.field protected f:I

.field protected g:J

.field private n:[[F

.field private o:[[Ljava/lang/StringBuffer;

.field private p:[[F

.field private q:[[Ljava/lang/StringBuffer;

.field private r:[S

.field private s:I

.field private t:Ljava/lang/StringBuffer;

.field private u:[C

.field private v:I

.field private w:F

.field private x:Lcom/alipay/b/a/c;

.field private z:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x4

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alipay/b/a/b;->h:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/alipay/b/a/b;->i:[F

    new-array v0, v1, [F

    sput-object v0, Lcom/alipay/b/a/b;->j:[F

    new-array v0, v1, [F

    sput-object v0, Lcom/alipay/b/a/b;->k:[F

    new-array v0, v1, [F

    sput-object v0, Lcom/alipay/b/a/b;->l:[F

    new-array v0, v1, [F

    sput-object v0, Lcom/alipay/b/a/b;->m:[F

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x30t 0x89t 0x46t
        0x0t 0x98t 0x8at 0x46t
        0x0t 0x0t 0x8ct 0x46t
        0x0t 0x68t 0x8dt 0x46t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x80t 0xbbt 0x44t
        0x0t 0x80t 0xd4t 0x44t
        0x0t 0x80t 0xedt 0x44t
        0x0t 0x40t 0x3t 0x45t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 12

    const-wide/high16 v10, 0x4000

    const/16 v9, 0x90

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    filled-new-array {v7, v9}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/alipay/b/a/b;->n:[[F

    filled-new-array {v7, v9}, [I

    move-result-object v0

    const-class v2, Ljava/lang/StringBuffer;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/StringBuffer;

    iput-object v0, p0, Lcom/alipay/b/a/b;->o:[[Ljava/lang/StringBuffer;

    filled-new-array {v7, v9}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/alipay/b/a/b;->p:[[F

    filled-new-array {v7, v9}, [I

    move-result-object v0

    const-class v2, Ljava/lang/StringBuffer;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/StringBuffer;

    iput-object v0, p0, Lcom/alipay/b/a/b;->q:[[Ljava/lang/StringBuffer;

    const v0, 0xf938

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/alipay/b/a/b;->r:[S

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v2, 0x121

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/b/a/b;->t:Ljava/lang/StringBuffer;

    new-array v0, v9, [C

    iput-object v0, p0, Lcom/alipay/b/a/b;->u:[C

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/alipay/b/a/b;->a:[B

    const/high16 v0, 0x4140

    iput v0, p0, Lcom/alipay/b/a/b;->w:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/b/a/b;->d:F

    iput-boolean v1, p0, Lcom/alipay/b/a/b;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/b/a/b;->x:Lcom/alipay/b/a/c;

    new-array v0, v7, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/alipay/b/a/b;->z:[I

    new-array v0, v7, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/alipay/b/a/b;->A:[F

    new-array v0, v8, [F

    iput-object v0, p0, Lcom/alipay/b/a/b;->B:[F

    move v0, v1

    :goto_0
    if-lt v0, v8, :cond_0

    move v0, v1

    :goto_1
    if-lt v0, v8, :cond_1

    move v0, v1

    :goto_2
    if-lt v0, v8, :cond_2

    move v0, v1

    :goto_3
    if-lt v0, v8, :cond_3

    const/high16 v0, 0x4140

    iput v0, p0, Lcom/alipay/b/a/b;->w:F

    move v2, v1

    :goto_4
    if-lt v2, v7, :cond_4

    return-void

    :cond_0
    sget-object v2, Lcom/alipay/b/a/b;->j:[F

    const-wide v3, 0x401921fb54442d18L

    sget-object v5, Lcom/alipay/b/a/b;->h:[F

    aget v5, v5, v0

    float-to-double v5, v5

    mul-double/2addr v3, v5

    const-wide v5, 0x40e5888000000000L

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v3, v10

    double-to-float v3, v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/alipay/b/a/b;->k:[F

    const-wide v3, 0x401921fb54442d18L

    sget-object v5, Lcom/alipay/b/a/b;->h:[F

    aget v5, v5, v0

    float-to-double v5, v5

    mul-double/2addr v3, v5

    const-wide v5, 0x40e5888000000000L

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v3, v10

    double-to-float v3, v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/alipay/b/a/b;->l:[F

    const-wide v3, 0x401921fb54442d18L

    sget-object v5, Lcom/alipay/b/a/b;->i:[F

    aget v5, v5, v0

    float-to-double v5, v5

    mul-double/2addr v3, v5

    const-wide v5, 0x40e5888000000000L

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v3, v10

    double-to-float v3, v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    sget-object v2, Lcom/alipay/b/a/b;->m:[F

    const-wide v3, 0x401921fb54442d18L

    sget-object v5, Lcom/alipay/b/a/b;->i:[F

    aget v5, v5, v0

    float-to-double v5, v5

    mul-double/2addr v3, v5

    const-wide v5, 0x40e5888000000000L

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v3, v10

    double-to-float v3, v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    :cond_4
    move v0, v1

    :goto_5
    if-lt v0, v9, :cond_5

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_4

    :cond_5
    iget-object v3, p0, Lcom/alipay/b/a/b;->o:[[Ljava/lang/StringBuffer;

    aget-object v3, v3, v2

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    aput-object v4, v3, v0

    iget-object v3, p0, Lcom/alipay/b/a/b;->q:[[Ljava/lang/StringBuffer;

    aget-object v3, v3, v2

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private static a([SIFF)F
    .locals 7

    const/high16 v5, 0x3f00

    const/4 v0, 0x0

    add-int/lit16 v2, p1, 0xdc

    move v1, v0

    :goto_0
    if-lt p1, v2, :cond_0

    mul-float v2, v5, p2

    mul-float/2addr v2, v1

    sub-float/2addr v2, v0

    mul-float v3, v5, p3

    mul-float/2addr v1, v3

    sub-float v0, v1, v0

    mul-float v1, v2, v2

    mul-float/2addr v0, v0

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    const/high16 v1, 0x435c

    div-float/2addr v0, v1

    return v0

    :cond_0
    aget-short v3, p0, p1

    int-to-float v3, v3

    mul-float v4, p2, v1

    add-float/2addr v3, v4

    sub-float v0, v3, v0

    add-int/lit8 p1, p1, 0x1

    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_0
.end method

.method public static a()Lcom/alipay/b/a/b;
    .locals 1

    sget-object v0, Lcom/alipay/b/a/b;->y:Lcom/alipay/b/a/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/b/a/b;

    invoke-direct {v0}, Lcom/alipay/b/a/b;-><init>()V

    sput-object v0, Lcom/alipay/b/a/b;->y:Lcom/alipay/b/a/b;

    :cond_0
    sget-object v0, Lcom/alipay/b/a/b;->y:Lcom/alipay/b/a/b;

    return-object v0
.end method

.method private static a([F[I[FLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 7

    const/4 v6, 0x4

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    aput v5, p1, v4

    aput v5, p1, v1

    const/4 v0, 0x0

    aput v0, p2, v4

    aput v0, p2, v1

    move v0, v1

    :goto_0
    if-lt v0, v6, :cond_1

    move v0, v1

    :goto_1
    if-lt v0, v6, :cond_3

    aget v0, p1, v1

    if-ne v0, v5, :cond_5

    const/16 v0, 0x30

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object p3

    :cond_0
    :goto_2
    return-object p3

    :cond_1
    aget v2, p0, v0

    aget v3, p2, v1

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    aget v2, p0, v0

    aput v2, p2, v1

    aput v0, p1, v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    aget v2, p0, v0

    aget v3, p2, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    aget v2, p1, v1

    if-eq v0, v2, :cond_4

    aget v2, p0, v0

    aput v2, p2, v4

    aput v0, p1, v4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const-string/jumbo v0, "0123"

    aget v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget v0, p2, v1

    aget v1, p2, v4

    const/high16 v2, 0x4000

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    aget v0, p1, v4

    if-eq v0, v5, :cond_0

    const-string/jumbo v0, "0123"

    aget v1, p1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method private a(II[[F[[Ljava/lang/StringBuffer;)[B
    .locals 11

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    int-to-float v1, p2

    div-float v1, v3, v1

    iput v1, p0, Lcom/alipay/b/a/b;->d:F

    iget-object v1, p0, Lcom/alipay/b/a/b;->p:[[F

    if-ne v1, p3, :cond_4

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/alipay/b/a/b;->e:Z

    iget-boolean v1, p0, Lcom/alipay/b/a/b;->e:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/alipay/b/a/b;->w:F

    const/high16 v2, 0x40a0

    mul-float/2addr v1, v2

    :goto_2
    iget-boolean v2, p0, Lcom/alipay/b/a/b;->e:Z

    if-eqz v2, :cond_0

    const/high16 v2, 0x42f0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    const/high16 v1, 0x42f0

    :cond_0
    iget-boolean v2, p0, Lcom/alipay/b/a/b;->e:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->getInstance()Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->getReceiveDataHandler()Lcom/alipay/b/a/a;

    move-result-object v2

    iget v3, p0, Lcom/alipay/b/a/b;->d:F

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alipay/b/a/a;->OnReceiveDataInfo(Ljava/lang/String;)V

    const-string/jumbo v2, "SonicWaveNFC"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "m_dLastSubAmplitude="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/alipay/b/a/b;->d:F

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " dMinSubAmp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    float-to-int v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v2, p0, Lcom/alipay/b/a/b;->d:F

    cmpg-float v1, v2, v1

    if-gez v1, :cond_6

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_2
    const/4 v4, 0x0

    const/4 v2, 0x0

    move v10, v2

    move v2, v4

    move v4, v10

    :goto_4
    if-lt v4, p2, :cond_3

    cmpl-float v4, v2, v3

    if-lez v4, :cond_13

    move v0, v1

    :goto_5
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_0

    :cond_3
    aget-object v5, p3, v1

    add-int v6, p1, v4

    aget v5, v5, v6

    add-float/2addr v5, v2

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v5

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    iget v1, p0, Lcom/alipay/b/a/b;->w:F

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_6
    if-lt v1, p2, :cond_7

    iget-object v1, p0, Lcom/alipay/b/a/b;->u:[C

    invoke-direct {p0, v1, p2}, Lcom/alipay/b/a/b;->a([CI)[B

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/alipay/b/a/b;->a:[B

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lcom/alipay/b/a/b;->u:[C

    aget-object v3, p4, v0

    add-int v4, p1, v1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    aput-char v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_8
    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-lt v2, p2, :cond_9

    const/4 v1, 0x0

    :goto_8
    if-lt v1, p2, :cond_c

    const/4 v0, 0x0

    goto :goto_3

    :cond_9
    iget-object v1, p0, Lcom/alipay/b/a/b;->u:[C

    aget-char v3, v1, v2

    const/4 v1, 0x1

    :goto_9
    aget-object v4, p4, v0

    add-int v5, p1, v2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lt v1, v4, :cond_a

    iget-object v1, p0, Lcom/alipay/b/a/b;->u:[C

    aput-char v3, v1, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_7

    :cond_a
    iget-object v4, p0, Lcom/alipay/b/a/b;->u:[C

    aget-object v5, p4, v0

    add-int v6, p1, v2

    aget-object v5, v5, v6

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    aput-char v5, v4, v2

    iget-object v4, p0, Lcom/alipay/b/a/b;->u:[C

    invoke-direct {p0, v4, p2}, Lcom/alipay/b/a/b;->a([CI)[B

    move-result-object v4

    if-eqz v4, :cond_b

    iget-object v0, p0, Lcom/alipay/b/a/b;->a:[B

    goto :goto_3

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_c
    iget-object v2, p0, Lcom/alipay/b/a/b;->u:[C

    aget-char v5, v2, v1

    const/4 v2, 0x1

    :goto_a
    const/4 v3, 0x1

    if-gt v2, v3, :cond_d

    aget-object v3, p4, v0

    add-int v4, p1, v1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lt v2, v3, :cond_e

    :cond_d
    iget-object v2, p0, Lcom/alipay/b/a/b;->u:[C

    aput-char v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_e
    iget-object v3, p0, Lcom/alipay/b/a/b;->u:[C

    aget-object v4, p4, v0

    add-int v6, p1, v1

    aget-object v4, v4, v6

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    aput-char v4, v3, v1

    add-int/lit8 v3, v1, 0x1

    move v4, v3

    :goto_b
    if-lt v4, p2, :cond_f

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_f
    iget-object v3, p0, Lcom/alipay/b/a/b;->u:[C

    aget-char v6, v3, v4

    const/4 v3, 0x1

    :goto_c
    const/4 v7, 0x1

    if-gt v3, v7, :cond_10

    aget-object v7, p4, v0

    add-int v8, p1, v4

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-lt v3, v7, :cond_11

    :cond_10
    iget-object v3, p0, Lcom/alipay/b/a/b;->u:[C

    aput-char v6, v3, v4

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_b

    :cond_11
    iget-object v7, p0, Lcom/alipay/b/a/b;->u:[C

    aget-object v8, p4, v0

    add-int v9, p1, v4

    aget-object v8, v8, v9

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    aput-char v8, v7, v4

    iget-object v7, p0, Lcom/alipay/b/a/b;->u:[C

    invoke-direct {p0, v7, p2}, Lcom/alipay/b/a/b;->a([CI)[B

    move-result-object v7

    if-eqz v7, :cond_12

    iget-object v0, p0, Lcom/alipay/b/a/b;->a:[B

    goto/16 :goto_3

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_13
    move v2, v3

    goto/16 :goto_5
.end method

.method private a(ILjava/lang/String;)[B
    .locals 11

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    shl-int/lit8 v2, p1, 0x1

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/alipay/b/a/b;->t:Ljava/lang/StringBuffer;

    invoke-virtual {v2, p2, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const/4 v0, -0x1

    if-eq v2, v0, :cond_2

    iget v0, p0, Lcom/alipay/b/a/b;->b:I

    shl-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xc

    if-le v2, v0, :cond_1

    iget v0, p0, Lcom/alipay/b/a/b;->b:I

    shl-int/lit8 v0, v0, 0x2

    sub-int v0, v2, v0

    add-int/lit8 v3, v0, -0xc

    add-int/lit8 v4, v2, -0xc

    move v0, v1

    :goto_1
    iget v5, p0, Lcom/alipay/b/a/b;->b:I

    if-lt v0, v5, :cond_0

    iget-object v0, p0, Lcom/alipay/b/a/b;->a:[B

    iget v3, p0, Lcom/alipay/b/a/b;->b:I

    invoke-static {v0, v1, v3}, Lcom/alipay/a/a;->a([BII)I

    move-result v0

    iget-object v3, p0, Lcom/alipay/b/a/b;->t:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    ushr-int/lit8 v5, v0, 0x16

    and-int/lit8 v5, v5, 0x3

    if-ne v3, v5, :cond_1

    iget-object v3, p0, Lcom/alipay/b/a/b;->t:Ljava/lang/StringBuffer;

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    ushr-int/lit8 v5, v0, 0x14

    and-int/lit8 v5, v5, 0x3

    if-ne v3, v5, :cond_1

    iget-object v3, p0, Lcom/alipay/b/a/b;->t:Ljava/lang/StringBuffer;

    add-int/lit8 v5, v4, 0x2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    ushr-int/lit8 v5, v0, 0x12

    and-int/lit8 v5, v5, 0x3

    if-ne v3, v5, :cond_1

    iget-object v3, p0, Lcom/alipay/b/a/b;->t:Ljava/lang/StringBuffer;

    add-int/lit8 v5, v4, 0x3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    ushr-int/lit8 v5, v0, 0x10

    and-int/lit8 v5, v5, 0x3

    if-ne v3, v5, :cond_1

    iget-object v3, p0, Lcom/alipay/b/a/b;->t:Ljava/lang/StringBuffer;

    add-int/lit8 v5, v4, 0x4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    ushr-int/lit8 v5, v0, 0xe

    and-int/lit8 v5, v5, 0x3

    if-ne v3, v5, :cond_1

    iget-object v3, p0, Lcom/alipay/b/a/b;->t:Ljava/lang/StringBuffer;

    add-int/lit8 v5, v4, 0x5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    ushr-int/lit8 v5, v0, 0xc

    and-int/lit8 v5, v5, 0x3

    if-ne v3, v5, :cond_1

    iget-object v3, p0, Lcom/alipay/b/a/b;->t:Ljava/lang/StringBuffer;

    add-int/lit8 v5, v4, 0x6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    ushr-int/lit8 v5, v0, 0xa

    and-int/lit8 v5, v5, 0x3

    if-ne v3, v5, :cond_1

    iget-object v3, p0, Lcom/alipay/b/a/b;->t:Ljava/lang/StringBuffer;

    add-int/lit8 v5, v4, 0x7

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    ushr-int/lit8 v5, v0, 0x8

    and-int/lit8 v5, v5, 0x3

    if-ne v3, v5, :cond_1

    iget-object v3, p0, Lcom/alipay/b/a/b;->t:Ljava/lang/StringBuffer;

    add-int/lit8 v5, v4, 0x8

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    ushr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x3

    if-ne v3, v5, :cond_1

    iget-object v3, p0, Lcom/alipay/b/a/b;->t:Ljava/lang/StringBuffer;

    add-int/lit8 v5, v4, 0x9

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    ushr-int/lit8 v5, v0, 0x4

    and-int/lit8 v5, v5, 0x3

    if-ne v3, v5, :cond_1

    iget-object v3, p0, Lcom/alipay/b/a/b;->t:Ljava/lang/StringBuffer;

    add-int/lit8 v5, v4, 0xa

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    ushr-int/lit8 v5, v0, 0x2

    and-int/lit8 v5, v5, 0x3

    if-ne v3, v5, :cond_1

    iget-object v3, p0, Lcom/alipay/b/a/b;->t:Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0xb

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    and-int/lit8 v0, v0, 0x3

    if-ne v3, v0, :cond_1

    iget-object v0, p0, Lcom/alipay/b/a/b;->a:[B

    :goto_2
    return-object v0

    :cond_0
    const-string/jumbo v5, "0123"

    iget-object v6, p0, Lcom/alipay/b/a/b;->t:Ljava/lang/StringBuffer;

    shl-int/lit8 v7, v0, 0x2

    add-int/2addr v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const-string/jumbo v6, "0123"

    iget-object v7, p0, Lcom/alipay/b/a/b;->t:Ljava/lang/StringBuffer;

    shl-int/lit8 v8, v0, 0x2

    add-int/2addr v8, v3

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const-string/jumbo v7, "0123"

    iget-object v8, p0, Lcom/alipay/b/a/b;->t:Ljava/lang/StringBuffer;

    shl-int/lit8 v9, v0, 0x2

    add-int/2addr v9, v3

    add-int/lit8 v9, v9, 0x2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const-string/jumbo v8, "0123"

    iget-object v9, p0, Lcom/alipay/b/a/b;->t:Ljava/lang/StringBuffer;

    shl-int/lit8 v10, v0, 0x2

    add-int/2addr v10, v3

    add-int/lit8 v10, v10, 0x3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    iget-object v9, p0, Lcom/alipay/b/a/b;->a:[B

    shl-int/lit8 v5, v5, 0x6

    shl-int/lit8 v6, v6, 0x4

    or-int/2addr v5, v6

    shl-int/lit8 v6, v7, 0x2

    or-int/2addr v5, v6

    or-int/2addr v5, v8

    int-to-byte v5, v5

    aput-byte v5, v9, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_1
    add-int/lit8 v0, v2, 0x1

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private a([CI)[B
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/b/a/b;->t:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v1, p0, Lcom/alipay/b/a/b;->t:Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1, v4, p2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/alipay/b/a/b;->t:Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1, v4, p2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    add-int/lit8 v1, p2, -0xc

    add-int/lit8 v1, v1, -0x4

    div-int/lit8 v1, v1, 0x4

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return-object v0

    :sswitch_0
    const-string/jumbo v2, "0212"

    const-string/jumbo v1, "3200"

    const/16 v3, 0x8

    iput v3, p0, Lcom/alipay/b/a/b;->b:I

    move-object v3, v2

    move-object v2, v0

    :goto_1
    if-eqz v1, :cond_5

    invoke-direct {p0, p2, v1}, Lcom/alipay/b/a/b;->a(ILjava/lang/String;)[B

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/b/a/b;->c:I

    move-object v0, v1

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "1212"

    const-string/jumbo v1, "3211"

    const/16 v3, 0x10

    iput v3, p0, Lcom/alipay/b/a/b;->b:I

    move-object v3, v2

    move-object v2, v0

    goto :goto_1

    :sswitch_2
    const-string/jumbo v1, "0303"

    const/16 v2, 0xf

    iput v2, p0, Lcom/alipay/b/a/b;->b:I

    move-object v2, v1

    move-object v3, v0

    move-object v1, v0

    goto :goto_1

    :sswitch_3
    const-string/jumbo v1, "1313"

    const/16 v2, 0x18

    iput v2, p0, Lcom/alipay/b/a/b;->b:I

    move-object v2, v1

    move-object v3, v0

    move-object v1, v0

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    invoke-direct {p0, p2, v2}, Lcom/alipay/b/a/b;->a(ILjava/lang/String;)[B

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/b/a/b;->c:I

    move-object v0, v1

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    invoke-direct {p0, p2, v3}, Lcom/alipay/b/a/b;->a(ILjava/lang/String;)[B

    move-result-object v1

    :cond_4
    if-eqz v1, :cond_0

    iput v4, p0, Lcom/alipay/b/a/b;->c:I

    move-object v0, v1

    goto :goto_0

    :cond_5
    move-object v1, v0

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xf -> :sswitch_2
        0x10 -> :sswitch_1
        0x18 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public final a(F)V
    .locals 0

    iput p1, p0, Lcom/alipay/b/a/b;->w:F

    return-void
.end method

.method public final a(I)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/b/a/b;->v:I

    iput v0, p0, Lcom/alipay/b/a/b;->s:I

    mul-int/lit16 v0, p1, 0x3e8

    iput v0, p0, Lcom/alipay/b/a/b;->f:I

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/b/a/b;->g:J

    iget-object v0, p0, Lcom/alipay/b/a/b;->x:Lcom/alipay/b/a/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/b/a/c;

    invoke-direct {v0, p0}, Lcom/alipay/b/a/c;-><init>(Lcom/alipay/b/a/b;)V

    iput-object v0, p0, Lcom/alipay/b/a/b;->x:Lcom/alipay/b/a/c;

    iget-object v0, p0, Lcom/alipay/b/a/b;->x:Lcom/alipay/b/a/c;

    invoke-virtual {v0}, Lcom/alipay/b/a/c;->start()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/b/a/b;->x:Lcom/alipay/b/a/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/b/a/c;->a(Z)V

    return-void
.end method

.method public final a([SI)Z
    .locals 3

    const/4 v1, 0x0

    iget v2, p0, Lcom/alipay/b/a/b;->s:I

    const v0, 0xf938

    sub-int/2addr v0, v2

    if-gtz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    if-le v0, p2, :cond_2

    :goto_1
    iget-object v0, p0, Lcom/alipay/b/a/b;->r:[S

    invoke-static {p1, v1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/alipay/b/a/b;->s:I

    if-ne v2, v0, :cond_1

    iget v0, p0, Lcom/alipay/b/a/b;->s:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/alipay/b/a/b;->s:I

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move p2, v0

    goto :goto_1
.end method

.method protected final b()[B
    .locals 11

    const/16 v10, 0x90

    const/4 v9, 0x4

    const/4 v1, 0x0

    :cond_0
    iget v0, p0, Lcom/alipay/b/a/b;->v:I

    if-ge v0, v10, :cond_1

    iget v0, p0, Lcom/alipay/b/a/b;->s:I

    iget v2, p0, Lcom/alipay/b/a/b;->v:I

    mul-int/lit16 v2, v2, 0xdc

    shl-int/lit8 v2, v2, 0x1

    sub-int/2addr v0, v2

    const/16 v2, 0x370

    if-ge v0, v2, :cond_3

    :cond_1
    iget v0, p0, Lcom/alipay/b/a/b;->v:I

    if-lt v0, v10, :cond_2

    iput v1, p0, Lcom/alipay/b/a/b;->v:I

    iput v1, p0, Lcom/alipay/b/a/b;->s:I

    iput v1, p0, Lcom/alipay/b/a/b;->b:I

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_3
    move v2, v1

    :goto_1
    const/4 v0, 0x2

    if-lt v2, v0, :cond_4

    iget v0, p0, Lcom/alipay/b/a/b;->v:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/b/a/b;->v:I

    iget v0, p0, Lcom/alipay/b/a/b;->v:I

    add-int/lit8 v0, v0, -0xc

    add-int/lit8 v0, v0, -0x4

    rem-int/lit8 v0, v0, 0x10

    iget v2, p0, Lcom/alipay/b/a/b;->v:I

    add-int/lit8 v2, v2, -0xc

    add-int/lit8 v2, v2, -0x4

    div-int/lit8 v2, v2, 0x4

    if-nez v0, :cond_0

    new-array v3, v9, [I

    fill-array-data v3, :array_0

    move v0, v1

    :goto_2
    array-length v4, v3

    if-ge v0, v4, :cond_0

    aget v4, v3, v0

    if-lt v2, v4, :cond_8

    aget v4, v3, v0

    sub-int v4, v2, v4

    shl-int/lit8 v4, v4, 0x2

    aget v5, v3, v0

    shl-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0xc

    add-int/lit8 v5, v5, 0x4

    iget-object v6, p0, Lcom/alipay/b/a/b;->n:[[F

    iget-object v7, p0, Lcom/alipay/b/a/b;->o:[[Ljava/lang/StringBuffer;

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/alipay/b/a/b;->a(II[[F[[Ljava/lang/StringBuffer;)[B

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v0, p0, Lcom/alipay/b/a/b;->a:[B

    goto :goto_0

    :cond_4
    mul-int/lit16 v3, v2, 0xdc

    move v0, v1

    :goto_3
    if-lt v0, v9, :cond_5

    :try_start_0
    iget-object v0, p0, Lcom/alipay/b/a/b;->B:[F

    iget-object v4, p0, Lcom/alipay/b/a/b;->z:[I

    iget-object v5, p0, Lcom/alipay/b/a/b;->A:[F

    iget-object v6, p0, Lcom/alipay/b/a/b;->o:[[Ljava/lang/StringBuffer;

    aget-object v6, v6, v2

    iget v7, p0, Lcom/alipay/b/a/b;->v:I

    aget-object v6, v6, v7

    invoke-static {v0, v4, v5, v6}, Lcom/alipay/b/a/b;->a([F[I[FLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/alipay/b/a/b;->n:[[F

    aget-object v0, v0, v2

    iget v4, p0, Lcom/alipay/b/a/b;->v:I

    iget-object v5, p0, Lcom/alipay/b/a/b;->A:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    iget-object v6, p0, Lcom/alipay/b/a/b;->A:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    sub-float/2addr v5, v6

    aput v5, v0, v4

    move v0, v1

    :goto_4
    if-lt v0, v9, :cond_6

    iget-object v0, p0, Lcom/alipay/b/a/b;->B:[F

    iget-object v3, p0, Lcom/alipay/b/a/b;->z:[I

    iget-object v4, p0, Lcom/alipay/b/a/b;->A:[F

    iget-object v5, p0, Lcom/alipay/b/a/b;->q:[[Ljava/lang/StringBuffer;

    aget-object v5, v5, v2

    iget v6, p0, Lcom/alipay/b/a/b;->v:I

    aget-object v5, v5, v6

    invoke-static {v0, v3, v4, v5}, Lcom/alipay/b/a/b;->a([F[I[FLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/alipay/b/a/b;->p:[[F

    aget-object v0, v0, v2

    iget v3, p0, Lcom/alipay/b/a/b;->v:I

    iget-object v4, p0, Lcom/alipay/b/a/b;->A:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    iget-object v5, p0, Lcom/alipay/b/a/b;->A:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    sub-float/2addr v4, v5

    aput v4, v0, v3

    :goto_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    :cond_5
    iget-object v4, p0, Lcom/alipay/b/a/b;->B:[F

    iget-object v5, p0, Lcom/alipay/b/a/b;->r:[S

    iget v6, p0, Lcom/alipay/b/a/b;->v:I

    mul-int/lit16 v6, v6, 0xdc

    shl-int/lit8 v6, v6, 0x1

    add-int/2addr v6, v3

    sget-object v7, Lcom/alipay/b/a/b;->j:[F

    aget v7, v7, v0

    sget-object v8, Lcom/alipay/b/a/b;->k:[F

    aget v8, v8, v0

    invoke-static {v5, v6, v7, v8}, Lcom/alipay/b/a/b;->a([SIFF)F

    move-result v5

    aput v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    iget-object v4, p0, Lcom/alipay/b/a/b;->B:[F

    iget-object v5, p0, Lcom/alipay/b/a/b;->r:[S

    iget v6, p0, Lcom/alipay/b/a/b;->v:I

    mul-int/lit16 v6, v6, 0xdc

    shl-int/lit8 v6, v6, 0x1

    add-int/2addr v6, v3

    sget-object v7, Lcom/alipay/b/a/b;->l:[F

    aget v7, v7, v0

    sget-object v8, Lcom/alipay/b/a/b;->m:[F

    aget v8, v8, v0

    invoke-static {v5, v6, v7, v8}, Lcom/alipay/b/a/b;->a([SIFF)F

    move-result v5

    aput v5, v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    aget v4, v3, v0

    sub-int v4, v2, v4

    shl-int/lit8 v4, v4, 0x2

    aget v5, v3, v0

    shl-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0xc

    add-int/lit8 v5, v5, 0x4

    iget-object v6, p0, Lcom/alipay/b/a/b;->p:[[F

    iget-object v7, p0, Lcom/alipay/b/a/b;->q:[[Ljava/lang/StringBuffer;

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/alipay/b/a/b;->a(II[[F[[Ljava/lang/StringBuffer;)[B

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v0, p0, Lcom/alipay/b/a/b;->a:[B

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto :goto_5

    :array_0
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public final c()V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lcom/alipay/b/a/b;->v:I

    iput v1, p0, Lcom/alipay/b/a/b;->s:I

    iget-object v0, p0, Lcom/alipay/b/a/b;->x:Lcom/alipay/b/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/b/a/b;->x:Lcom/alipay/b/a/c;

    invoke-virtual {v0, v1}, Lcom/alipay/b/a/c;->a(Z)V

    :cond_0
    return-void
.end method
