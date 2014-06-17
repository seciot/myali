.class public Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;
.super Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;


# instance fields
.field private mExpImage:Lcom/alipay/mobile/commonui/widget/APImageView;

.field mIsFirstAjust:Z

.field private mLeftValue:Ljava/lang/String;

.field private mLeftValueAPTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private mRightValue:Ljava/lang/String;

.field private mRightValueAPTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->mIsFirstAjust:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->mIsFirstAjust:Z

    return-void
.end method

.method private AjustAPTextView(Lcom/alipay/mobile/commonui/widget/APTextView;Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    add-int/lit8 v0, v0, -0x3

    invoke-interface {v2, v3, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;)Lcom/alipay/mobile/commonui/widget/APTextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->mLeftValueAPTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->mLeftValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;Lcom/alipay/mobile/commonui/widget/APTextView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->AjustAPTextView(Lcom/alipay/mobile/commonui/widget/APTextView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;)Lcom/alipay/mobile/commonui/widget/APTextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->mRightValueAPTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->mRightValue:Ljava/lang/String;

    return-object v0
.end method

.method private getTextSize(Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;Lcom/alipay/mobile/commonui/widget/APTextView;)F
    .locals 2

    invoke-virtual {p1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/alipassapp/R$dimen;->alipass_boardingpass_primary_value_small:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->mValueTextSize:I

    int-to-float v0, v0

    goto :goto_0
.end method


# virtual methods
.method public refresh(Ljava/util/List;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;Lcom/alipay/mobile/framework/app/ActivityApplication;)V
    .locals 9
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

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->removeAllViews()V

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;->getExp()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->mRootView:Landroid/view/View;

    if-nez v0, :cond_1

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/alipassapp/R$layout;->sub_alipass_boardingpass_frontview_primary:I

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->mRootView:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->addView(Landroid/view/View;)V

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->mRootView:Landroid/view/View;

    sget v2, Lcom/alipay/mobile/alipassapp/R$id;->left_label:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->mlabelTextColor:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    iget v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->mlableTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v6, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextSize(IF)V

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->mRootView:Landroid/view/View;

    sget v5, Lcom/alipay/mobile/alipassapp/R$id;->left_value:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->mLeftValueAPTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->mLeftValue:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->mLeftValueAPTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v5, p0, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->mLeftValue:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->mLeftValueAPTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-static {v3, v0}, Lcom/alipay/mobile/alipassapp/ui/common/a;->a(Landroid/content/Context;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->mLeftValueAPTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->getTextSize(Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;Lcom/alipay/mobile/commonui/widget/APTextView;)F

    move-result v1

    invoke-virtual {v2, v6, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->mLeftValue:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->mLeftValue:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/common/a;->a(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->mLeftValueAPTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1, v7, v7, v7}, Lcom/alipay/mobile/commonui/widget/APTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->mLeftValueAPTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v2, Lcom/alipay/mobile/alipassapp/ui/common/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v5, v0, p3}, Lcom/alipay/mobile/alipassapp/ui/common/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v8, :cond_5

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->mRootView:Landroid/view/View;

    sget v2, Lcom/alipay/mobile/alipassapp/R$id;->right_label:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->mlabelTextColor:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    iget v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->mlableTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v6, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextSize(IF)V

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->mRootView:Landroid/view/View;

    sget v5, Lcom/alipay/mobile/alipassapp/R$id;->right_value:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->mRightValueAPTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->mRightValue:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->mRightValueAPTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v5, p0, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->mRightValue:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->mRightValueAPTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-static {v3, v0}, Lcom/alipay/mobile/alipassapp/ui/common/a;->a(Landroid/content/Context;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->mRightValueAPTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->getTextSize(Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;Lcom/alipay/mobile/commonui/widget/APTextView;)F

    move-result v1

    invoke-virtual {v2, v6, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->mRightValue:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->mRightValue:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/common/a;->a(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_4

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->mRightValueAPTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1, v7, v7, v7}, Lcom/alipay/mobile/commonui/widget/APTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->mRightValueAPTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v2, Lcom/alipay/mobile/alipassapp/ui/common/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v5, v0, p3}, Lcom/alipay/mobile/alipassapp/ui/common/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->exp_icon:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->mExpImage:Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->mExpImage:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    new-instance v0, Lcom/androidquery/AQuery;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->mRootView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/androidquery/AQuery;-><init>(Landroid/view/View;)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->mExpImage:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v1}, Lcom/androidquery/AQuery;->id(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    check-cast v0, Lcom/androidquery/AQuery;

    invoke-virtual {v0, v4}, Lcom/androidquery/AQuery;->image(Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;

    :cond_6
    iput-boolean v8, p0, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->mIsFirstAjust:Z

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/common/ap;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/alipassapp/ui/common/ap;-><init>(Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto/16 :goto_0
.end method
