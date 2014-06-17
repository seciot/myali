.class public Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TransInfo;
.super Ljava/lang/Object;
.source "SyncAnimatingHelper.java"


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;

.field private b:Landroid/view/View;

.field private c:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TYPE;

.field private d:I

.field private e:F

.field private f:F


# direct methods
.method public constructor <init>(Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;Landroid/view/View;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TransInfo;->a:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    sget-object v0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TYPE;->a:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TYPE;

    iput-object v0, p0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TransInfo;->c:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TYPE;

    .line 178
    iput-object p2, p0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TransInfo;->b:Landroid/view/View;

    .line 179
    iput p3, p0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TransInfo;->d:I

    .line 180
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TransInfo;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 168
    iput p1, p0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TransInfo;->e:F

    return p1
.end method

.method static synthetic a(Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TransInfo;Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TYPE;)Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TYPE;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TransInfo;->c:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TYPE;

    return-object p1
.end method


# virtual methods
.method public final a()Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TYPE;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TransInfo;->c:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TYPE;

    return-object v0
.end method

.method public final a(F)V
    .locals 4
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TransInfo;->a:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;

    invoke-static {v0}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->f(Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget v0, p0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TransInfo;->d:I

    int-to-float v0, v0

    iput v0, p0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TransInfo;->f:F

    .line 211
    :goto_0
    return-void

    .line 206
    :cond_0
    iget v0, p0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TransInfo;->e:F

    const/high16 v1, 0x3f80

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TransInfo;->d:I

    int-to-float v2, v2

    iget v3, p0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TransInfo;->e:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TransInfo;->f:F

    .line 208
    iget-object v0, p0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TransInfo;->a:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;

    invoke-static {v0}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->g(Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "oldData:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TransInfo;->e:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,curData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TransInfo;->f:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,change2Data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TransInfo;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput p1, p0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TransInfo;->d:I

    .line 200
    return-void
.end method

.method public final b()Landroid/view/View;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TransInfo;->b:Landroid/view/View;

    return-object v0
.end method

.method public final c()F
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TransInfo;->f:F

    return v0
.end method
