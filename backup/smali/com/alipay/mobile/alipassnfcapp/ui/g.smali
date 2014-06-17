.class final Lcom/alipay/mobile/alipassnfcapp/ui/g;
.super Landroid/view/View;


# instance fields
.field a:F

.field final synthetic b:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;Landroid/content/Context;D)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/g;->b:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/g;->a:F

    double-to-float v0, p3

    iput v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/g;->a:F

    return-void
.end method


# virtual methods
.method public final a(D)V
    .locals 1

    double-to-float v0, p1

    iput v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/g;->a:F

    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/g;->b:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/alipay/mobile/alipassnfcapp/ui/g;->b:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;

    #getter for: Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->wave_image:Lcom/alipay/mobile/commonui/widget/APImageView;
    invoke-static {v2}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->access$700(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;)Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/alipay/mobile/alipassnfcapp/ui/g;->b:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;

    #getter for: Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->variance:I
    invoke-static {v3}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->access$800(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/alipay/mobile/alipassnfcapp/ui/g;->b:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;

    #getter for: Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->wave_image:Lcom/alipay/mobile/commonui/widget/APImageView;
    invoke-static {v3}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->access$700(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;)Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/alipay/mobile/alipassnfcapp/ui/g;->b:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;

    #getter for: Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->variance:I
    invoke-static {v4}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->access$800(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/alipay/mobile/alipassnfcapp/ui/g;->b:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;

    #getter for: Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->wave_image:Lcom/alipay/mobile/commonui/widget/APImageView;
    invoke-static {v4}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->access$700(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;)Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/commonui/widget/APImageView;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/alipay/mobile/alipassnfcapp/ui/g;->b:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;

    #getter for: Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->variance:I
    invoke-static {v5}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->access$800(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/alipay/mobile/alipassnfcapp/ui/g;->b:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;

    #getter for: Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->wave_image:Lcom/alipay/mobile/commonui/widget/APImageView;
    invoke-static {v5}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->access$700(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;)Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/commonui/widget/APImageView;->getBottom()I

    move-result v5

    iget-object v6, p0, Lcom/alipay/mobile/alipassnfcapp/ui/g;->b:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;

    #getter for: Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->variance:I
    invoke-static {v6}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->access$800(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    #setter for: Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->rectF:Landroid/graphics/RectF;
    invoke-static {v0, v1}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->access$602(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/g;->b:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;

    #getter for: Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->rectF:Landroid/graphics/RectF;
    invoke-static {v0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->access$600(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;)Landroid/graphics/RectF;

    move-result-object v1

    const/high16 v2, 0x4387

    iget v3, p0, Lcom/alipay/mobile/alipassnfcapp/ui/g;->a:F

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/g;->b:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;

    #getter for: Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->paint:Landroid/graphics/Paint;
    invoke-static {v0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->access$900(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;)Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method
