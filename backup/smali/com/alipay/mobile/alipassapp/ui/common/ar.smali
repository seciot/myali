.class public final Lcom/alipay/mobile/alipassapp/ui/common/ar;
.super Landroid/graphics/drawable/Drawable;


# instance fields
.field private a:[F

.field private b:[I

.field private c:Landroid/graphics/RectF;

.field private d:Landroid/graphics/Paint;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 7

    const/4 v6, 0x7

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ar;->d:Landroid/graphics/Paint;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ar;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ar;->f:Ljava/util/ArrayList;

    new-array v0, v6, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ar;->a:[F

    new-array v0, v6, [I

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ar;->b:[I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/ar;->b:[I

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/ar;->a:[F

    aget v2, v2, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2}, Lcom/alipay/mobile/alipassapp/ui/common/ar;->a(F)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v2}, Lcom/alipay/mobile/alipassapp/ui/common/ar;->a(F)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v2}, Lcom/alipay/mobile/alipassapp/ui/common/ar;->a(F)F

    move-result v2

    mul-float/2addr v2, v5

    float-to-int v2, v2

    invoke-static {v3, v4, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ar;->c:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ar;->d:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ar;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ar;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0x4ct 0x3et
        0x9at 0x99t 0x99t 0x3et
        0xcdt 0xcct 0xcct 0x3et
        0x9at 0x99t 0x19t 0x3ft
        0xcdt 0xcct 0x4ct 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private static a(F)F
    .locals 2

    const/high16 v0, 0x3f40

    const v1, 0x3e19999a

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    const/high16 v1, 0x3e80

    mul-float/2addr v1, p0

    mul-float/2addr v1, p0

    sub-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 10

    const/high16 v9, 0x40a0

    const/high16 v8, 0x4040

    const/high16 v7, 0x4020

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ar;->c:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/common/ar;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ar;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ar;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ar;->c:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    const/high16 v1, 0x4120

    div-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v1, v0, -0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/ar;->e:Ljava/util/ArrayList;

    new-instance v3, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/alipay/mobile/alipassapp/ui/common/ar;->c:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v7

    iget-object v5, p0, Lcom/alipay/mobile/alipassapp/ui/common/ar;->c:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    add-int/lit8 v6, v0, 0x1

    mul-int/lit8 v6, v6, 0xa

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/ar;->f:Ljava/util/ArrayList;

    new-instance v3, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/alipay/mobile/alipassapp/ui/common/ar;->c:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v7

    iget-object v5, p0, Lcom/alipay/mobile/alipassapp/ui/common/ar;->c:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    add-int/lit8 v6, v0, 0x1

    mul-int/lit8 v6, v6, 0xa

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ar;->c:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/ar;->c:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v8

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ar;->c:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/ar;->c:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v8

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ar;->c:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/ar;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v9, v9, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ar;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/common/ar;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v7, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ar;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/common/ar;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v7, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_2
    return-void
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
