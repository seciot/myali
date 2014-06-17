.class public Lcom/alipay/mobile/android/avatar/process/CropImageView;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field static final DRAG:I = 0x1

.field static final MAX_SCALE:F = 10.0f

.field static final NONE:I = 0x0

.field static final ZOOM:I = 0x2


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Landroid/graphics/RectF;

.field private g:Landroid/util/DisplayMetrics;

.field private h:Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field mMatrix:Landroid/graphics/Matrix;

.field mid:Landroid/graphics/PointF;

.field minScaleR:F

.field mode:I

.field private n:I

.field oldDist:F

.field prev:Landroid/graphics/PointF;

.field savedMatrix:Landroid/graphics/Matrix;

.field public tmp_avatarDirStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->i:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->tmp_avatarDirStr:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->k:Z

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->savedMatrix:Landroid/graphics/Matrix;

    iput v1, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->mode:I

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->prev:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->mid:Landroid/graphics/PointF;

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->oldDist:F

    iput v1, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->l:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->m:I

    iput v1, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->n:I

    invoke-direct {p0}, Lcom/alipay/mobile/android/avatar/process/CropImageView;->a()V

    invoke-direct {p0}, Lcom/alipay/mobile/android/avatar/process/CropImageView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->i:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->tmp_avatarDirStr:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->k:Z

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->savedMatrix:Landroid/graphics/Matrix;

    iput v1, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->mode:I

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->prev:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->mid:Landroid/graphics/PointF;

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->oldDist:F

    iput v1, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->l:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->m:I

    iput v1, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->n:I

    invoke-direct {p0}, Lcom/alipay/mobile/android/avatar/process/CropImageView;->a()V

    iget-object v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->g:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->d:I

    iget-object v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->g:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->e:I

    iget v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->d:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/android/avatar/process/CropImageView;->setMinimumWidth(I)V

    iget v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->e:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/android/avatar/process/CropImageView;->setMinimumHeight(I)V

    invoke-direct {p0}, Lcom/alipay/mobile/android/avatar/process/CropImageView;->b()V

    return-void
.end method

.method private static a(Landroid/view/MotionEvent;)F
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method private a()V
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->g:Landroid/util/DisplayMetrics;

    invoke-virtual {p0}, Lcom/alipay/mobile/android/avatar/process/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->g:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    return-void
.end method

.method private a(FF)Z
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v9, 0x5

    const/4 v8, 0x2

    const/16 v2, 0x9

    new-array v3, v2, [F

    iget-object v2, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->getValues([F)V

    aget v2, v3, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    aget v4, v3, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/4 v2, 0x0

    iget v5, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->n:I

    packed-switch v5, :pswitch_data_0

    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return v0

    :pswitch_0
    new-instance v2, Landroid/graphics/RectF;

    aget v5, v3, v8

    aget v6, v3, v9

    aget v7, v3, v8

    iget v8, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->b:I

    int-to-float v8, v8

    mul-float/2addr v8, v4

    add-float/2addr v7, v8

    aget v3, v3, v9

    iget v8, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->c:I

    int-to-float v8, v8

    mul-float/2addr v4, v8

    add-float/2addr v3, v4

    invoke-direct {v2, v5, v6, v7, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    :pswitch_1
    new-instance v2, Landroid/graphics/RectF;

    aget v5, v3, v8

    aget v6, v3, v9

    iget v7, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->b:I

    int-to-float v7, v7

    mul-float/2addr v7, v4

    sub-float/2addr v6, v7

    aget v7, v3, v8

    iget v8, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->c:I

    int-to-float v8, v8

    mul-float/2addr v4, v8

    add-float/2addr v4, v7

    aget v3, v3, v9

    invoke-direct {v2, v5, v6, v4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    :pswitch_2
    new-instance v2, Landroid/graphics/RectF;

    aget v5, v3, v8

    iget v6, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->b:I

    int-to-float v6, v6

    mul-float/2addr v6, v4

    sub-float/2addr v5, v6

    aget v6, v3, v9

    iget v7, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->c:I

    int-to-float v7, v7

    mul-float/2addr v4, v7

    sub-float v4, v6, v4

    aget v6, v3, v8

    aget v3, v3, v9

    invoke-direct {v2, v5, v4, v6, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    :pswitch_3
    new-instance v2, Landroid/graphics/RectF;

    aget v5, v3, v8

    iget v6, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->c:I

    int-to-float v6, v6

    mul-float/2addr v6, v4

    sub-float/2addr v5, v6

    aget v6, v3, v9

    aget v7, v3, v8

    aget v3, v3, v9

    iget v8, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->b:I

    int-to-float v8, v8

    mul-float/2addr v4, v8

    add-float/2addr v3, v4

    invoke-direct {v2, v5, v6, v7, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private b()V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, p0}, Lcom/alipay/mobile/android/avatar/process/CropImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/android/avatar/process/CropImageView;->setLongClickable(Z)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/android/avatar/process/CropImageView;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/android/avatar/process/CropImageView;->setFocusableInTouchMode(Z)V

    :try_start_0
    const-string/jumbo v0, "com.android.internal.R$dimen"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "status_bar_height"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/android/avatar/process/CropImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->l:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private c()V
    .locals 5

    const/high16 v2, 0x3f80

    const/high16 v4, 0x3f00

    iget v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->b:I

    iget v1, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->c:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->g:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iget v1, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->b:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v1, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->f:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget v2, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->b:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->f:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget v3, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->c:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    mul-float/2addr v0, v4

    sub-float v0, v2, v0

    iget-object v2, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->g:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iget v1, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->c:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method private d()Landroid/graphics/RectF;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->b:I

    int-to-float v1, v1

    iget v2, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->c:I

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-object v0
.end method


# virtual methods
.method protected center(ZZ)V
    .locals 8

    const/high16 v7, 0x4000

    const/4 v0, 0x0

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v0, v0, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    if-eqz p2, :cond_6

    iget-object v4, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->g:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v4

    cmpg-float v5, v1, v5

    if-gez v5, :cond_2

    int-to-float v4, v4

    sub-float v1, v4, v1

    iget v4, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->l:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    div-float/2addr v1, v7

    iget v4, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v4

    :goto_0
    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->g:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v4

    cmpg-float v5, v3, v5

    if-gez v5, :cond_4

    int-to-float v0, v4

    sub-float/2addr v0, v3

    div-float/2addr v0, v7

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->n:I

    rem-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->n:I

    rem-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, -0x5a

    int-to-float v1, v1

    iget v2, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->b:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->c:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    :cond_1
    return-void

    :cond_2
    iget v1, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_3

    iget v1, v2, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    goto :goto_0

    :cond_3
    iget v1, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gez v1, :cond_6

    iget v1, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->c:I

    int-to-float v1, v1

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v4

    goto :goto_0

    :cond_4
    iget v5, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v5, v5, v0

    if-lez v5, :cond_5

    iget v0, v2, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    goto :goto_1

    :cond_5
    iget v5, v2, Landroid/graphics/RectF;->right:F

    int-to-float v6, v4

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    int-to-float v0, v4

    sub-float/2addr v0, v3

    div-float/2addr v0, v7

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    goto :goto_1

    :cond_6
    move v1, v0

    goto :goto_0
.end method

.method public copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v0, 0x1400

    :try_start_2
    new-array v0, v0, [B

    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    :cond_1
    throw v0

    :cond_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    return-void

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->a:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v1, 0x4080

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->f:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    const/high16 v1, 0x6600

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v1, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->f:Landroid/graphics/RectF;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBitmap(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x1

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget-object v3, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->g:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/2addr v2, v3

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget-object v3, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->g:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->g:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iput v1, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, v1, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget-object v2, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->g:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget-object v2, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->g:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->g:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getCropBitmap()Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->a:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget v1, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->d:I

    iget v2, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->e:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->f:Landroid/graphics/RectF;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->f:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    neg-float v3, v3

    iget-object v4, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->f:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    neg-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->a:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    const/4 v7, 0x0

    const/high16 v6, 0x3f00

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-boolean v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->j:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-direct {v0, v7, v7, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->d:I

    int-to-float v3, v3

    mul-float/2addr v3, v6

    sub-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->e:I

    int-to-float v4, v4

    mul-float/2addr v4, v6

    sub-float/2addr v3, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->d:I

    int-to-float v5, v5

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    iget v5, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->e:I

    int-to-float v5, v5

    mul-float/2addr v5, v6

    add-float/2addr v0, v5

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->f:Landroid/graphics/RectF;

    iget-boolean v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->k:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/alipay/mobile/android/avatar/process/CropImageView;->c()V

    iput-boolean v7, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->k:Z

    :cond_1
    iget-boolean v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->j:Z

    if-eqz v0, :cond_2

    iput-boolean v7, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->j:Z

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0}, Lcom/alipay/mobile/android/avatar/process/CropImageView;->c()V

    :cond_2
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    const/high16 v8, 0x4000

    const/4 v7, 0x2

    const/high16 v6, 0x4120

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const/16 v0, 0x9

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    aget v1, v0, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    aget v0, v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->mode:I

    if-ne v1, v7, :cond_2

    iget v1, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->minScaleR:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->minScaleR:F

    iget v3, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->minScaleR:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {p0, v4, v4}, Lcom/alipay/mobile/android/avatar/process/CropImageView;->center(ZZ)V

    :cond_1
    cmpl-float v0, v0, v6

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->savedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/android/avatar/process/CropImageView;->invalidate()V

    return v4

    :pswitch_1
    iget-object v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->savedMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->prev:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/android/avatar/process/CropImageView;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_3

    iput v4, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->mode:I

    goto :goto_0

    :cond_3
    iput v5, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->mode:I

    goto :goto_0

    :pswitch_2
    invoke-static {p2}, Lcom/alipay/mobile/android/avatar/process/CropImageView;->a(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->oldDist:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/android/avatar/process/CropImageView;->a(FF)Z

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->oldDist:F

    cmpl-float v1, v1, v6

    if-lez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->savedMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->mid:Landroid/graphics/PointF;

    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v1, v8

    div-float/2addr v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    iput v7, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->mode:I

    goto/16 :goto_0

    :pswitch_3
    iput v5, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->mode:I

    goto/16 :goto_0

    :pswitch_4
    iget v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->mode:I

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->savedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->prev:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->prev:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    :cond_4
    iget v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->mode:I

    if-ne v0, v7, :cond_0

    invoke-static {p2}, Lcom/alipay/mobile/android/avatar/process/CropImageView;->a(Landroid/view/MotionEvent;)F

    move-result v0

    cmpl-float v1, v0, v6

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->savedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget v1, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->oldDist:F

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->mid:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->mid:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public recycle()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method public resizeBitmap(F)V
    .locals 3

    invoke-direct {p0}, Lcom/alipay/mobile/android/avatar/process/CropImageView;->d()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-virtual {v1, p1, p1, v2, v0}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    invoke-virtual {p0}, Lcom/alipay/mobile/android/avatar/process/CropImageView;->postInvalidate()V

    return-void
.end method

.method public rotateBitmap(F)V
    .locals 4

    const/high16 v3, 0x42b4

    invoke-direct {p0}, Lcom/alipay/mobile/android/avatar/process/CropImageView;->d()Landroid/graphics/RectF;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->m:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->m:I

    rem-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->n:I

    iget v1, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->n:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->n:I

    iget-object v1, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-virtual {v1, v3, v2, v0}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->savedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {p0}, Lcom/alipay/mobile/android/avatar/process/CropImageView;->postInvalidate()V

    return-void
.end method

.method setActivity(Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;)V
    .locals 2

    iput-object p1, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->h:Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->h:Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "userdata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "useravatar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->h:Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->tmp_avatarDirStr:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->h:Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "userdata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "useravatar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->h:Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "__tmp_avatar.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->i:Ljava/lang/String;

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->j:Z

    iput-object p1, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->b:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->c:I

    invoke-virtual {p0}, Lcom/alipay/mobile/android/avatar/process/CropImageView;->requestLayout()V

    goto :goto_0
.end method

.method public setBitmap(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget-object v2, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->g:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget-object v2, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->g:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->g:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/android/avatar/process/CropImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public writeBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->tmp_avatarDirStr:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/mobile/android/avatar/process/CropImageView;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x32

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
