.class public Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;
.super Lcom/alipay/mobile/commonui/widget/APTextView;


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->b:F

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->b:F

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView$1;-><init>(Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method


# virtual methods
.method public reSizeText()V
    .locals 0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->setAutoTextSize()V

    return-void
.end method

.method public setAutoTextSize()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->a:Landroid/graphics/Paint;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->getTextSize()F

    move-result v1

    div-float v0, v1, v0

    invoke-virtual {p0, v3, v0}, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->setTextSize(IF)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->b:F

    invoke-virtual {p0, v3, v0}, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->setTextSize(IF)V

    goto :goto_0
.end method
