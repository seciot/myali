.class public Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderObtainable;
.super Lcom/alipay/mobile/commonui/widget/APLinearLayout;


# instance fields
.field private mBtnAddCard:Lcom/alipay/mobile/commonui/widget/APButton;

.field private mIvLogo:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private mTvLogoText:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private mTvSecondLogoText:Lcom/alipay/mobile/commonui/widget/APTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderObtainable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderObtainable;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/alipassapp/R$layout;->sub_membercard_obtainable:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderObtainable;->addView(Landroid/view/View;)V

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->iv_obtainable_card_logo:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderObtainable;->mIvLogo:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->tv_obtainable_card_logotext:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderObtainable;->mTvLogoText:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->tv_obtainable_card_second_logotext:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderObtainable;->mTvSecondLogoText:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->btn_add_card:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderObtainable;->mBtnAddCard:Lcom/alipay/mobile/commonui/widget/APButton;

    return-void
.end method

.method private initInfoFields(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/alipassapp/ui/ev;)V
    .locals 7

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderObtainable;->mIvLogo:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderObtainable;->mTvLogoText:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderObtainable;->mTvSecondLogoText:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderObtainable;->mBtnAddCard:Lcom/alipay/mobile/commonui/widget/APButton;

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/widget/b;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/alipassapp/ui/widget/b;-><init>(Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderObtainable;Lcom/alipay/mobile/alipassapp/ui/ev;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public refresh(Lcom/alipay/mobile/alipassapp/biz/model/b;Lcom/alipay/mobile/alipassapp/ui/ev;)V
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/alipassapp/biz/model/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/mobile/alipassapp/biz/model/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alipay/mobile/alipassapp/biz/model/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alipay/mobile/alipassapp/biz/model/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/mobile/alipassapp/biz/model/b;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/alipay/mobile/alipassapp/biz/model/b;->f()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5, p2}, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderObtainable;->initInfoFields(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/alipassapp/ui/ev;)V

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v4, Lcom/androidquery/callback/ImageOptions;

    invoke-direct {v4}, Lcom/androidquery/callback/ImageOptions;-><init>()V

    const/4 v0, 0x3

    iput v0, v4, Lcom/androidquery/callback/ImageOptions;->round:I

    iput-boolean v7, v4, Lcom/androidquery/callback/ImageOptions;->fileCache:Z

    iput-boolean v7, v4, Lcom/androidquery/callback/ImageOptions;->memCache:Z

    sget v0, Lcom/alipay/mobile/alipassapp/R$drawable;->membercard_icon_back:I

    iput v0, v4, Lcom/androidquery/callback/ImageOptions;->fallback:I

    new-instance v0, Lcom/androidquery/AQuery;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderObtainable;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/androidquery/AQuery;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderObtainable;->mIvLogo:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v5}, Lcom/androidquery/AQuery;->id(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    check-cast v0, Lcom/androidquery/AQuery;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/androidquery/AQuery;->image(Ljava/lang/String;Lcom/androidquery/callback/ImageOptions;)Lcom/androidquery/AbstractAQuery;

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderObtainable;->mTvLogoText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderObtainable;->mTvSecondLogoText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderObtainable;->mTvLogoText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v8}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderObtainable;->mTvSecondLogoText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v8}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderObtainable;->mTvLogoText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderObtainable;->mTvSecondLogoText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto/16 :goto_0
.end method
