.class public Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;
.super Lcom/alipay/mobile/commonui/widget/APLinearLayout;


# static fields
.field public static final COLOR_TRANSPARENT:Ljava/lang/String; = "color_transparent"

.field private static final HALF_PADDING:I = 0x28

.field public static final MC_HEADERSTYLE_0:I = 0x0

.field public static final MC_HEADERSTYLE_1:I = 0x1


# instance fields
.field private cardHeight:I

.field private cardWidth:I

.field private ivMCHeaderStyleBack:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private ivMCHeaderStyleBackColor:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private ivMCHeaderStyleLine:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private lastStrip:Ljava/lang/String;

.field private style:I

.field private tvHeadFieldOneKey:Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;

.field private tvHeadFieldOneValue:Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;

.field private tvHeadFieldTwoKey:Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;

.field private tvHeadFieldTwoValue:Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "lastStrip"

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;->lastStrip:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    const/4 v8, 0x5

    const v7, 0x3fd5c28f

    const/4 v6, 0x0

    const/16 v5, 0x14

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string/jumbo v0, "lastStrip"

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;->lastStrip:Ljava/lang/String;

    sget-object v0, Lcom/alipay/mobile/alipassapp/R$styleable;->alipass:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;->style:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/alipassapp/R$layout;->sub_membercard_header_style:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->iv_membercard_back:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;->ivMCHeaderStyleBack:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->iv_membercard_back_color:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;->ivMCHeaderStyleBackColor:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->tv_headfields_1_key:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;->tvHeadFieldOneKey:Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->tv_headfields_1_value:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;->tvHeadFieldOneValue:Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->tv_headfields_2_key:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;->tvHeadFieldTwoKey:Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->tv_headfields_2_value:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;->tvHeadFieldTwoValue:Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->iv_membercard_line:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;->ivMCHeaderStyleLine:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/alipassapp/R$dimen;->membercard_header_style_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v4, v0, 0x2

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;->cardWidth:I

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v3, v0, 0x2

    sub-int/2addr v1, v3

    int-to-float v1, v1

    div-float/2addr v1, v7

    float-to-int v1, v1

    iput v1, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;->cardHeight:I

    :goto_0
    iget v1, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;->style:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;->cardHeight:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;->cardHeight:I

    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->layout_headfields_2:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;->tvHeadFieldOneValue:Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;->setVisibility(I)V

    add-int/lit8 v1, v0, -0x14

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;->ivMCHeaderStyleBack:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v5, v6, v5, v8}, Lcom/alipay/mobile/commonui/widget/APImageView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;->ivMCHeaderStyleBackColor:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v5, v6, v5, v8}, Lcom/alipay/mobile/commonui/widget/APImageView;->setPadding(IIII)V

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->layout_headfields:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v5

    add-int/lit8 v5, v5, 0x28

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :goto_1
    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->layout_membercard_style:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    iget v5, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;->cardHeight:I

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;->addView(Landroid/view/View;)V

    return-void

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    rsub-int v1, v1, 0x1e0

    iput v1, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;->cardWidth:I

    const/high16 v1, 0x43f0

    mul-int/lit8 v3, v0, 0x2

    int-to-float v3, v3

    sub-float/2addr v1, v3

    div-float/2addr v1, v7

    float-to-int v1, v1

    iput v1, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;->cardHeight:I

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;)I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;->style:I

    return v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;)Lcom/alipay/mobile/commonui/widget/APImageView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;->ivMCHeaderStyleBack:Lcom/alipay/mobile/commonui/widget/APImageView;

    return-object v0
.end method


# virtual methods
.method public refreshUI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    const-string/jumbo v0, "color_transparent"

    invoke-static {p2, v0}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;->refreshUI(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->resolveColor(Ljava/lang/String;I)I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;->refreshUI(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public refreshUI(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v5, 0x0

    iget v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;->style:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;->ivMCHeaderStyleBackColor:Lcom/alipay/mobile/commonui/widget/APImageView;

    new-instance v3, Lcom/alipay/mobile/alipassapp/ui/widget/e;

    iget v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;->style:I

    if-ne v0, v2, :cond_3

    move v0, v2

    :goto_1
    invoke-direct {v3, p4, v0}, Lcom/alipay/mobile/alipassapp/ui/widget/e;-><init>(IZ)V

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;->lastStrip:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "null"

    invoke-static {v0, p1}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/androidquery/AQuery;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/androidquery/AQuery;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;->ivMCHeaderStyleBack:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v1}, Lcom/androidquery/AQuery;->id(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    check-cast v0, Lcom/androidquery/AQuery;

    iget v4, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;->cardWidth:I

    new-instance v6, Lcom/alipay/mobile/alipassapp/ui/widget/c;

    invoke-direct {v6, p0, p4}, Lcom/alipay/mobile/alipassapp/ui/widget/c;-><init>(Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;I)V

    move-object v1, p1

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Lcom/androidquery/AQuery;->image(Ljava/lang/String;ZZIILcom/androidquery/callback/BitmapAjaxCallback;)Lcom/androidquery/AbstractAQuery;

    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;->lastStrip:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;->tvHeadFieldOneKey:Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;->tvHeadFieldOneValue:Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;->tvHeadFieldTwoKey:Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;->tvHeadFieldTwoValue:Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p3}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;->tvHeadFieldOneKey:Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;

    invoke-virtual {v0, p3}, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    if-eqz p2, :cond_6

    move v1, v5

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    const/4 v0, 0x2

    if-ge v1, v0, :cond_6

    if-nez v1, :cond_5

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_3
    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;->tvHeadFieldOneValue:Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;->ivMCHeaderStyleLine:Lcom/alipay/mobile/commonui/widget/APImageView;

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/widget/d;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/alipassapp/ui/widget/d;-><init>(Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_3
    move v0, v5

    goto/16 :goto_1

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;->tvHeadFieldTwoKey:Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;->tvHeadFieldTwoValue:Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
