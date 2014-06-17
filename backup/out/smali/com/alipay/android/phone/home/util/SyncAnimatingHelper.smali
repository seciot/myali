.class public Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;
.super Ljava/lang/Object;
.source "SyncAnimatingHelper.java"


# instance fields
.field private a:Landroid/view/animation/Interpolator;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TransInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:I

.field private e:J

.field private f:F

.field private final g:Ljava/lang/String;

.field private h:Landroid/os/Handler;

.field private i:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$AnimationListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->c:Z

    .line 33
    const-class v0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->g:Ljava/lang/String;

    .line 71
    new-instance v0, Lcom/alipay/android/phone/home/util/d;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/home/util/d;-><init>(Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->h:Landroid/os/Handler;

    .line 36
    const/16 v0, 0xc8

    iput v0, p0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->d:I

    .line 37
    const/high16 v0, 0x3f80

    iget v1, p0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->d:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->f:F

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->b:Ljava/util/List;

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->e:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->f:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->a:Landroid/view/animation/Interpolator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->a:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TransInfo;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TransInfo;->a(F)V

    goto :goto_1

    :cond_0
    return-void

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 18
    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->c:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->e:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iget v3, p0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->d:I

    if-ge v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;)V
    .locals 7
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TransInfo;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TransInfo;->b()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TransInfo;->a()Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TYPE;

    move-result-object v3

    sget-object v4, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TYPE;->a:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TYPE;

    if-ne v3, v4, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TransInfo;->c()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TransInfo;->c()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v0, v6

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TransInfo;->a()Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TYPE;

    move-result-object v3

    sget-object v4, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TYPE;->b:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TYPE;

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TransInfo;->c()F

    move-result v0

    invoke-static {v2, v0}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic c(Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->h:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;)Z
    .locals 1
    .parameter

    .prologue
    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->c:Z

    return v0
.end method

.method static synthetic e(Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;)Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$AnimationListener;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->i:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$AnimationListener;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;)Z
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->c:Z

    return v0
.end method

.method static synthetic g(Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput p1, p0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->d:I

    .line 51
    return-void
.end method

.method public final a(Landroid/view/View;ILcom/alipay/android/phone/home/util/SyncAnimatingHelper$TYPE;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    if-nez p1, :cond_0

    .line 141
    :goto_0
    return-void

    .line 130
    :cond_0
    new-instance v0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TransInfo;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TransInfo;-><init>(Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;Landroid/view/View;I)V

    .line 131
    invoke-virtual {v0, p2}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TransInfo;->a(I)V

    .line 132
    sget-object v1, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TYPE;->b:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TYPE;

    if-ne v1, p3, :cond_2

    .line 133
    invoke-static {p1}, Lcom/nineoldandroids/view/ViewHelper;->getAlpha(Landroid/view/View;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TransInfo;->a(Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TransInfo;F)F

    .line 137
    :cond_1
    :goto_1
    invoke-static {v0, p3}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TransInfo;->a(Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TransInfo;Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TYPE;)Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TYPE;

    .line 139
    iget-object v1, p0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 134
    :cond_2
    sget-object v1, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TYPE;->a:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TYPE;

    if-ne v1, p3, :cond_1

    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TransInfo;->a(Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TransInfo;F)F

    goto :goto_1
.end method

.method public final a(Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$AnimationListener;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->i:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$AnimationListener;

    .line 166
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->c:Z

    return v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->i:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$AnimationListener;

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->c:Z

    .line 147
    iget-object v0, p0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->h:Landroid/os/Handler;

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 148
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->c:Z

    .line 153
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->e:J

    .line 154
    iget-object v0, p0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->h:Landroid/os/Handler;

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 156
    :cond_0
    return-void
.end method
