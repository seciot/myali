.class public Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;
.super Landroid/widget/FrameLayout;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;)I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;->mHeight:I

    return v0
.end method

.method static synthetic access$002(Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;I)I
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;->mHeight:I

    return p1
.end method

.method static synthetic access$100(Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;Ljava/util/List;Lcom/alipay/mobile/framework/app/ActivityApplication;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;->refreshPrimaryText(Ljava/util/List;Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    return-void
.end method

.method private adjustPrimaryText(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/commonui/widget/APTextView;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/common/at;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/alipassapp/ui/common/at;-><init>(Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method private refreshPrimaryText(Ljava/util/List;Lcom/alipay/mobile/framework/app/ActivityApplication;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;",
            ">;",
            "Lcom/alipay/mobile/framework/app/ActivityApplication;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;->mContext:Landroid/content/Context;

    invoke-direct {v6, v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setOrientation(I)V

    const/16 v0, 0x10

    invoke-virtual {v6, v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setGravity(I)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {v7, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v0, 0x3f80

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_9

    const/4 v0, 0x2

    if-ge v4, v0, :cond_9

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/alipassapp/R$layout;->sub_alipass_coupon_primary_text:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v1, v7}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->tv_primary_label:I

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->tv_primary_value:I

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;

    iget-object v8, p0, Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;->mContext:Landroid/content/Context;

    invoke-static {v8, v0}, Lcom/alipay/mobile/alipassapp/ui/common/a;->a(Landroid/content/Context;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;)I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    if-eqz v0, :cond_7

    const-string/jumbo v8, "url"

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v8, Lcom/alipay/mobile/alipassapp/ui/common/a;

    iget-object v9, p0, Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "url"

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v9, v10, v11, p2}, Lcom/alipay/mobile/alipassapp/ui/common/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    invoke-virtual {v3, v8}, Lcom/alipay/mobile/commonui/widget/APTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getLabel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getValue()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/alipay/mobile/alipassapp/ui/common/a;->a(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_1

    iget-object v9, p0, Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v3, v8, v9, v10, v11}, Lcom/alipay/mobile/commonui/widget/APTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    new-instance v8, Lcom/alipay/mobile/alipassapp/ui/common/a;

    iget-object v9, p0, Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v9, v10, v11, p2}, Lcom/alipay/mobile/alipassapp/ui/common/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    invoke-virtual {v3, v8}, Lcom/alipay/mobile/commonui/widget/APTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getLabel()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getLabel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_3

    :cond_2
    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    :cond_3
    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    :cond_5
    if-nez v4, :cond_8

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setGravity(I)V

    :cond_6
    :goto_1
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->addView(Landroid/view/View;)V

    :cond_7
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x1

    if-ne v4, v0, :cond_6

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setGravity(I)V

    goto :goto_1

    :cond_9
    invoke-virtual {p0, v6}, Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0, v5}, Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;->adjustPrimaryText(Ljava/util/List;)V

    :cond_a
    return-void
.end method


# virtual methods
.method public refresh(Ljava/util/List;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;Lcom/alipay/mobile/framework/app/ActivityApplication;)V
    .locals 3
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

    invoke-virtual {p2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;->getStrip()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/alipassapp/ui/common/as;

    invoke-direct {v2, p0, v0, p1, p3}, Lcom/alipay/mobile/alipassapp/ui/common/as;-><init>(Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;Ljava/lang/String;Ljava/util/List;Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
