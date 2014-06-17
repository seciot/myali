.class public Lcom/alipay/mobile/alipassapp/ui/common/AlipassHeaderLayout;
.super Lcom/alipay/mobile/commonui/widget/APLinearLayout;


# instance fields
.field private mIvDivide:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private mIvLogo:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private mTvHeaderLabel:Lcom/alipay/mobile/alipassapp/ui/common/AlipassLimitLengthText;

.field private mTvHeaderValue:Lcom/alipay/mobile/alipassapp/ui/common/AlipassLimitLengthText;

.field private mTvLogoText:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private mTvSecondLogoText:Lcom/alipay/mobile/commonui/widget/APTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassHeaderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassHeaderLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/alipassapp/R$layout;->sub_alipass_header:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassHeaderLayout;->addView(Landroid/view/View;)V

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->iv_logo:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassHeaderLayout;->mIvLogo:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->tv_logotext:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassHeaderLayout;->mTvLogoText:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->tv_second_logotext:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassHeaderLayout;->mTvSecondLogoText:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->tv_header_label:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassLimitLengthText;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassHeaderLayout;->mTvHeaderLabel:Lcom/alipay/mobile/alipassapp/ui/common/AlipassLimitLengthText;

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->tv_header_value:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassLimitLengthText;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassHeaderLayout;->mTvHeaderValue:Lcom/alipay/mobile/alipassapp/ui/common/AlipassLimitLengthText;

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->iv_divide:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassHeaderLayout;->mIvDivide:Lcom/alipay/mobile/commonui/widget/APImageView;

    return-void
.end method

.method private initInfoFields()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassHeaderLayout;->mIvLogo:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassHeaderLayout;->mTvLogoText:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassHeaderLayout;->mTvSecondLogoText:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassHeaderLayout;->mTvHeaderLabel:Lcom/alipay/mobile/alipassapp/ui/common/AlipassLimitLengthText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassLimitLengthText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassHeaderLayout;->mTvHeaderValue:Lcom/alipay/mobile/alipassapp/ui/common/AlipassLimitLengthText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassLimitLengthText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassHeaderLayout;->mTvHeaderLabel:Lcom/alipay/mobile/alipassapp/ui/common/AlipassLimitLengthText;

    const/16 v1, 0x55

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassLimitLengthText;->setGravity(I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassHeaderLayout;->mTvHeaderValue:Lcom/alipay/mobile/alipassapp/ui/common/AlipassLimitLengthText;

    const/16 v1, 0x35

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassLimitLengthText;->setGravity(I)V

    return-void
.end method


# virtual methods
.method public refresh(Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;Z)V
    .locals 10

    const/16 v9, 0x15

    const/4 v6, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getDisplayInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getDisplayInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;->getLogo()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    invoke-virtual {p1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getLogoText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getSecondLogoText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getHeadFields()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassHeaderLayout;->initInfoFields()V

    if-eqz v1, :cond_2

    new-instance v5, Lcom/androidquery/callback/ImageOptions;

    invoke-direct {v5}, Lcom/androidquery/callback/ImageOptions;-><init>()V

    iput-boolean v6, v5, Lcom/androidquery/callback/ImageOptions;->fileCache:Z

    iput-boolean v6, v5, Lcom/androidquery/callback/ImageOptions;->memCache:Z

    const/16 v0, 0xa

    iput v0, v5, Lcom/androidquery/callback/ImageOptions;->round:I

    new-instance v0, Lcom/androidquery/AQuery;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassHeaderLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/androidquery/AQuery;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassHeaderLayout;->mIvLogo:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v6}, Lcom/androidquery/AQuery;->id(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    check-cast v0, Lcom/androidquery/AQuery;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/androidquery/AQuery;->image(Ljava/lang/String;Lcom/androidquery/callback/ImageOptions;)Lcom/androidquery/AbstractAQuery;

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassHeaderLayout;->mTvLogoText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassHeaderLayout;->mTvSecondLogoText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassHeaderLayout;->mTvLogoText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v8}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    :goto_2
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassHeaderLayout;->mTvSecondLogoText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v8}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    :goto_3
    if-eqz v4, :cond_7

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassHeaderLayout;->mTvHeaderLabel:Lcom/alipay/mobile/alipassapp/ui/common/AlipassLimitLengthText;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassLimitLengthText;->setOriText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassHeaderLayout;->mTvHeaderValue:Lcom/alipay/mobile/alipassapp/ui/common/AlipassLimitLengthText;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassLimitLengthText;->setOriText(Ljava/lang/String;)V

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassHeaderLayout;->mTvHeaderLabel:Lcom/alipay/mobile/alipassapp/ui/common/AlipassLimitLengthText;

    invoke-virtual {v0, v8}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassLimitLengthText;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassHeaderLayout;->mTvHeaderValue:Lcom/alipay/mobile/alipassapp/ui/common/AlipassLimitLengthText;

    invoke-virtual {v0, v9}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassLimitLengthText;->setGravity(I)V

    :goto_4
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassHeaderLayout;->mTvHeaderValue:Lcom/alipay/mobile/alipassapp/ui/common/AlipassLimitLengthText;

    invoke-virtual {v0, v8}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassLimitLengthText;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassHeaderLayout;->mTvHeaderLabel:Lcom/alipay/mobile/alipassapp/ui/common/AlipassLimitLengthText;

    invoke-virtual {v0, v9}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassLimitLengthText;->setGravity(I)V

    :cond_7
    :goto_5
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassHeaderLayout;->mIvDivide:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v8}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x0

    move-object v1, v0

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassHeaderLayout;->mTvLogoText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_a
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassHeaderLayout;->mTvSecondLogoText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_b
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassHeaderLayout;->mTvHeaderLabel:Lcom/alipay/mobile/alipassapp/ui/common/AlipassLimitLengthText;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassLimitLengthText;->setVisibility(I)V

    goto :goto_4

    :cond_c
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassHeaderLayout;->mTvHeaderValue:Lcom/alipay/mobile/alipassapp/ui/common/AlipassLimitLengthText;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassLimitLengthText;->setVisibility(I)V

    goto :goto_5
.end method
