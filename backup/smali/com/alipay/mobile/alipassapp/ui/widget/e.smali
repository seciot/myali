.class public final Lcom/alipay/mobile/alipassapp/ui/widget/e;
.super Landroid/graphics/drawable/Drawable;


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/RectF;

.field private c:Z

.field private d:Landroid/graphics/Bitmap;

.field private e:Z

.field private f:Landroid/graphics/Bitmap;

.field private g:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->a:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->b:Landroid/graphics/RectF;

    iput-boolean p2, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->c:Z

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->e:Z

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;ZI)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->a:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->b:Landroid/graphics/RectF;

    iput-boolean p2, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->c:Z

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->d:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->e:Z

    iput p3, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->g:I

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 6

    const/high16 v5, 0x4170

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->b:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->b:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->b:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->b:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v5, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->b:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->b:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    const/high16 v2, 0x4000

    div-float v2, v0, v2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->b:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->b:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 8

    const/high16 v7, 0x4000

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->b:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/widget/e;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->e:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->f:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->b:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->b:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->f:Landroid/graphics/Bitmap;

    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->f:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget-boolean v2, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->c:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->b:Landroid/graphics/RectF;

    const/16 v3, 0x8

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget v1, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->g:I

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->d:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iget-boolean v2, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->c:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->b:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v2, v3

    neg-float v2, v2

    div-float/2addr v2, v7

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->b:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->b:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr v3, v7

    iget-object v4, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->b:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v7

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->d:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->f:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_2
    return-void

    :cond_2
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->b:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->b:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->b:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    iget-object v6, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->b:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/16 v3, 0x8

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/widget/e;->a(Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->b:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v2, v3

    neg-float v2, v2

    div-float/2addr v2, v7

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->b:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v3, v4

    neg-float v3, v3

    div-float/2addr v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->b:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->b:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget-object v4, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->b:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v7

    iget-object v5, p0, Lcom/alipay/mobile/alipassapp/ui/widget/e;->b:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v7

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/widget/e;->a(Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_4
    :try_start_2
    invoke-direct {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/widget/e;->a(Landroid/graphics/Canvas;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x70t 0x41t
        0x0t 0x0t 0x70t 0x41t
        0x0t 0x0t 0x70t 0x41t
        0x0t 0x0t 0x70t 0x41t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x70t 0x41t
        0x0t 0x0t 0x70t 0x41t
        0x0t 0x0t 0x70t 0x41t
        0x0t 0x0t 0x70t 0x41t
        0x0t 0x0t 0x70t 0x41t
        0x0t 0x0t 0x70t 0x41t
        0x0t 0x0t 0x70t 0x41t
        0x0t 0x0t 0x70t 0x41t
    .end array-data
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final setAlpha(I)V
    .locals 0

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
