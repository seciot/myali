.class public Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;
.super Landroid/widget/FrameLayout;
.source "ActiveTopBoardContainer.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Lcom/alipay/mobile/nfd/nfdbiz/IActiveTopBaordContainer;


# static fields
.field private static final b:Ljava/lang/String;

.field private static c:I

.field private static h:Z

.field private static i:Z


# instance fields
.field final a:Ljava/lang/Runnable;

.field private d:Landroid/view/GestureDetector;

.field private e:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;

.field private f:Lcom/alipay/android/phone/home/widget/TopBoard;

.field private g:Lcom/alipay/android/phone/home/widget/ActiveTopTips;

.field private j:Lcom/alipay/mobile/nfd/nfdbiz/IOnActiveBoardVisibleChange;

.field private k:Lcom/alipay/mobile/nfd/nfdbiz/ITopBoardStateCallBack;

.field private l:F

.field private m:Landroid/widget/FrameLayout$LayoutParams;

.field private n:Landroid/media/MediaPlayer;

.field private o:F

.field private p:F

.field private q:F

.field private r:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    const-class v0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->b:Ljava/lang/String;

    .line 40
    sput v1, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->c:I

    .line 47
    sput-boolean v1, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->h:Z

    .line 48
    sput-boolean v1, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->i:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 51
    iput v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->l:F

    .line 335
    iput v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->o:F

    iput v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->p:F

    iput v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->q:F

    iput v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->r:F

    .line 543
    new-instance v0, Lcom/alipay/android/phone/home/widget/f;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/home/widget/f;-><init>(Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->a:Ljava/lang/Runnable;

    .line 57
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->a(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    iput v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->l:F

    .line 335
    iput v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->o:F

    iput v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->p:F

    iput v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->q:F

    iput v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->r:F

    .line 543
    new-instance v0, Lcom/alipay/android/phone/home/widget/f;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/home/widget/f;-><init>(Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->a:Ljava/lang/Runnable;

    .line 62
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->a(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    iput v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->l:F

    .line 335
    iput v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->o:F

    iput v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->p:F

    iput v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->q:F

    iput v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->r:F

    .line 543
    new-instance v0, Lcom/alipay/android/phone/home/widget/f;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/home/widget/f;-><init>(Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->a:Ljava/lang/Runnable;

    .line 68
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->a(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 263
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/openplatform/R$layout;->a:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 265
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->d:Landroid/view/GestureDetector;

    .line 266
    new-instance v0, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;

    invoke-direct {v0}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->e:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;

    .line 269
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->f:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/widget/TopBoard;

    iput-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->f:Lcom/alipay/android/phone/home/widget/TopBoard;

    .line 270
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->x:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/widget/ActiveTopTips;

    iput-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->g:Lcom/alipay/android/phone/home/widget/ActiveTopTips;

    .line 271
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->g:Lcom/alipay/android/phone/home/widget/ActiveTopTips;

    new-instance v1, Lcom/alipay/android/phone/home/widget/e;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/home/widget/e;-><init>(Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/widget/ActiveTopTips;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/openplatform/R$raw;->a:I

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->n:Landroid/media/MediaPlayer;

    .line 284
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 285
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 287
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 245
    const/4 v1, 0x0

    .line 246
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 247
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    .line 251
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;)Lcom/alipay/android/phone/home/widget/ActiveTopTips;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->g:Lcom/alipay/android/phone/home/widget/ActiveTopTips;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->i:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter

    .prologue
    .line 29
    sput-boolean p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->i:Z

    return p0
.end method

.method static synthetic access$200(Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->h:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .parameter

    .prologue
    .line 29
    sput-boolean p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->h:Z

    return p0
.end method

.method static synthetic access$400(Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;)Lcom/alipay/mobile/nfd/nfdbiz/ITopBoardStateCallBack;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->k:Lcom/alipay/mobile/nfd/nfdbiz/ITopBoardStateCallBack;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->m:Landroid/widget/FrameLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic access$502(Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;Landroid/widget/FrameLayout$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->m:Landroid/widget/FrameLayout$LayoutParams;

    return-object p1
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 29
    sget v0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->c:I

    return v0
.end method

.method static synthetic access$800(Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->n:Landroid/media/MediaPlayer;

    return-object v0
.end method


# virtual methods
.method public changeState(I)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x2

    const/4 v7, 0x0

    const/16 v6, 0xc8

    const/4 v5, 0x0

    .line 76
    invoke-virtual {p0, v4}, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 77
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->getBoardView()Lcom/alipay/android/phone/home/widget/TopBoard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/widget/TopBoard;->getMeasuredWidth()I

    .line 78
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->getBoardView()Lcom/alipay/android/phone/home/widget/TopBoard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/widget/TopBoard;->getMeasuredHeight()I

    move-result v2

    .line 79
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->g:Lcom/alipay/android/phone/home/widget/ActiveTopTips;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/widget/ActiveTopTips;->getMeasuredHeight()I

    move-result v3

    .line 81
    packed-switch p1, :pswitch_data_0

    .line 241
    :cond_0
    :goto_0
    sput p1, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->c:I

    .line 242
    return-void

    .line 83
    :pswitch_0
    sget v0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->c:I

    if-nez v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->e:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->b()V

    .line 86
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->e:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;

    sget-object v2, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TYPE;->a:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TYPE;

    invoke-virtual {v0, v1, v3, v2}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->a(Landroid/view/View;ILcom/alipay/android/phone/home/util/SyncAnimatingHelper$TYPE;)V

    .line 88
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->e:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;

    iget-object v1, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->g:Lcom/alipay/android/phone/home/widget/ActiveTopTips;

    sget-object v2, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TYPE;->a:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TYPE;

    invoke-virtual {v0, v1, v3, v2}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->a(Landroid/view/View;ILcom/alipay/android/phone/home/util/SyncAnimatingHelper$TYPE;)V

    .line 90
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->e:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;

    invoke-virtual {v0, v6}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->a(I)V

    .line 91
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->e:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->c()V

    goto :goto_0

    .line 92
    :cond_1
    sget v0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->c:I

    if-ne v4, v0, :cond_3

    .line 94
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->e:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->b()V

    .line 95
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->e:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;

    sget-object v4, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TYPE;->a:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TYPE;

    invoke-virtual {v0, v1, v3, v4}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->a(Landroid/view/View;ILcom/alipay/android/phone/home/util/SyncAnimatingHelper$TYPE;)V

    .line 97
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0xc8

    div-int/2addr v0, v2

    .line 98
    iget v2, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->l:F

    cmpl-float v2, v2, v7

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->l:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    if-lez v2, :cond_2

    .line 99
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v0, v3

    iget v1, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->l:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    div-int/2addr v0, v1

    .line 101
    :cond_2
    iget-object v1, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->e:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->a(I)V

    .line 102
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->e:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;

    new-instance v1, Lcom/alipay/android/phone/home/widget/a;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/home/widget/a;-><init>(Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->a(Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$AnimationListener;)V

    .line 115
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->e:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->c()V

    goto :goto_0

    .line 119
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->g:Lcom/alipay/android/phone/home/widget/ActiveTopTips;

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    goto :goto_0

    .line 124
    :pswitch_1
    sget v0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->c:I

    if-nez v0, :cond_4

    .line 126
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->e:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->b()V

    .line 127
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->e:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;

    sget-object v4, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TYPE;->a:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TYPE;

    invoke-virtual {v0, v1, v2, v4}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->a(Landroid/view/View;ILcom/alipay/android/phone/home/util/SyncAnimatingHelper$TYPE;)V

    .line 129
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->e:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;

    invoke-virtual {v0, v6}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->a(I)V

    .line 130
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->e:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;

    new-instance v2, Lcom/alipay/android/phone/home/widget/b;

    invoke-direct {v2, p0, v1, v3}, Lcom/alipay/android/phone/home/widget/b;-><init>(Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;Landroid/view/View;I)V

    invoke-virtual {v0, v2}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->a(Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$AnimationListener;)V

    .line 158
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->e:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->c()V

    .line 159
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 162
    :cond_4
    sget v0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->c:I

    if-ne v8, v0, :cond_6

    .line 164
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->e:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->b()V

    .line 165
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->e:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;

    sget-object v3, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TYPE;->a:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TYPE;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->a(Landroid/view/View;ILcom/alipay/android/phone/home/util/SyncAnimatingHelper$TYPE;)V

    .line 167
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->e:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;

    iget-object v3, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->g:Lcom/alipay/android/phone/home/widget/ActiveTopTips;

    sget-object v4, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TYPE;->b:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TYPE;

    invoke-virtual {v0, v3, v5, v4}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->a(Landroid/view/View;ILcom/alipay/android/phone/home/util/SyncAnimatingHelper$TYPE;)V

    .line 169
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0xc8

    div-int/2addr v0, v2

    .line 171
    iget v3, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->l:F

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->l:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    if-lez v3, :cond_5

    .line 172
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v0, v2, v0

    iget v1, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->l:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    div-int/2addr v0, v1

    .line 174
    :cond_5
    iget-object v1, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->e:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->a(I)V

    .line 175
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->e:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->c()V

    goto/16 :goto_0

    .line 179
    :cond_6
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->g:Lcom/alipay/android/phone/home/widget/ActiveTopTips;

    invoke-static {v0, v7}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 180
    sget-boolean v0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->h:Z

    if-eqz v0, :cond_0

    .line 181
    const-string/jumbo v0, "\u6210\u529f\u8f7d\u5165\u9b54\u529b\u573a\uff0c\u4e0a\u6ed1\u53ef\u6536\u7f29"

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    sput-boolean v5, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->h:Z

    goto/16 :goto_0

    .line 188
    :pswitch_2
    sget v0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->c:I

    if-ne v8, v0, :cond_7

    .line 189
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->e:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->b()V

    .line 190
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->e:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;

    sget-object v2, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TYPE;->a:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TYPE;

    invoke-virtual {v0, v1, v5, v2}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->a(Landroid/view/View;ILcom/alipay/android/phone/home/util/SyncAnimatingHelper$TYPE;)V

    .line 192
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->e:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;

    invoke-virtual {v0, v6}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->a(I)V

    .line 193
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->e:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;

    new-instance v2, Lcom/alipay/android/phone/home/widget/c;

    invoke-direct {v2, p0, v1}, Lcom/alipay/android/phone/home/widget/c;-><init>(Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->a(Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$AnimationListener;)V

    .line 206
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->e:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->c()V

    goto/16 :goto_0

    .line 207
    :cond_7
    sget v0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->c:I

    if-ne v4, v0, :cond_8

    .line 208
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->e:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->b()V

    .line 209
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->e:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;

    sget-object v2, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TYPE;->a:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$TYPE;

    invoke-virtual {v0, v1, v5, v2}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->a(Landroid/view/View;ILcom/alipay/android/phone/home/util/SyncAnimatingHelper$TYPE;)V

    .line 211
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->e:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;

    invoke-virtual {v0, v6}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->a(I)V

    .line 212
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->e:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;

    new-instance v2, Lcom/alipay/android/phone/home/widget/d;

    invoke-direct {v2, p0, v1}, Lcom/alipay/android/phone/home/widget/d;-><init>(Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->a(Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$AnimationListener;)V

    .line 224
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->e:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->c()V

    goto/16 :goto_0

    .line 232
    :cond_8
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->m:Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->m:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter

    .prologue
    .line 330
    sget-object v0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "dispatchTouchEvent enter:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getActiveTopTips()Lcom/alipay/android/phone/home/widget/ActiveTopTips;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->g:Lcom/alipay/android/phone/home/widget/ActiveTopTips;

    return-object v0
.end method

.method public getBoardView()Lcom/alipay/android/phone/home/widget/TopBoard;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->f:Lcom/alipay/android/phone/home/widget/TopBoard;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 555
    return-object p0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 481
    sget-object v0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->b:Ljava/lang/String;

    const-string/jumbo v1, "onDown enter"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 488
    sget-object v1, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->b:Ljava/lang/String;

    const-string/jumbo v2, "onFling enter"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    iget-object v1, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->e:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;

    invoke-virtual {v1}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 490
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput v1, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->l:F

    .line 491
    const/4 v1, 0x0

    cmpl-float v1, p4, v1

    if-lez v1, :cond_0

    .line 492
    sget-object v1, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->b:Ljava/lang/String;

    const-string/jumbo v2, "onFling STATE_BOARD_SHOW"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->changeState(I)V

    .line 501
    :goto_0
    return v0

    .line 495
    :cond_0
    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->changeState(I)V

    goto :goto_0

    .line 501
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter

    .prologue
    .line 339
    sget-object v0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onInterceptTouchEvent enter:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 341
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->getBoardView()Lcom/alipay/android/phone/home/widget/TopBoard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/home/widget/TopBoard;->getMeasuredHeight()I

    move-result v1

    .line 342
    iget-object v2, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->g:Lcom/alipay/android/phone/home/widget/ActiveTopTips;

    invoke-virtual {v2}, Lcom/alipay/android/phone/home/widget/ActiveTopTips;->getMeasuredHeight()I

    move-result v2

    .line 344
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 360
    :goto_0
    :pswitch_0
    sget v3, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->c:I

    if-eqz v3, :cond_0

    .line 362
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v3

    if-gtz v3, :cond_0

    .line 363
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt v3, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->d:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    const/4 v0, 0x1

    .line 371
    :goto_1
    return v0

    .line 346
    :pswitch_1
    const/4 v3, 0x0

    iput v3, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->p:F

    iput v3, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->o:F

    .line 347
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->q:F

    .line 348
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->r:F

    goto :goto_0

    .line 351
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 352
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 354
    iget v5, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->o:F

    iget v6, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->q:F

    sub-float v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    add-float/2addr v5, v6

    iput v5, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->o:F

    .line 355
    iget v5, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->p:F

    iget v6, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->r:F

    sub-float v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    add-float/2addr v5, v6

    iput v5, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->p:F

    .line 356
    iput v3, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->q:F

    .line 357
    iput v4, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->r:F

    goto :goto_0

    .line 371
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 344
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 303
    invoke-virtual {p0, v6}, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 304
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->getBoardView()Lcom/alipay/android/phone/home/widget/TopBoard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/home/widget/TopBoard;->getMeasuredHeight()I

    move-result v1

    .line 305
    iget-object v2, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->g:Lcom/alipay/android/phone/home/widget/ActiveTopTips;

    invoke-virtual {v2}, Lcom/alipay/android/phone/home/widget/ActiveTopTips;->getMeasuredHeight()I

    move-result v2

    .line 306
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->getBoardView()Lcom/alipay/android/phone/home/widget/TopBoard;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->getBoardView()Lcom/alipay/android/phone/home/widget/TopBoard;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/android/phone/home/widget/TopBoard;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v3, v5, v5, p4, v4}, Lcom/alipay/android/phone/home/widget/TopBoard;->layout(IIII)V

    .line 309
    iget-object v3, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->g:Lcom/alipay/android/phone/home/widget/ActiveTopTips;

    iget-object v4, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->g:Lcom/alipay/android/phone/home/widget/ActiveTopTips;

    invoke-virtual {v4}, Lcom/alipay/android/phone/home/widget/ActiveTopTips;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v3, v5, v5, p4, v4}, Lcom/alipay/android/phone/home/widget/ActiveTopTips;->layout(IIII)V

    .line 311
    sget v3, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->c:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 312
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v5, v2, p4, v1}, Landroid/view/View;->layout(IIII)V

    .line 313
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->g:Lcom/alipay/android/phone/home/widget/ActiveTopTips;

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 321
    :goto_0
    const/4 v0, 0x3

    :goto_1
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 322
    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 323
    invoke-virtual {v1, v5, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 321
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 314
    :cond_0
    sget v2, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->c:I

    if-ne v2, v6, :cond_1

    .line 315
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v5, v1, p4, v2}, Landroid/view/View;->layout(IIII)V

    .line 316
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->g:Lcom/alipay/android/phone/home/widget/ActiveTopTips;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    goto :goto_0

    .line 318
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    invoke-virtual {v0, v5, v5, p4, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 326
    :cond_2
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 506
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v9, 0x3f80

    const/4 v5, 0x0

    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 418
    invoke-virtual {p0, v8}, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 419
    sget-object v3, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->b:Ljava/lang/String;

    const-string/jumbo v4, "onScroll enter"

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iput v5, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->l:F

    .line 423
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->getBoardView()Lcom/alipay/android/phone/home/widget/TopBoard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/android/phone/home/widget/TopBoard;->getMeasuredHeight()I

    move-result v3

    .line 424
    iget-object v4, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->g:Lcom/alipay/android/phone/home/widget/ActiveTopTips;

    invoke-virtual {v4}, Lcom/alipay/android/phone/home/widget/ActiveTopTips;->getMeasuredHeight()I

    move-result v4

    .line 425
    cmpg-float v5, p4, v5

    if-gez v5, :cond_2

    .line 426
    sget-object v5, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\u5411\u4e0b:disY:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "childTop:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    if-lt v5, v3, :cond_0

    .line 429
    sput v8, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->c:I

    .line 476
    :goto_0
    return v0

    .line 432
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p4

    int-to-float v5, v3

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_1

    .line 433
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 435
    sput v8, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->c:I

    .line 436
    invoke-virtual {p0, v8}, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->changeState(I)V

    .line 474
    :goto_1
    sget-object v0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->b:Ljava/lang/String;

    const-string/jumbo v2, "onScroll return: end"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 476
    goto :goto_0

    .line 438
    :cond_1
    float-to-int v0, p4

    neg-int v0, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 440
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v0, v4

    int-to-float v0, v0

    mul-float/2addr v0, v9

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v0, v3

    sub-float v0, v9, v0

    .line 442
    sget-object v3, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "child.getTop:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    sget-object v2, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "alpha:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object v2, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->g:Lcom/alipay/android/phone/home/widget/ActiveTopTips;

    invoke-static {v2, v0}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    goto :goto_1

    .line 448
    :cond_2
    sget-object v3, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u5411\u4e0a:disY:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "childTop:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-gt v3, v4, :cond_4

    .line 451
    sget-boolean v2, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->i:Z

    if-eqz v2, :cond_3

    .line 452
    const-string/jumbo v2, "\u4e0b\u62c9\u53ef\u5c55\u5f00"

    invoke-direct {p0, v2}, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 453
    sput-boolean v0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->i:Z

    .line 456
    :cond_3
    sput v1, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->c:I

    goto/16 :goto_0

    .line 459
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, p4

    int-to-float v5, v4

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_6

    .line 460
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 462
    sget-boolean v2, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->i:Z

    if-eqz v2, :cond_5

    .line 463
    const-string/jumbo v2, "\u4e0b\u62c9\u53ef\u5c55\u5f00"

    invoke-direct {p0, v2}, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 464
    sput-boolean v0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->i:Z

    .line 467
    :cond_5
    sput v1, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->c:I

    .line 468
    invoke-virtual {p0, v1}, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->changeState(I)V

    goto/16 :goto_1

    .line 470
    :cond_6
    float-to-int v0, p4

    neg-int v0, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 510
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 514
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x2

    const/high16 v9, 0x4040

    const/high16 v8, 0x3f80

    const/4 v7, 0x0

    const/4 v0, 0x1

    .line 376
    invoke-virtual {p0, v10}, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 377
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->getBoardView()Lcom/alipay/android/phone/home/widget/TopBoard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/home/widget/TopBoard;->getMeasuredHeight()I

    move-result v3

    .line 378
    iget-object v1, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->g:Lcom/alipay/android/phone/home/widget/ActiveTopTips;

    invoke-virtual {v1}, Lcom/alipay/android/phone/home/widget/ActiveTopTips;->getMeasuredHeight()I

    move-result v4

    .line 379
    iput v7, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->l:F

    .line 380
    sget-object v1, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "onTouchEvent enter:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object v1, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->e:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;

    invoke-virtual {v1}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 383
    const/4 v0, 0x0

    .line 411
    :goto_0
    return v0

    .line 386
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->d:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 387
    if-eqz v1, :cond_1

    .line 388
    sget-object v1, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->b:Ljava/lang/String;

    const-string/jumbo v2, "onTouchEvent return: mGestureDetector true"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 392
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-eq v5, v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/16 v6, 0x106

    if-eq v5, v6, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/16 v6, 0x206

    if-ne v5, v6, :cond_6

    .line 396
    :cond_2
    iget v1, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->p:F

    cmpl-float v1, v1, v7

    if-lez v1, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    int-to-float v4, v4

    int-to-float v5, v3

    mul-float/2addr v5, v8

    div-float/2addr v5, v9

    add-float/2addr v4, v5

    cmpl-float v1, v1, v4

    if-gez v1, :cond_4

    :cond_3
    iget v1, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->p:F

    cmpg-float v1, v1, v7

    if-gez v1, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v3

    mul-float/2addr v2, v8

    div-float/2addr v2, v9

    const/high16 v3, 0x4000

    mul-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_5

    .line 399
    :cond_4
    sget-object v1, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->b:Ljava/lang/String;

    const-string/jumbo v2, "onTouchEvent STATE_BOARD_SHOW"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    invoke-virtual {p0, v10}, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->changeState(I)V

    goto :goto_0

    .line 403
    :cond_5
    sget-object v1, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->b:Ljava/lang/String;

    const-string/jumbo v2, "onTouchEvent STATE_TIPS_SHOW"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->changeState(I)V

    goto :goto_0

    :cond_6
    move v0, v1

    .line 411
    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 291
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 292
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->j:Lcom/alipay/mobile/nfd/nfdbiz/IOnActiveBoardVisibleChange;

    if-eqz v0, :cond_0

    .line 293
    iget-object v1, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->j:Lcom/alipay/mobile/nfd/nfdbiz/IOnActiveBoardVisibleChange;

    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/alipay/mobile/nfd/nfdbiz/IOnActiveBoardVisibleChange;->onVisibleChange(Z)V

    .line 297
    :cond_0
    return-void

    .line 293
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBoardInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->getBoardView()Lcom/alipay/android/phone/home/widget/TopBoard;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/android/phone/home/widget/TopBoard;->setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method public setOnBoardCLickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter

    .prologue
    .line 534
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->f:Lcom/alipay/android/phone/home/widget/TopBoard;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/home/widget/TopBoard;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 535
    return-void
.end method

.method public setOnStateChangeListener(Lcom/alipay/mobile/nfd/nfdbiz/ITopBoardStateCallBack;)V
    .locals 0
    .parameter

    .prologue
    .line 529
    iput-object p1, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->k:Lcom/alipay/mobile/nfd/nfdbiz/ITopBoardStateCallBack;

    .line 530
    return-void
.end method

.method public setOnVisibleChangeListener(Lcom/alipay/mobile/nfd/nfdbiz/IOnActiveBoardVisibleChange;)V
    .locals 0
    .parameter

    .prologue
    .line 523
    iput-object p1, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->j:Lcom/alipay/mobile/nfd/nfdbiz/IOnActiveBoardVisibleChange;

    .line 524
    return-void
.end method

.method public setTopTipsText(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 255
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->g:Lcom/alipay/android/phone/home/widget/ActiveTopTips;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/home/widget/ActiveTopTips;->setTipsText(Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method public updateTopInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 539
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->g:Lcom/alipay/android/phone/home/widget/ActiveTopTips;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/android/phone/home/widget/ActiveTopTips;->setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->f:Lcom/alipay/android/phone/home/widget/TopBoard;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/android/phone/home/widget/TopBoard;->setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    return-void
.end method
