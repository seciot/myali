.class public final Lcom/alipay/b/b/a;
.super Ljava/lang/Object;


# static fields
.field private static a:[S


# instance fields
.field private b:J

.field private c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/b/b/a;->a:[S

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    const-wide/16 v9, 0x0

    const/high16 v8, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/alipay/b/b/a;->a:[S

    if-nez v0, :cond_0

    new-array v0, v8, [S

    sput-object v0, Lcom/alipay/b/b/a;->a:[S

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v8, :cond_1

    :cond_0
    iput-wide v9, p0, Lcom/alipay/b/b/a;->b:J

    iput-wide v9, p0, Lcom/alipay/b/b/a;->c:J

    return-void

    :cond_1
    sget-object v3, Lcom/alipay/b/b/a;->a:[S

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    const-wide v6, 0x40dfffc000000000L

    mul-double/2addr v4, v6

    double-to-int v4, v4

    int-to-short v4, v4

    aput-short v4, v3, v0

    const-wide v3, 0x3f1921fb54442d18L

    add-double/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()S
    .locals 9

    const-wide/32 v7, 0x40000000

    iget-wide v0, p0, Lcom/alipay/b/b/a;->b:J

    const/16 v2, 0x10

    shr-long/2addr v0, v2

    sget-object v2, Lcom/alipay/b/b/a;->a:[S

    const-wide/32 v3, 0xffff

    and-long/2addr v3, v0

    long-to-int v3, v3

    aget-short v2, v2, v3

    iget-wide v3, p0, Lcom/alipay/b/b/a;->b:J

    iget-wide v5, p0, Lcom/alipay/b/b/a;->c:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/alipay/b/b/a;->b:J

    const-wide/32 v3, 0x10000

    cmp-long v0, v0, v3

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/alipay/b/b/a;->b:J

    sub-long/2addr v0, v7

    sub-long/2addr v0, v7

    sub-long/2addr v0, v7

    sub-long/2addr v0, v7

    iput-wide v0, p0, Lcom/alipay/b/b/a;->b:J

    :cond_0
    return v2
.end method

.method public final a(I)V
    .locals 2

    const v0, 0x17c6f

    mul-int/2addr v0, p1

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/alipay/b/b/a;->c:J

    return-void
.end method
