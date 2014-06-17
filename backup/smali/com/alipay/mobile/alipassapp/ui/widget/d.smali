.class final Lcom/alipay/mobile/alipassapp/ui/widget/d;
.super Landroid/graphics/drawable/Drawable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;

.field private b:Landroid/graphics/RectF;

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;)V
    .locals 4

    const/4 v3, 0x1

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/widget/d;->a:Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/d;->b:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/d;->c:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/d;->d:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/d;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/d;->c:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/alipassapp/R$color;->membercard_header_style_line:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/d;->c:Landroid/graphics/Paint;

    const/high16 v1, 0x40a0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/d;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/d;->d:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/alipassapp/R$color;->membercard_header_style_line:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 7

    const/high16 v6, 0x4000

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/d;->b:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/widget/d;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/d;->b:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float v1, v0, v6

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/d;->b:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float v2, v0, v6

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/d;->b:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/widget/d;->b:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v6

    sub-float v3, v0, v3

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/d;->b:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float v4, v0, v6

    iget-object v5, p0, Lcom/alipay/mobile/alipassapp/ui/widget/d;->c:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/d;->b:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v6

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/widget/d;->b:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v6

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/widget/d;->b:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v6

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/widget/d;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/d;->b:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/widget/d;->b:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v6

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/widget/d;->b:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v6

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/widget/d;->b:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v6

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/widget/d;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

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
