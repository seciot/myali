.class final Lcom/alipay/android/app/empty/a;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:I

.field c:F

.field d:Ljava/util/List;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/app/empty/a;-><init>(IB)V

    return-void
.end method

.method private constructor <init>(IB)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/empty/a;->a:I

    iput p1, p0, Lcom/alipay/android/app/empty/a;->b:I

    const v0, 0x3f4ccccd

    iput v0, p0, Lcom/alipay/android/app/empty/a;->c:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/empty/a;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method final a()Z
    .locals 3

    iget v0, p0, Lcom/alipay/android/app/empty/a;->b:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/android/app/empty/a;->a:I

    int-to-float v0, v0

    iget v1, p0, Lcom/alipay/android/app/empty/a;->b:I

    int-to-float v1, v1

    iget v2, p0, Lcom/alipay/android/app/empty/a;->c:F

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
