.class public abstract Lcom/alipay/mobile/alipassapp/viewcontrol/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcom/alipay/mobile/framework/app/ActivityApplication;

.field protected c:Landroid/view/View;

.field protected d:Landroid/view/View;

.field private e:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

.field private f:Lcom/alipay/mobile/alipassapp/viewcontrol/k;

.field private g:Landroid/os/Handler;

.field private h:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

.field private i:Landroid/view/ViewGroup;

.field private j:Landroid/view/ViewGroup;

.field private k:Landroid/view/View;

.field private l:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private m:Landroid/graphics/Bitmap;

.field private n:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private o:Landroid/graphics/Bitmap;

.field private p:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

.field private q:Lcom/alipay/mobile/commonui/widget/APImageButton;

.field private r:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

.field private s:Lcom/alipay/mobile/commonui/widget/APImageButton;

.field private t:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

.field private u:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

.field private v:Lcom/alipay/mobile/commonui/widget/APImageButton;

.field private w:Lcom/alipay/mobile/commonui/widget/APImageButton;

.field private x:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

.field private y:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

.field private z:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->g:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/viewcontrol/a;)Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->e:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/viewcontrol/a;Lcom/alipay/mobile/commonui/widget/APTitleBar;)V
    .locals 7

    const-wide/16 v5, 0xc8

    const/4 v4, 0x0

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->i:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->i:Landroid/view/ViewGroup;

    sget v3, Lcom/alipay/mobile/alipassapp/R$id;->layout_bottom:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v4, v4, v1, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->i:Landroid/view/ViewGroup;

    sget v3, Lcom/alipay/mobile/alipassapp/R$id;->layout_bottom:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-direct {v1, v4, v4, v4, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v1, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v2, Lcom/alipay/mobile/alipassapp/viewcontrol/h;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/alipassapp/viewcontrol/h;-><init>(Lcom/alipay/mobile/alipassapp/viewcontrol/a;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->l:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->n:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/viewcontrol/a;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->b(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 9

    const-wide/16 v7, 0xc8

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->i:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->k:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->l:Lcom/alipay/mobile/commonui/widget/APImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->n:Lcom/alipay/mobile/commonui/widget/APImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->j:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->j:Landroid/view/ViewGroup;

    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->titlebar:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->b(Z)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->l:Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->n:Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->o:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->i:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->i:Landroid/view/ViewGroup;

    sget v5, Lcom/alipay/mobile/alipassapp/R$id;->layout_bottom:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    neg-int v3, v3

    int-to-float v3, v3

    invoke-direct {v1, v6, v6, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v1, v7, v8}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->i:Landroid/view/ViewGroup;

    sget v4, Lcom/alipay/mobile/alipassapp/R$id;->layout_bottom:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getHeight()I

    move-result v0

    add-int/2addr v0, v3

    int-to-float v0, v0

    invoke-direct {v2, v6, v6, v0, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v2, v7, v8}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v0}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v0, Lcom/alipay/mobile/alipassapp/viewcontrol/e;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassapp/viewcontrol/e;-><init>(Lcom/alipay/mobile/alipassapp/viewcontrol/a;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->l:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->n:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->a:Landroid/content/Context;

    sget v2, Lcom/alipay/mobile/alipassapp/R$anim;->alipass_detail_backview_top_gone:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/alipassapp/viewcontrol/c;

    invoke-direct {v2, p0, p1, v0}, Lcom/alipay/mobile/alipassapp/viewcontrol/c;-><init>(Lcom/alipay/mobile/alipassapp/viewcontrol/a;ZLcom/alipay/mobile/commonui/widget/APTitleBar;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->k:Landroid/view/View;

    sget v2, Lcom/alipay/mobile/alipassapp/R$id;->layout_backview_top_back:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->k:Landroid/view/View;

    sget v2, Lcom/alipay/mobile/alipassapp/R$id;->layout_backview_top_back:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/mobile/alipassapp/viewcontrol/a;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->k:Landroid/view/View;

    return-object v0
.end method

.method private b(Z)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->m:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->j:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->m:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->j:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->m:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->e:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getDisplayInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;->getResolveBackgroundColor(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/alipassapp/ui/common/g;->a(Landroid/view/View;Landroid/graphics/Bitmap;I)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->o:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->o:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->k:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->o:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->k:Landroid/view/View;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->o:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->e:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getDisplayInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;->getResolveBackgroundColor(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/alipassapp/ui/common/g;->a(Landroid/view/View;Landroid/graphics/Bitmap;I)V

    :cond_3
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->j:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->m:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->e:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getDisplayInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;->getResolveBackgroundColor(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/alipassapp/ui/common/g;->a(Landroid/view/View;Landroid/graphics/Bitmap;I)V

    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->k:Landroid/view/View;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->o:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->e:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getDisplayInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;->getResolveBackgroundColor(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/alipassapp/ui/common/g;->a(Landroid/view/View;Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alipay/mobile/alipassapp/viewcontrol/a;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->g:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/mobile/alipassapp/viewcontrol/a;)Lcom/alipay/mobile/commonui/widget/APImageView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->l:Lcom/alipay/mobile/commonui/widget/APImageView;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/mobile/alipassapp/viewcontrol/a;)Lcom/alipay/mobile/commonui/widget/APImageView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->n:Lcom/alipay/mobile/commonui/widget/APImageView;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/mobile/alipassapp/viewcontrol/a;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->i:Landroid/view/ViewGroup;

    return-object v0
.end method


# virtual methods
.method abstract a()Lcom/alipay/mobile/alipassapp/viewcontrol/k;
.end method

.method public a(Landroid/content/Context;Landroid/view/View;Lcom/alipay/mobile/framework/app/ActivityApplication;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->b:Lcom/alipay/mobile/framework/app/ActivityApplication;

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->layout_detail_container:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->j:Landroid/view/ViewGroup;

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->details_pull_refresh_container:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->h:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->a()Lcom/alipay/mobile/alipassapp/viewcontrol/k;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->f:Lcom/alipay/mobile/alipassapp/viewcontrol/k;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->h:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->h:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->layout_container:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->i:Landroid/view/ViewGroup;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->f:Lcom/alipay/mobile/alipassapp/viewcontrol/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->f:Lcom/alipay/mobile/alipassapp/viewcontrol/k;

    invoke-interface {v1}, Lcom/alipay/mobile/alipassapp/viewcontrol/k;->a()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->c:Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->a:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/alipassapp/R$layout;->sub_alipass_backview:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->k:Landroid/view/View;

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->i:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->c:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->i:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->j:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->k:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->j:Landroid/view/ViewGroup;

    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->iv_frontview:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->l:Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->j:Landroid/view/ViewGroup;

    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->iv_backview:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->n:Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->j:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->c:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->c:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->btn_toback:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageButton;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->q:Lcom/alipay/mobile/commonui/widget/APImageButton;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->c:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->layout_toback:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->p:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->c:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->btn_front_share:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageButton;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->v:Lcom/alipay/mobile/commonui/widget/APImageButton;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->c:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->layout_front_share:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->t:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->c:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->layout_front_dynamic:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->x:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->k:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->k:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->btn_tofront:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageButton;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->s:Lcom/alipay/mobile/commonui/widget/APImageButton;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->k:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->layout_tofront:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->r:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->k:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->btn_back_share:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageButton;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->w:Lcom/alipay/mobile/commonui/widget/APImageButton;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->k:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->layout_back_share:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->u:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->k:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->layout_back_dynamic:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->y:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->k:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->layout_back_dark:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->z:Landroid/view/ViewGroup;

    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->q:Lcom/alipay/mobile/commonui/widget/APImageButton;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->q:Lcom/alipay/mobile/commonui/widget/APImageButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->s:Lcom/alipay/mobile/commonui/widget/APImageButton;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->s:Lcom/alipay/mobile/commonui/widget/APImageButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->v:Lcom/alipay/mobile/commonui/widget/APImageButton;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->v:Lcom/alipay/mobile/commonui/widget/APImageButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->t:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->t:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->r:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->r:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->p:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->p:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->x:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->x:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_d
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->z:Landroid/view/ViewGroup;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->z:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_e
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->w:Lcom/alipay/mobile/commonui/widget/APImageButton;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->w:Lcom/alipay/mobile/commonui/widget/APImageButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_f
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->u:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->u:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_10
    return-void
.end method

.method public a(Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;)V
    .locals 16

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->e:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->k:Landroid/view/View;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->k:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    if-eqz p1, :cond_4

    const-string/jumbo v2, "1"

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getShareSuport()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->t:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->t:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->u:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->u:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    :cond_4
    if-eqz p1, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getTrendUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->x:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->x:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->y:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->y:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v3

    :try_start_0
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v4, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v5, 0x8

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v3}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getDisplayInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;->getResolveBackgroundColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->q:Lcom/alipay/mobile/commonui/widget/APImageButton;

    invoke-virtual {v4, v2}, Lcom/alipay/mobile/commonui/widget/APImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->s:Lcom/alipay/mobile/commonui/widget/APImageButton;

    invoke-virtual {v4, v2}, Lcom/alipay/mobile/commonui/widget/APImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->c:Landroid/view/View;

    invoke-virtual {v3}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getDisplayInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;->getResolveBackgroundColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->k:Landroid/view/View;

    invoke-virtual {v3}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getDisplayInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;->getResolveBackgroundColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->f:Lcom/alipay/mobile/alipassapp/viewcontrol/k;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->f:Lcom/alipay/mobile/alipassapp/viewcontrol/k;

    invoke-interface {v2}, Lcom/alipay/mobile/alipassapp/viewcontrol/k;->b()I

    move-result v2

    if-lez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->c:Landroid/view/View;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->c:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->f:Lcom/alipay/mobile/alipassapp/viewcontrol/k;

    invoke-interface {v4}, Lcom/alipay/mobile/alipassapp/viewcontrol/k;->b()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_7

    instance-of v4, v2, Lcom/alipay/mobile/alipassapp/ui/common/AlipassHeaderLayout;

    if-eqz v4, :cond_7

    check-cast v2, Lcom/alipay/mobile/alipassapp/ui/common/AlipassHeaderLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassHeaderLayout;->refresh(Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;Z)V

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPrimaryFields()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getDisplayInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->a(Ljava/util/List;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;)V

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getSecondaryFields()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getDisplayInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->b(Ljava/util/List;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;)V

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getAuxiliaryFields()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getDisplayInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->f:Lcom/alipay/mobile/alipassapp/viewcontrol/k;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->f:Lcom/alipay/mobile/alipassapp/viewcontrol/k;

    invoke-interface {v2}, Lcom/alipay/mobile/alipassapp/viewcontrol/k;->d()I

    move-result v2

    if-lez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->c:Landroid/view/View;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->c:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->f:Lcom/alipay/mobile/alipassapp/viewcontrol/k;

    invoke-interface {v6}, Lcom/alipay/mobile/alipassapp/viewcontrol/k;->d()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_8

    instance-of v6, v2, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;

    if-eqz v6, :cond_8

    check-cast v2, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->b:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v2, v4, v5, v6}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;->refresh(Ljava/util/List;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getOperation()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getDisplayInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->f:Lcom/alipay/mobile/alipassapp/viewcontrol/k;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->f:Lcom/alipay/mobile/alipassapp/viewcontrol/k;

    invoke-interface {v2}, Lcom/alipay/mobile/alipassapp/viewcontrol/k;->e()I

    move-result v2

    if-lez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->c:Landroid/view/View;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->c:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->f:Lcom/alipay/mobile/alipassapp/viewcontrol/k;

    invoke-interface {v3}, Lcom/alipay/mobile/alipassapp/viewcontrol/k;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_9

    instance-of v2, v4, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->c:Landroid/view/View;

    sget v3, Lcom/alipay/mobile/alipassapp/R$id;->indicator_container:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object v3, v4

    check-cast v3, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->b:Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->e:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v3, v7, v8, v0, v1}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->setmApp(Lcom/alipay/mobile/framework/app/ActivityApplication;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;)V

    check-cast v4, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;

    invoke-virtual {v4, v5, v6, v2}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->refresh(Ljava/util/List;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;Landroid/view/ViewGroup;)V

    :cond_9
    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->k:Landroid/view/View;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->k:Landroid/view/View;

    sget v3, Lcom/alipay/mobile/alipassapp/R$id;->backview_list:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getAppInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AppInfo;

    move-result-object v10

    const/4 v3, 0x0

    if-eqz v10, :cond_a

    invoke-virtual {v10}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AppInfo;->getIcon()Ljava/lang/String;

    move-result-object v3

    :cond_a
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_c

    :cond_b
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getDisplayInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;->getIcon()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    :cond_c
    :goto_2
    if-eqz v10, :cond_13

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_e

    :cond_d
    invoke-virtual {v10}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AppInfo;->getLabel()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual {v10}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AppInfo;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_13

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->d:Landroid/view/View;

    if-nez v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->a:Landroid/content/Context;

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v4, Lcom/alipay/mobile/alipassapp/R$layout;->sub_alipass_appinfo:I

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->d:Landroid/view/View;

    :cond_f
    if-eqz v10, :cond_10

    invoke-virtual {v10}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AppInfo;->getApp()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$App;

    move-result-object v2

    if-nez v2, :cond_14

    :cond_10
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_3
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {v12}, Lcom/alipay/mobile/commonui/widget/APListView;->getHeaderViewsCount()I

    move-result v2

    if-gtz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->d:Landroid/view/View;

    invoke-virtual {v12, v2}, Lcom/alipay/mobile/commonui/widget/APListView;->addHeaderView(Landroid/view/View;)V

    :cond_11
    if-eqz v10, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->d:Landroid/view/View;

    sget v4, Lcom/alipay/mobile/alipassapp/R$id;->app_msg:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v10}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AppInfo;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->d:Landroid/view/View;

    sget v4, Lcom/alipay/mobile/alipassapp/R$id;->app_label:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v10}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AppInfo;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->d:Landroid/view/View;

    sget v4, Lcom/alipay/mobile/alipassapp/R$id;->app_icon:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/commonui/widget/APImageView;

    if-eqz v3, :cond_12

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_12

    new-instance v4, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->a:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/androidquery/AQuery;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Lcom/androidquery/AQuery;->id(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    sget v7, Lcom/alipay/mobile/alipassapp/R$drawable;->alipass_icon_back:I

    invoke-virtual/range {v2 .. v7}, Lcom/androidquery/AQuery;->image(Ljava/lang/String;ZZII)Lcom/androidquery/AbstractAQuery;

    :cond_12
    invoke-virtual {v10}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AppInfo;->getApp()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$App;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual {v10}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AppInfo;->getApp()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$App;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$App;->getAndroid_appid()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    if-eqz v3, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v10}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AppInfo;->getApp()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$App;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$App;->getAndroid_appid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_18

    const/4 v2, 0x1

    move v15, v2

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->d:Landroid/view/View;

    sget v3, Lcom/alipay/mobile/alipassapp/R$id;->app_action_download:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/alipay/mobile/commonui/widget/APButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->d:Landroid/view/View;

    sget v3, Lcom/alipay/mobile/alipassapp/R$id;->app_action_launch:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/alipay/mobile/commonui/widget/APButton;

    new-instance v2, Lcom/alipay/mobile/alipassapp/viewcontrol/b;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->a:Landroid/content/Context;

    const-string/jumbo v5, "app_plat"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->e:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v3}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getPartnerId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AppInfo;->getApp()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$App;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$App;->getAndroid_appid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AppInfo;->getNeedAuthorize()Z

    move-result v8

    invoke-virtual {v10}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AppInfo;->getApp()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$App;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$App;->getAndroid_launch()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AppInfo;->getApp()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$App;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$App;->getAndroid_download()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->b:Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v11}, Lcom/alipay/mobile/alipassapp/viewcontrol/b;-><init>(Lcom/alipay/mobile/alipassapp/viewcontrol/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    if-eqz v15, :cond_17

    const/16 v3, 0x8

    invoke-virtual {v13, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    invoke-virtual {v14, v2}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_13
    :goto_5
    new-instance v2, Lcom/alipay/mobile/alipassapp/viewcontrol/l;

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getBackFields()Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/alipay/mobile/alipassapp/viewcontrol/l;-><init>(Lcom/alipay/mobile/alipassapp/viewcontrol/a;Ljava/util/List;)V

    invoke-virtual {v12, v2}, Lcom/alipay/mobile/commonui/widget/APListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    :cond_14
    invoke-virtual {v10}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AppInfo;->getApp()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$App;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-virtual {v10}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AppInfo;->getApp()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$App;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$App;->getAndroid_appid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AppInfo;->getApp()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$App;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$App;->getAndroid_launch()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AppInfo;->getApp()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$App;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$App;->getAndroid_download()Ljava/lang/String;

    move-result-object v5

    if-eqz v2, :cond_15

    if-eqz v4, :cond_15

    if-eqz v5, :cond_15

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_15

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_15

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_16

    :cond_15
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_3

    :cond_16
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_3

    :cond_17
    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    const/16 v3, 0x8

    invoke-virtual {v14, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    invoke-virtual {v13, v2}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    :catch_0
    move-exception v2

    goto/16 :goto_2

    :catch_1
    move-exception v2

    goto/16 :goto_1

    :cond_18
    move v15, v2

    goto/16 :goto_4

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected a(Ljava/util/List;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;",
            ">;",
            "Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->f:Lcom/alipay/mobile/alipassapp/viewcontrol/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->f:Lcom/alipay/mobile/alipassapp/viewcontrol/k;

    :cond_0
    return-void
.end method

.method protected b(Ljava/util/List;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;",
            ">;",
            "Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->f:Lcom/alipay/mobile/alipassapp/viewcontrol/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->f:Lcom/alipay/mobile/alipassapp/viewcontrol/k;

    invoke-interface {v0}, Lcom/alipay/mobile/alipassapp/viewcontrol/k;->c()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->f:Lcom/alipay/mobile/alipassapp/viewcontrol/k;

    invoke-interface {v1}, Lcom/alipay/mobile/alipassapp/viewcontrol/k;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->b:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0, p1, p2, v1}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassInfoFieldLayout;->refresh(Ljava/util/List;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->k:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->c:Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->k:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->i:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->s:Lcom/alipay/mobile/commonui/widget/APImageButton;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->q:Lcom/alipay/mobile/commonui/widget/APImageButton;

    move-object/from16 v0, p1

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->p:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    move-object/from16 v0, p1

    if-ne v0, v1, :cond_4

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->e:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getBizType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "COUPON"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, "20000030"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "couponBackDetails"

    const-string/jumbo v8, "couponDetails"

    const-string/jumbo v9, "seeBack"

    const-string/jumbo v10, ""

    const-string/jumbo v11, ""

    const-string/jumbo v12, ""

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->e:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v15}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v15

    invoke-virtual {v15}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getPassId()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->e:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v15}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v15

    invoke-virtual {v15}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getPartnerId()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static/range {v1 .. v13}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->a(Z)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->e:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getBizType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "TRAVEL"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, "20000021"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "travelItineraryBackDetails"

    const-string/jumbo v8, "travelItineraryDetails"

    const-string/jumbo v9, "seeBack"

    const-string/jumbo v10, ""

    const-string/jumbo v11, ""

    const-string/jumbo v12, ""

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->e:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v15}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v15

    invoke-virtual {v15}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getPassId()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->e:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v15}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v15

    invoke-virtual {v15}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getPartnerId()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static/range {v1 .. v13}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->s:Lcom/alipay/mobile/commonui/widget/APImageButton;

    move-object/from16 v0, p1

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->r:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    move-object/from16 v0, p1

    if-ne v0, v1, :cond_8

    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->e:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getBizType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "COUPON"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, "20000030"

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    const-string/jumbo v8, "couponBackDetails"

    const-string/jumbo v9, "seeFront"

    const-string/jumbo v10, ""

    const-string/jumbo v11, ""

    const-string/jumbo v12, ""

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->e:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v15}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v15

    invoke-virtual {v15}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getPassId()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->e:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v15}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v15

    invoke-virtual {v15}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getPartnerId()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static/range {v1 .. v13}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_6
    :goto_2
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->a(Z)V

    goto/16 :goto_1

    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->e:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getBizType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "TRAVEL"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, "20000021"

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    const-string/jumbo v8, "travelItineraryBackDetails"

    const-string/jumbo v9, "seeFront"

    const-string/jumbo v10, ""

    const-string/jumbo v11, ""

    const-string/jumbo v12, ""

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->e:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v15}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v15

    invoke-virtual {v15}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getPassId()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->e:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v15}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v15

    invoke-virtual {v15}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getPartnerId()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static/range {v1 .. v13}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->x:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    move-object/from16 v0, p1

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->a:Landroid/content/Context;

    sget v2, Lcom/alipay/mobile/alipassapp/R$string;->alipass_nonetwork_toast:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/common/widget/SimpleToast;->makeToast(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :cond_9
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->e:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getTrendUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    const-string/jumbo v1, "[^//]*?\\.(com|cn|net|org|biz|info|cc|tv)"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->e:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getTrendUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    move-object v14, v1

    :goto_3
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, "20000021"

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    const-string/jumbo v8, "travelItineraryDetails"

    const-string/jumbo v9, "seeTrend"

    const-string/jumbo v10, ""

    const-string/jumbo v11, ""

    const-string/jumbo v12, ""

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->e:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getPassId()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v13, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->e:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getPartnerId()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v13, v15

    const/4 v15, 0x2

    aput-object v14, v13, v15

    invoke-static/range {v1 .. v13}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;

    invoke-direct {v1}, Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->e:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getTrendUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;->setRequestUrl(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->a:Landroid/content/Context;

    sget v3, Lcom/alipay/mobile/alipassapp/R$string;->travel_dynamic:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;->setTitle(Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->a:Landroid/content/Context;

    const-class v4, Lcom/alipay/mobile/alipassapp/ui/AlipassHtmlActivity_;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "HARequest"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->b:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->b:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->v:Lcom/alipay/mobile/commonui/widget/APImageButton;

    move-object/from16 v0, p1

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->t:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    move-object/from16 v0, p1

    if-ne v0, v1, :cond_d

    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->b:Lcom/alipay/mobile/framework/app/ActivityApplication;

    instance-of v1, v1, Lcom/alipay/mobile/alipassapp/ui/app/AlipassApp;

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->b:Lcom/alipay/mobile/framework/app/ActivityApplication;

    check-cast v1, Lcom/alipay/mobile/alipassapp/ui/app/AlipassApp;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/ui/app/AlipassApp;->getAppBundle()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_c

    const-string/jumbo v2, "t"

    const-string/jumbo v3, "b"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, "20000021"

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    const-string/jumbo v8, "travelItineraryDetails"

    const-string/jumbo v9, "share"

    const-string/jumbo v10, ""

    const-string/jumbo v11, ""

    const-string/jumbo v12, ""

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->e:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v15}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v15

    invoke-virtual {v15}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getPassId()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->e:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v15}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v15

    invoke-virtual {v15}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getPartnerId()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static/range {v1 .. v13}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_c
    new-instance v1, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->a:Landroid/content/Context;

    const-class v3, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity_;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "p"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->e:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v3}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getPassId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "aid"

    const-string/jumbo v3, "20000021"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->b:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->b:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->z:Landroid/view/ViewGroup;

    move-object/from16 v0, p1

    if-eq v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->w:Lcom/alipay/mobile/commonui/widget/APImageButton;

    move-object/from16 v0, p1

    if-eq v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->u:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    move-object/from16 v0, p1

    if-ne v0, v1, :cond_2

    :cond_e
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->a(Z)V

    goto/16 :goto_1

    :cond_f
    move-object v14, v1

    goto/16 :goto_3
.end method
