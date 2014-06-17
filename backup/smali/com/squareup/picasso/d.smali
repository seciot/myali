.class final Lcom/squareup/picasso/d;
.super Landroid/graphics/drawable/Drawable;


# static fields
.field private static final d:Landroid/graphics/Paint;


# instance fields
.field a:Landroid/graphics/drawable/Drawable;

.field b:Landroid/graphics/drawable/BitmapDrawable;

.field c:Z

.field private final e:Landroid/content/Context;

.field private final f:Z

.field private final g:F

.field private h:Lcom/squareup/picasso/g;

.field private i:I

.field private j:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/squareup/picasso/d;->d:Landroid/graphics/Paint;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/squareup/picasso/g;ZZ)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/picasso/d;->e:Landroid/content/Context;

    iput-object p3, p0, Lcom/squareup/picasso/d;->h:Lcom/squareup/picasso/g;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/squareup/picasso/d;->g:F

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/squareup/picasso/d;->b:Landroid/graphics/drawable/BitmapDrawable;

    iput-boolean p5, p0, Lcom/squareup/picasso/d;->f:Z

    sget-object v0, Lcom/squareup/picasso/g;->a:Lcom/squareup/picasso/g;

    if-eq p3, v0, :cond_0

    if-nez p4, :cond_0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/squareup/picasso/d;->j:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/picasso/d;->c:Z

    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .locals 8

    invoke-virtual {p0}, Lcom/squareup/picasso/d;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v3, v1

    int-to-float v4, v2

    div-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v6, v4

    int-to-float v7, v5

    div-float/2addr v6, v7

    cmpg-float v3, v6, v3

    if-gez v3, :cond_0

    int-to-float v2, v2

    int-to-float v3, v5

    div-float/2addr v2, v3

    int-to-float v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int v1, v2, v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v3, v1

    add-int/2addr v2, v1

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_0
    return-void

    :cond_0
    int-to-float v1, v1

    int-to-float v3, v4

    div-float/2addr v1, v3

    int-to-float v3, v5

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int v2, v1, v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v3, v2

    add-int/2addr v1, v2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v3, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method static a(Landroid/widget/ImageView;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/squareup/picasso/g;ZZ)V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Lcom/squareup/picasso/d;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/squareup/picasso/d;

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_3

    sget-object v0, Lcom/squareup/picasso/g;->a:Lcom/squareup/picasso/g;

    if-eq p3, v0, :cond_2

    if-nez p4, :cond_2

    const/4 v0, 0x1

    :goto_1
    iget-object v2, v1, Lcom/squareup/picasso/d;->b:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, v1, Lcom/squareup/picasso/d;->b:Landroid/graphics/drawable/BitmapDrawable;

    iput-object v2, v1, Lcom/squareup/picasso/d;->a:Landroid/graphics/drawable/Drawable;

    :cond_0
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, v1, Lcom/squareup/picasso/d;->e:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v2, v1, Lcom/squareup/picasso/d;->b:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, v1, Lcom/squareup/picasso/d;->b:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v2}, Lcom/squareup/picasso/d;->a(Landroid/graphics/drawable/Drawable;)V

    iput-object p3, v1, Lcom/squareup/picasso/d;->h:Lcom/squareup/picasso/g;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/squareup/picasso/d;->j:J

    iput-boolean v0, v1, Lcom/squareup/picasso/d;->c:Z

    invoke-virtual {v1}, Lcom/squareup/picasso/d;->invalidateSelf()V

    :goto_2
    return-void

    :cond_1
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/squareup/picasso/d;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/squareup/picasso/d;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/squareup/picasso/g;ZZ)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v0, 0x1

    const/high16 v7, 0x3f80

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/squareup/picasso/d;->b:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v3, :cond_1

    iget-object v0, p0, Lcom/squareup/picasso/d;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v3, p0, Lcom/squareup/picasso/d;->c:Z

    if-eqz v3, :cond_2

    iget-wide v3, p0, Lcom/squareup/picasso/d;->j:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/squareup/picasso/d;->j:J

    iput v2, p0, Lcom/squareup/picasso/d;->i:I

    move v0, v2

    :cond_2
    :goto_1
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/squareup/picasso/d;->b:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    :goto_2
    iget-boolean v0, p0, Lcom/squareup/picasso/d;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v0, 0x4234

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    sget-object v0, Lcom/squareup/picasso/d;->d:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v0, -0x3ee0

    iget v2, p0, Lcom/squareup/picasso/d;->g:F

    mul-float/2addr v2, v0

    const/high16 v0, 0x40f0

    iget v3, p0, Lcom/squareup/picasso/d;->g:F

    mul-float/2addr v3, v0

    const/high16 v0, 0x4120

    iget v4, p0, Lcom/squareup/picasso/d;->g:F

    mul-float/2addr v4, v0

    sget-object v5, Lcom/squareup/picasso/d;->d:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget-object v0, Lcom/squareup/picasso/d;->d:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/squareup/picasso/d;->h:Lcom/squareup/picasso/g;

    iget v2, v2, Lcom/squareup/picasso/g;->d:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v0, -0x3ef0

    iget v2, p0, Lcom/squareup/picasso/d;->g:F

    mul-float/2addr v2, v0

    const/high16 v0, 0x40d0

    iget v3, p0, Lcom/squareup/picasso/d;->g:F

    mul-float/2addr v3, v0

    const/high16 v0, 0x4110

    iget v4, p0, Lcom/squareup/picasso/d;->g:F

    mul-float/2addr v4, v0

    sget-object v5, Lcom/squareup/picasso/d;->d:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/squareup/picasso/d;->j:J

    sub-long/2addr v3, v5

    long-to-float v3, v3

    const/high16 v4, 0x4348

    div-float/2addr v3, v4

    cmpl-float v4, v3, v7

    if-ltz v4, :cond_4

    :goto_3
    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, 0x437f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/squareup/picasso/d;->i:I

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/squareup/picasso/d;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/squareup/picasso/d;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_6
    iget v0, p0, Lcom/squareup/picasso/d;->i:I

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/squareup/picasso/d;->b:Landroid/graphics/drawable/BitmapDrawable;

    iget v2, p0, Lcom/squareup/picasso/d;->i:I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/squareup/picasso/d;->b:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/squareup/picasso/d;->b:Landroid/graphics/drawable/BitmapDrawable;

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    :cond_7
    invoke-virtual {p0}, Lcom/squareup/picasso/d;->invalidateSelf()V

    goto/16 :goto_2
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lcom/squareup/picasso/d;->b:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/picasso/d;->b:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lcom/squareup/picasso/d;->b:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/picasso/d;->b:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/squareup/picasso/d;->b:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/picasso/d;->b:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0, v0}, Lcom/squareup/picasso/d;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/d;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/squareup/picasso/d;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/squareup/picasso/d;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method public final setAlpha(I)V
    .locals 0

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
