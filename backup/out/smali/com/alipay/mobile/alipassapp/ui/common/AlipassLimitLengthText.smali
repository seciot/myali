.class public Lcom/alipay/mobile/alipassapp/ui/common/AlipassLimitLengthText;
.super Lcom/alipay/mobile/commonui/widget/APTextView;


# instance fields
.field private mMaxLength:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/alipay/mobile/alipassapp/R$styleable;->alipass:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassLimitLengthText;->mMaxLength:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private adjustTextWidth(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassLimitLengthText;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassLimitLengthText;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassLimitLengthText;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassLimitLengthText;->getTextSize()F

    move-result v1

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    if-eqz v0, :cond_1

    move-object v1, v0

    :goto_1
    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    const/high16 v2, 0x4120

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassLimitLengthText;->setWidth(I)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassLimitLengthText;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassLimitLengthText;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string/jumbo v1, ""

    goto :goto_1
.end method


# virtual methods
.method public setOriText(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassLimitLengthText;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassLimitLengthText;->mMaxLength:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassLimitLengthText;->mMaxLength:I

    :goto_0
    invoke-direct {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassLimitLengthText;->adjustTextWidth(I)V

    return-void

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method
