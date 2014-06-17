.class public Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;
.super Lcom/alipay/mobile/commonui/widget/APTextView;


# static fields
.field private static final DEFAULT_MIN_TEXT_SIZE:F = 1.0f


# instance fields
.field private maxTextSize:F

.field private minTextSize:F

.field private textPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;->initialise()V

    return-void
.end method

.method private initialise()V
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;->maxTextSize:F

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;->minTextSize:F

    return-void
.end method

.method private refitText(Ljava/lang/String;I)V
    .locals 4

    if-lez p2, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;->getPaddingLeft()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;->getPaddingRight()I

    move-result v1

    sub-int v1, v0, v1

    iget v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;->maxTextSize:F

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    :goto_0
    iget v2, p0, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;->minTextSize:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    int-to-float v3, v1

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const/high16 v2, 0x3f80

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;->minTextSize:F

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_2

    iget v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;->minTextSize:F

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_0
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 1

    if-eq p1, p3, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;->refitText(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/commonui/widget/APTextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;->getWidth()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;->refitText(Ljava/lang/String;I)V

    return-void
.end method
