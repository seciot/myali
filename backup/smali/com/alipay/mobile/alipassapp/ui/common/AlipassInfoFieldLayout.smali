.class public Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;
.super Lcom/alipay/mobile/commonui/widget/APLinearLayout;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mPaddingVertical:I

.field protected mSingleItemGravity:I

.field protected mValueTextColor:I

.field protected mValueTextSize:I

.field protected maxSize:I

.field protected mlabelTextColor:I

.field protected mlableTextSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/high16 v3, -0x100

    const/high16 v2, 0x4190

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v5, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;->maxSize:I

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/alipay/mobile/alipassapp/R$styleable;->alipass:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;->mlabelTextColor:I

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;->mlableTextSize:I

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;->mValueTextColor:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;->mValueTextSize:I

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;->mSingleItemGravity:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;->mPaddingVertical:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private setGravity(Lcom/alipay/mobile/commonui/widget/APLinearLayout;I)V
    .locals 1

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setGravity(I)V

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->tv_label:I

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setGravity(I)V

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->tv_value:I

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setGravity(I)V

    return-void
.end method


# virtual methods
.method protected getExtWidth(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/widget/LinearLayout$LayoutParams;",
            ">;"
        }
    .end annotation

    const/4 v10, -0x1

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-instance v5, Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;->mContext:Landroid/content/Context;

    invoke-direct {v5, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;-><init>(Landroid/content/Context;)V

    iget v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;->mlableTextSize:I

    int-to-float v0, v0

    invoke-virtual {v5, v3, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextSize(IF)V

    new-instance v6, Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;->mContext:Landroid/content/Context;

    invoke-direct {v6, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;-><init>(Landroid/content/Context;)V

    iget v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;->mValueTextSize:I

    int-to-float v0, v0

    invoke-virtual {v6, v3, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextSize(IF)V

    iget v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;->maxSize:I

    if-ge v1, v0, :cond_0

    move v0, v1

    :goto_0
    new-array v7, v0, [F

    const/4 v2, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v1, :cond_3

    iget v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;->maxSize:I

    if-ge v4, v0, :cond_3

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getLabel()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v8, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v8

    invoke-virtual {v6}, Lcom/alipay/mobile/commonui/widget/APTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v9, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    invoke-static {v8, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, v7, v4

    aget v0, v7, v4

    add-float/2addr v0, v2

    :goto_4
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;->maxSize:I

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_2

    :cond_2
    const-string/jumbo v0, ""

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;->getPaddingRight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    cmpl-float v0, v0, v4

    if-lez v0, :cond_8

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;->getPaddingRight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    sub-float v2, v0, v2

    iget v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;->maxSize:I

    if-gt v1, v0, :cond_5

    move v0, v1

    :goto_5
    int-to-float v0, v0

    div-float v0, v2, v0

    float-to-int v0, v0

    :goto_6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_7
    if-ge v3, v1, :cond_7

    iget v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;->maxSize:I

    if-ge v3, v2, :cond_7

    if-eqz v0, :cond_4

    add-int/lit8 v2, v1, -0x1

    iget v5, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;->maxSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ne v3, v2, :cond_6

    :cond_4
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x3f80

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :goto_8
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_5
    iget v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;->maxSize:I

    goto :goto_5

    :cond_6
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    aget v5, v7, v3

    int-to-float v6, v0

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v2, v5, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_8

    :cond_7
    return-object v4

    :cond_8
    move v0, v3

    goto :goto_6

    :cond_9
    move v0, v2

    goto :goto_4
.end method

.method public refresh(Ljava/util/List;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;Lcom/alipay/mobile/framework/app/ActivityApplication;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;",
            ">;",
            "Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;",
            "Lcom/alipay/mobile/framework/app/ActivityApplication;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;->getOrientation()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/common/h;

    invoke-direct {v1, p0, p1, p3}, Lcom/alipay/mobile/alipassapp/ui/common/h;-><init>(Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;Ljava/util/List;Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method protected setGravity(IILcom/alipay/mobile/commonui/widget/APLinearLayout;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x3

    if-ne p1, v2, :cond_1

    if-nez p2, :cond_0

    iget v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;->mSingleItemGravity:I

    invoke-direct {p0, p3, v0}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;->setGravity(Lcom/alipay/mobile/commonui/widget/APLinearLayout;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p1, v3, :cond_4

    if-nez p2, :cond_2

    invoke-direct {p0, p3, v1}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;->setGravity(Lcom/alipay/mobile/commonui/widget/APLinearLayout;I)V

    goto :goto_0

    :cond_2
    if-ne p2, v2, :cond_0

    :cond_3
    :goto_1
    const/4 v0, 0x5

    invoke-direct {p0, p3, v0}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;->setGravity(Lcom/alipay/mobile/commonui/widget/APLinearLayout;I)V

    goto :goto_0

    :cond_4
    if-ne p1, v1, :cond_7

    if-eqz p2, :cond_5

    if-ne p2, v2, :cond_6

    :cond_5
    invoke-direct {p0, p3, v1}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;->setGravity(Lcom/alipay/mobile/commonui/widget/APLinearLayout;I)V

    goto :goto_0

    :cond_6
    if-ne p2, v3, :cond_0

    goto :goto_1

    :cond_7
    const/4 v0, 0x4

    if-lt p1, v0, :cond_0

    if-eqz p2, :cond_8

    if-ne p2, v2, :cond_9

    :cond_8
    invoke-direct {p0, p3, v1}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;->setGravity(Lcom/alipay/mobile/commonui/widget/APLinearLayout;I)V

    goto :goto_0

    :cond_9
    if-eq p2, v3, :cond_3

    if-ne p2, v1, :cond_0

    goto :goto_1
.end method
