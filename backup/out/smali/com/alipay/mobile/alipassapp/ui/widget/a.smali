.class public final Lcom/alipay/mobile/alipassapp/ui/widget/a;
.super Landroid/graphics/drawable/Drawable;


# instance fields
.field private a:Landroid/graphics/RectF;

.field private b:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/a;->b:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/a;->a:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/a;->b:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/a;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/a;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 3

    const/high16 v2, 0x4120

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/a;->a:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/widget/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/a;->a:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/widget/a;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/a;->a:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/widget/a;->a:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/widget/a;->a:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v2

    iput v0, v1, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/a;->a:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/widget/a;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

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
