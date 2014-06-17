.class final Lcom/alipay/mobile/onsitepay/payer/sound/af;
.super Landroid/view/View;
.source "SoundButtonActivity.java"


# instance fields
.field a:F

.field final synthetic b:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;Landroid/content/Context;D)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/af;->b:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    .line 258
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 255
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/af;->a:F

    .line 259
    double-to-float v0, p3

    iput v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/af;->a:F

    .line 260
    return-void
.end method


# virtual methods
.method public final a(D)V
    .locals 1
    .parameter

    .prologue
    .line 263
    double-to-float v0, p1

    iput v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/af;->a:F

    .line 264
    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .prologue
    .line 269
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 271
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/af;->b:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/payer/sound/af;->b:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    iget-object v2, v2, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->white_image:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/alipay/mobile/onsitepay/payer/sound/af;->b:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    #getter for: Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->g:I
    invoke-static {v3}, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->access$500(Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/alipay/mobile/onsitepay/payer/sound/af;->b:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    iget-object v3, v3, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->white_image:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/alipay/mobile/onsitepay/payer/sound/af;->b:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    #getter for: Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->g:I
    invoke-static {v4}, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->access$500(Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/alipay/mobile/onsitepay/payer/sound/af;->b:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    iget-object v4, v4, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->white_image:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v4}, Lcom/alipay/mobile/commonui/widget/APImageView;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/alipay/mobile/onsitepay/payer/sound/af;->b:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    #getter for: Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->g:I
    invoke-static {v5}, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->access$500(Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/alipay/mobile/onsitepay/payer/sound/af;->b:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    iget-object v5, v5, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->white_image:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v5}, Lcom/alipay/mobile/commonui/widget/APImageView;->getBottom()I

    move-result v5

    iget-object v6, p0, Lcom/alipay/mobile/onsitepay/payer/sound/af;->b:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    #getter for: Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->g:I
    invoke-static {v6}, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->access$500(Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    #setter for: Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->e:Landroid/graphics/RectF;
    invoke-static {v0, v1}, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->access$402(Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 273
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/af;->b:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    #getter for: Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->e:Landroid/graphics/RectF;
    invoke-static {v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->access$400(Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;)Landroid/graphics/RectF;

    move-result-object v1

    const/high16 v2, 0x4387

    iget v3, p0, Lcom/alipay/mobile/onsitepay/payer/sound/af;->a:F

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/af;->b:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    #getter for: Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->d:Landroid/graphics/Paint;
    invoke-static {v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->access$600(Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;)Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 274
    return-void
.end method
