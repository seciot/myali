.class public Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderLayout;
.super Lcom/alipay/mobile/commonui/widget/APLinearLayout;


# static fields
.field private static bmLogoDefault:Landroid/graphics/Bitmap;


# instance fields
.field private ivLogo:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private ivLogoDefault:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private ivNew:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private tvLogoText:Lcom/alipay/mobile/commonui/widget/APTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/alipassapp/R$layout;->sub_membercard_header:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderLayout;->addView(Landroid/view/View;)V

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->iv_logo:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderLayout;->ivLogo:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->tv_logotext:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderLayout;->tvLogoText:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->iv_new:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderLayout;->ivNew:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->iv_logo_default:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderLayout;->ivLogoDefault:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderLayout;->createRoundCornerBitmap()V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderLayout;->ivLogoDefault:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget-object v1, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderLayout;->bmLogoDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private createRoundCornerBitmap()V
    .locals 7

    const/4 v6, 0x0

    sget-object v0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderLayout;->bmLogoDefault:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderLayout;->bmLogoDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/alipassapp/R$drawable;->membercard_icon_back:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderLayout;->bmLogoDefault:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Canvas;

    sget-object v2, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderLayout;->bmLogoDefault:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/RectF;

    sget-object v3, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderLayout;->bmLogoDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderLayout;->bmLogoDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v6, v6, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    const/16 v4, 0x8

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v2, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v6, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x41t
        0x0t 0x0t 0xa0t 0x41t
        0x0t 0x0t 0xa0t 0x41t
        0x0t 0x0t 0xa0t 0x41t
        0x0t 0x0t 0xa0t 0x41t
        0x0t 0x0t 0xa0t 0x41t
        0x0t 0x0t 0xa0t 0x41t
        0x0t 0x0t 0xa0t 0x41t
    .end array-data
.end method

.method private initInfoFields()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderLayout;->tvLogoText:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderLayout;->ivNew:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public refresh(Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;)V
    .locals 5

    const/4 v4, 0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getDisplayInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getDisplayInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;->getLogo()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    invoke-virtual {p1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getLogoText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderLayout;->initInfoFields()V

    new-instance v3, Lcom/androidquery/callback/ImageOptions;

    invoke-direct {v3}, Lcom/androidquery/callback/ImageOptions;-><init>()V

    iput-boolean v4, v3, Lcom/androidquery/callback/ImageOptions;->fileCache:Z

    iput-boolean v4, v3, Lcom/androidquery/callback/ImageOptions;->memCache:Z

    const/4 v0, 0x5

    iput v0, v3, Lcom/androidquery/callback/ImageOptions;->round:I

    new-instance v0, Lcom/androidquery/AQuery;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/androidquery/AQuery;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderLayout;->ivLogo:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v4}, Lcom/androidquery/AQuery;->id(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    check-cast v0, Lcom/androidquery/AQuery;

    invoke-virtual {v0, v1, v3}, Lcom/androidquery/AQuery;->image(Ljava/lang/String;Lcom/androidquery/callback/ImageOptions;)Lcom/androidquery/AbstractAQuery;

    invoke-static {v2}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderLayout;->tvLogoText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderLayout;->ivNew:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {p1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getIsreaded()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, ""

    move-object v1, v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x4

    goto :goto_2
.end method
