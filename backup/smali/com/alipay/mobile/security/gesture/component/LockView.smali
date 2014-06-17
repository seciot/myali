.class public Lcom/alipay/mobile/security/gesture/component/LockView;
.super Landroid/view/View;


# static fields
.field public static MINSELECTED:I


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:[I

.field private k:I

.field private l:Z

.field private m:Z

.field mGridBetweenX:I

.field mGridBetweenY:I

.field mGridHeight:I

.field mGridMargin:I

.field mGridWidth:I

.field private n:Landroid/graphics/Point;

.field private o:Z

.field private p:Lcom/alipay/mobile/security/gesture/component/m;

.field private q:Lcom/alipay/mobile/security/gesture/component/l;

.field private r:Landroid/graphics/drawable/Drawable;

.field private s:Landroid/graphics/drawable/Drawable;

.field private t:I

.field private u:Z

.field private v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    sput v0, Lcom/alipay/mobile/security/gesture/component/LockView;->MINSELECTED:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/16 v3, 0x32

    const/16 v0, 0x14

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->b:I

    iput v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->c:I

    const/16 v0, 0x3c

    iput v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->d:I

    iput v3, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->e:I

    iput v3, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->f:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->g:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->h:I

    iput v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->i:I

    iput-boolean v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->l:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->m:Z

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->n:Landroid/graphics/Point;

    iput-boolean v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->o:Z

    iput-object v2, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->p:Lcom/alipay/mobile/security/gesture/component/m;

    iput-object v2, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->q:Lcom/alipay/mobile/security/gesture/component/l;

    iput-object v2, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->r:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->s:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->mGridMargin:I

    iput v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->mGridWidth:I

    iput v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->mGridHeight:I

    iput v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->mGridBetweenX:I

    iput v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->mGridBetweenY:I

    iput v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->t:I

    iput-boolean v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->u:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->v:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/16 v4, 0x32

    const/16 v0, 0x14

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->b:I

    iput v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->c:I

    const/16 v0, 0x3c

    iput v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->d:I

    iput v4, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->e:I

    iput v4, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->f:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->g:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->h:I

    iput v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->i:I

    iput-boolean v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->l:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->m:Z

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->n:Landroid/graphics/Point;

    iput-boolean v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->o:Z

    iput-object v2, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->p:Lcom/alipay/mobile/security/gesture/component/m;

    iput-object v2, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->q:Lcom/alipay/mobile/security/gesture/component/l;

    iput-object v2, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->r:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->s:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->mGridMargin:I

    iput v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->mGridWidth:I

    iput v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->mGridHeight:I

    iput v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->mGridBetweenX:I

    iput v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->mGridBetweenY:I

    iput v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->t:I

    iput-boolean v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->u:Z

    iput-boolean v3, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->v:Z

    sget-object v0, Lcom/alipay/mobile/a/g;->b:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->s:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/component/LockView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/16 v3, 0x32

    const/16 v0, 0x14

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->b:I

    iput v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->c:I

    const/16 v0, 0x3c

    iput v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->d:I

    iput v3, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->e:I

    iput v3, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->f:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->g:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->h:I

    iput v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->i:I

    iput-boolean v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->l:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->m:Z

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->n:Landroid/graphics/Point;

    iput-boolean v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->o:Z

    iput-object v2, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->p:Lcom/alipay/mobile/security/gesture/component/m;

    iput-object v2, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->q:Lcom/alipay/mobile/security/gesture/component/l;

    iput-object v2, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->r:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->s:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->mGridMargin:I

    iput v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->mGridWidth:I

    iput v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->mGridHeight:I

    iput v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->mGridBetweenX:I

    iput v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->mGridBetweenY:I

    iput v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->t:I

    iput-boolean v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->u:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->v:Z

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/component/LockView;->a()V

    return-void
.end method

.method private a()V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iput-boolean v4, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->v:Z

    iget v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->g:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->j:[I

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->g:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->j:[I

    const/4 v3, -0x1

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->k:I

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/LockView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/16 v1, 0xf0

    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    if-gt v1, v2, :cond_1

    const/16 v1, 0x2d8

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v1, v2, :cond_2

    :cond_1
    iput-boolean v4, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->u:Z

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->a:Landroid/graphics/Paint;

    const/high16 v1, 0x4110

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :goto_1
    return-void

    :cond_2
    const/16 v1, 0x3c0

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v1, v2, :cond_3

    const/16 v1, 0x280

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v1, v0, :cond_3

    iput-boolean v4, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->u:Z

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->a:Landroid/graphics/Paint;

    const/high16 v1, 0x4190

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_1
.end method

.method private a(I)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->j:[I

    iget v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->k:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->k:I

    aput p1, v0, v1

    iget v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->i:I

    const/4 v1, 0x1

    add-int/lit8 v2, p1, 0x1

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->i:I

    return-void
.end method

.method private a(FF)Z
    .locals 9

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->g:I

    if-ge v0, v2, :cond_1

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/gesture/component/LockView;->b(I)Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->mGridMargin:I

    iget v5, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->mGridBetweenX:I

    iget v6, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->h:I

    rem-int v6, v0, v6

    mul-int/2addr v5, v6

    add-int/2addr v2, v5

    iget v5, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->mGridWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v2

    iget-boolean v2, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->u:Z

    if-eqz v2, :cond_3

    move v2, v1

    :goto_1
    iget v6, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->mGridBetweenY:I

    iget v7, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->h:I

    div-int v7, v0, v7

    mul-int/2addr v6, v7

    add-int/2addr v2, v6

    iget v6, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->mGridWidth:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v2, v6

    int-to-float v5, v5

    sub-float/2addr v5, p1

    float-to-int v5, v5

    int-to-float v2, v2

    sub-float/2addr v2, p2

    float-to-int v2, v2

    mul-int/2addr v5, v5

    mul-int/2addr v2, v2

    add-int/2addr v2, v5

    int-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    iget v2, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->t:I

    int-to-double v7, v2

    cmpg-double v2, v5, v7

    if-gtz v2, :cond_4

    move v2, v3

    :goto_2
    if-eqz v2, :cond_6

    iget v2, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->k:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->j:[I

    iget v5, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->k:I

    add-int/lit8 v5, v5, -0x1

    aget v2, v2, v5

    rem-int/lit8 v5, v2, 0x3

    div-int/lit8 v6, v2, 0x3

    rem-int/lit8 v7, v0, 0x3

    div-int/lit8 v8, v0, 0x3

    sub-int/2addr v5, v7

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_5

    sub-int v5, v6, v8

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_5

    add-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v2}, Lcom/alipay/mobile/security/gesture/component/LockView;->b(I)Z

    move-result v5

    if-eqz v5, :cond_5

    :goto_3
    if-eq v4, v2, :cond_0

    invoke-direct {p0, v2}, Lcom/alipay/mobile/security/gesture/component/LockView;->a(I)V

    :cond_0
    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/gesture/component/LockView;->a(I)V

    :cond_1
    iget v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->k:I

    if-lez v0, :cond_2

    move v1, v3

    :cond_2
    return v1

    :cond_3
    iget v2, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->mGridMargin:I

    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_2

    :cond_5
    move v2, v4

    goto :goto_3

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method private b(I)Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->i:I

    add-int/lit8 v2, p1, 0x1

    shl-int v2, v0, v2

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(I)I
    .locals 3

    iget v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->mGridMargin:I

    iget v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->mGridBetweenX:I

    iget v2, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->h:I

    rem-int v2, p1, v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->t:I

    add-int/2addr v0, v1

    return v0
.end method

.method private d(I)I
    .locals 3

    iget-boolean v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->u:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->mGridBetweenY:I

    iget v2, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->h:I

    div-int v2, p1, v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->t:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->mGridMargin:I

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->i:I

    iput-boolean v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->m:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->v:Z

    iget v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->k:I

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->k:I

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/LockView;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v6, 0x0

    move v0, v6

    :goto_0
    iget v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->g:I

    if-ge v0, v1, :cond_3

    iget v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->mGridMargin:I

    iget v2, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->mGridBetweenX:I

    iget v3, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->h:I

    rem-int v3, v0, v3

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    int-to-float v2, v1

    iget-boolean v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->u:Z

    if-eqz v1, :cond_1

    move v1, v6

    :goto_1
    iget v3, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->mGridBetweenY:I

    iget v4, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->h:I

    div-int v4, v0, v4

    mul-int/2addr v3, v4

    add-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->i:I

    const/4 v4, 0x1

    add-int/lit8 v5, v0, 0x1

    shl-int/2addr v4, v5

    and-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    if-lez v3, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-boolean v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->v:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->q:Lcom/alipay/mobile/security/gesture/component/l;

    if-eqz v1, :cond_0

    iput-boolean v6, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->v:Z

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->q:Lcom/alipay/mobile/security/gesture/component/l;

    invoke-interface {v1}, Lcom/alipay/mobile/security/gesture/component/l;->a()V

    :cond_0
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->mGridMargin:I

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->s:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_3
    move v7, v6

    :goto_3
    iget v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->k:I

    add-int/lit8 v0, v0, -0x1

    if-ge v7, v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->j:[I

    aget v0, v0, v7

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/gesture/component/LockView;->c(I)I

    move-result v0

    int-to-float v1, v0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->j:[I

    aget v0, v0, v7

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/gesture/component/LockView;->d(I)I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->j:[I

    add-int/lit8 v3, v7, 0x1

    aget v0, v0, v3

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/gesture/component/LockView;->c(I)I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->j:[I

    add-int/lit8 v4, v7, 0x1

    aget v0, v0, v4

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/gesture/component/LockView;->d(I)I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_3

    :cond_4
    iget-boolean v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->l:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->k:I

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->a:Landroid/graphics/Paint;

    const/16 v1, 0x99

    const/16 v2, 0xd2

    const/16 v3, 0xff

    invoke-static {v1, v6, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->j:[I

    iget v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->k:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/gesture/component/LockView;->c(I)I

    move-result v0

    int-to-float v1, v0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->j:[I

    iget v2, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->k:I

    add-int/lit8 v2, v2, -0x1

    aget v0, v0, v2

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/gesture/component/LockView;->d(I)I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->n:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->n:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_5
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/LockView;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/alipay/mobile/security/gesture/component/LockView;->getDefaultSize(II)I

    move-result v3

    iget v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->h:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    div-int v0, v3, v0

    iput v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->mGridWidth:I

    iget v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->mGridWidth:I

    iput v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->mGridHeight:I

    iget v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->mGridWidth:I

    iget v4, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->h:I

    mul-int/2addr v0, v4

    sub-int v0, v3, v0

    iget v4, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->h:I

    add-int/lit8 v4, v4, -0x1

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x2

    div-int/2addr v0, v4

    iput v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->mGridMargin:I

    iget v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->mGridWidth:I

    iget v4, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->mGridMargin:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    iput v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->mGridBetweenX:I

    iget v4, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->mGridHeight:I

    iget-boolean v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->u:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget v5, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->mGridMargin:I

    mul-int/2addr v0, v5

    add-int/2addr v0, v4

    iput v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->mGridBetweenY:I

    iget v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->mGridWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->t:I

    iget v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->mGridBetweenY:I

    iget v4, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->h:I

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v0, v4

    iget v4, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->mGridHeight:I

    add-int/2addr v0, v4

    iget-boolean v4, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->u:Z

    if-eqz v4, :cond_0

    move v1, v2

    :cond_0
    iget v4, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->mGridMargin:I

    mul-int/2addr v1, v4

    add-int/2addr v0, v1

    invoke-virtual {p0, v3, v0}, Lcom/alipay/mobile/security/gesture/component/LockView;->setMeasuredDimension(II)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->r:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->mGridWidth:I

    iget v3, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->mGridHeight:I

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->s:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->mGridWidth:I

    iget v3, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->mGridHeight:I

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v5

    :pswitch_1
    iput-boolean v5, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->m:Z

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->p:Lcom/alipay/mobile/security/gesture/component/m;

    if-eqz v0, :cond_2

    const-string/jumbo v0, ""

    move-object v2, v0

    move v0, v1

    :goto_1
    iget v3, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->k:I

    if-ge v0, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->j:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->p:Lcom/alipay/mobile/security/gesture/component/m;

    invoke-interface {v0, v2}, Lcom/alipay/mobile/security/gesture/component/m;->a(Ljava/lang/String;)V

    :cond_2
    iput-boolean v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->l:Z

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/LockView;->invalidate()V

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->m:Z

    if-eqz v0, :cond_3

    iput v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->i:I

    iput v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->k:I

    iput-boolean v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->m:Z

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/security/gesture/component/LockView;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/LockView;->invalidate()V

    goto :goto_0

    :pswitch_3
    iput-boolean v1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->l:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v3

    move v2, v1

    :goto_2
    add-int/lit8 v0, v3, 0x1

    if-ge v2, v0, :cond_6

    if-ge v2, v3, :cond_4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v0

    move v1, v0

    :goto_3
    if-ge v2, v3, :cond_5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v0

    :goto_4
    iget-boolean v4, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->l:Z

    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/security/gesture/component/LockView;->a(FF)Z

    move-result v0

    or-int/2addr v0, v4

    iput-boolean v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->l:Z

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    move v1, v0

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_4

    :cond_6
    iget-boolean v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->n:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->n:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/LockView;->invalidate()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public setOnFirstInputListener(Lcom/alipay/mobile/security/gesture/component/l;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->q:Lcom/alipay/mobile/security/gesture/component/l;

    return-void
.end method

.method public setOnLockInputListener(Lcom/alipay/mobile/security/gesture/component/m;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->p:Lcom/alipay/mobile/security/gesture/component/m;

    return-void
.end method

.method public setQuitOnDone(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/security/gesture/component/LockView;->o:Z

    return-void
.end method
