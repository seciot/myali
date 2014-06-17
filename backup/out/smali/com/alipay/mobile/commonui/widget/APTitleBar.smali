.class public Lcom/alipay/mobile/commonui/widget/APTitleBar;
.super Lcom/alipay/mobile/commonui/widget/APRelativeLayout;


# instance fields
.field private a:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private b:Lcom/alipay/mobile/commonui/widget/APButton;

.field private c:Lcom/alipay/mobile/commonui/widget/APButton;

.field private d:Lcom/alipay/mobile/commonui/widget/APButton;

.field private e:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

.field private f:Lcom/alipay/mobile/commonui/widget/APProgressBar;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field icon_height:F

.field icon_width:F

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Z

.field private m:I

.field margin_right:F

.field private n:I

.field private o:I

.field private p:Landroid/view/View;

.field separate:F

.field touch_height:F

.field touch_width:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/high16 v2, 0x4290

    const/high16 v1, 0x4210

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x40f0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->separate:F

    const/high16 v0, 0x4170

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->margin_right:F

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->icon_height:F

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->icon_width:F

    iput v2, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->touch_height:F

    iput v2, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->touch_width:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, 0x1

    const/high16 v3, 0x4290

    const/high16 v1, 0x4210

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x40f0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->separate:F

    const/high16 v0, 0x4170

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->margin_right:F

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->icon_height:F

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->icon_width:F

    iput v3, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->touch_height:F

    iput v3, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->touch_width:F

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$layout;->ap_title_bar:I

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget-object v0, Lcom/alipay/mobile/ui/R$styleable;->titleBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->g:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->h:Ljava/lang/String;

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->m:I

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->i:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->n:I

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->j:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->o:I

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->k:Z

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->l:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$dimen;->title_bar_icon_separate:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->separate:F

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$dimen;->title_bar_icon_margin_right:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->margin_right:F

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$dimen;->title_bar_icon_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->icon_height:F

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$dimen;->title_bar_icon_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->icon_width:F

    return-void
.end method

.method private static a(Landroid/graphics/drawable/Drawable;Landroid/view/ViewGroup$MarginLayoutParams;FFFFLcom/alipay/mobile/commonui/widget/APButton;)V
    .locals 11

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v2, v1

    cmpl-float v2, v2, p4

    if-gtz v2, :cond_1

    int-to-float v2, v3

    cmpl-float v2, v2, p5

    if-lez v2, :cond_3

    :cond_1
    int-to-double v4, v1

    const-wide/high16 v6, 0x3ff0

    mul-double/2addr v4, v6

    float-to-double v6, p4

    div-double/2addr v4, v6

    int-to-double v6, v3

    const-wide/high16 v8, 0x3ff0

    mul-double/2addr v6, v8

    move/from16 v0, p5

    float-to-double v8, v0

    div-double/2addr v6, v8

    cmpl-double v2, v4, v6

    if-lez v2, :cond_2

    float-to-int v2, p4

    int-to-float v3, v3

    mul-float/2addr v3, p4

    int-to-float v1, v1

    div-float v1, v3, v1

    float-to-int v1, v1

    move v10, v2

    move v2, v1

    move v1, v10

    :goto_1
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move-object/from16 v0, p6

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    int-to-float v1, v2

    sub-float v1, p5, v1

    const/high16 v3, 0x4000

    div-float/2addr v1, v3

    add-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-float v1, v2

    sub-float v1, p5, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v1, p3

    float-to-int v1, v1

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    :cond_2
    move/from16 v0, p5

    float-to-int v2, v0

    int-to-float v1, v1

    mul-float v1, v1, p5

    int-to-float v3, v3

    div-float/2addr v1, v3

    float-to-int v1, v1

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method private static a(Lcom/alipay/mobile/commonui/widget/APButton;FF)V
    .locals 4

    const/high16 v3, 0x4000

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APButton;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v1, p1

    if-gez v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p1, v1

    div-float/2addr v1, v3

    float-to-int v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v1, p2

    if-gez v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p2, v1

    div-float/2addr v1, v3

    float-to-int v1, v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    :cond_1
    new-instance v1, Landroid/view/TouchDelegate;

    invoke-direct {v1, v0, p0}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    const-class v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APButton;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public attachNewFlagView(Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->p:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->p:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->addView(Landroid/view/View;)V

    return-void
.end method

.method public getGenericButton()Lcom/alipay/mobile/commonui/widget/APButton;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->b:Lcom/alipay/mobile/commonui/widget/APButton;

    return-object v0
.end method

.method public getLeftButton()Lcom/alipay/mobile/commonui/widget/APButton;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    return-object v0
.end method

.method public getRightButton()Lcom/alipay/mobile/commonui/widget/APButton;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->b:Lcom/alipay/mobile/commonui/widget/APButton;

    return-object v0
.end method

.method public getTitleTextView()Lcom/alipay/mobile/commonui/widget/APTextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    sget v0, Lcom/alipay/mobile/ui/R$id;->title_bar_title:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/ui/R$id;->title_bar_generic_button:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->b:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v0, Lcom/alipay/mobile/ui/R$id;->switch_container:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->e:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    sget v0, Lcom/alipay/mobile/ui/R$id;->title_bar_left_button:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v0, Lcom/alipay/mobile/ui/R$id;->title_bar_right_button:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->d:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v0, Lcom/alipay/mobile/ui/R$id;->title_bar_progress:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APProgressBar;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->f:Lcom/alipay/mobile/commonui/widget/APProgressBar;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->g:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->h:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonText(Ljava/lang/String;)V

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->m:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->m:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->o:I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->o:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setLeftButtonIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->n:I

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->n:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setRightButtonIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->l:Z

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonVisiable(Z)V

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->k:Z

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setSwitchContainerVisiable(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->j:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setLeftButtonText(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->i:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setRightButtonText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    invoke-super/range {p0 .. p5}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->touch_height:F

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->touch_width:F

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->a(Lcom/alipay/mobile/commonui/widget/APButton;FF)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->d:Lcom/alipay/mobile/commonui/widget/APButton;

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->touch_height:F

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->touch_width:F

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->a(Lcom/alipay/mobile/commonui/widget/APButton;FF)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->b:Lcom/alipay/mobile/commonui/widget/APButton;

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->touch_height:F

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->touch_width:F

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->a(Lcom/alipay/mobile/commonui/widget/APButton;FF)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->p:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->p:Landroid/view/View;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->b:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APButton;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->p:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->b:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APButton;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->p:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->b:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v3}, Lcom/alipay/mobile/commonui/widget/APButton;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->p:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->b:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v4}, Lcom/alipay/mobile/commonui/widget/APButton;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->p:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method public resetGenericButtonIcon()V
    .locals 5

    const/high16 v4, 0x4120

    sget v0, Lcom/alipay/mobile/ui/R$drawable;->title_bar_btn_selector:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonIconResource(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->b:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->b:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APButton;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    iget-object v4, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->b:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v4}, Lcom/alipay/mobile/commonui/widget/APButton;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/commonui/widget/APButton;->setPadding(IIII)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->b:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x4200

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    return-void
.end method

.method public setGenericButtonIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 7

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->b:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, 0x0

    iget v3, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->margin_right:F

    iget v4, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->icon_height:F

    iget v5, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->icon_width:F

    iget-object v6, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->b:Lcom/alipay/mobile/commonui/widget/APButton;

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->a(Landroid/graphics/drawable/Drawable;Landroid/view/ViewGroup$MarginLayoutParams;FFFFLcom/alipay/mobile/commonui/widget/APButton;)V

    return-void
.end method

.method public setGenericButtonIconResource(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setGenericButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->b:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setGenericButtonText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->b:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APButton;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setGenericButtonVisiable(Z)V
    .locals 2

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->b:Lcom/alipay/mobile/commonui/widget/APButton;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setLeftButtonIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 7

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->separate:F

    iget v3, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->separate:F

    iget v4, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->icon_height:F

    iget v5, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->icon_width:F

    iget-object v6, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->a(Landroid/graphics/drawable/Drawable;Landroid/view/ViewGroup$MarginLayoutParams;FFFFLcom/alipay/mobile/commonui/widget/APButton;)V

    return-void
.end method

.method public setLeftButtonIconResource(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setLeftButtonIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLeftButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setLeftButtonText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APButton;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setRightButtonIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 7

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->d:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->separate:F

    iget v3, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->margin_right:F

    iget v4, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->icon_height:F

    iget v5, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->icon_width:F

    iget-object v6, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->d:Lcom/alipay/mobile/commonui/widget/APButton;

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->a(Landroid/graphics/drawable/Drawable;Landroid/view/ViewGroup$MarginLayoutParams;FFFFLcom/alipay/mobile/commonui/widget/APButton;)V

    return-void
.end method

.method public setRightButtonIconResource(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setRightButtonIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setRightButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->d:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setRightButtonText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->d:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APButton;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSwitchContainerVisiable(Z)V
    .locals 2

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->e:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public startProgressBar()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->f:Lcom/alipay/mobile/commonui/widget/APProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APProgressBar;->setVisibility(I)V

    return-void
.end method

.method public stopProgressBar()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->f:Lcom/alipay/mobile/commonui/widget/APProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APProgressBar;->setVisibility(I)V

    return-void
.end method

.method public unAttachNewFlagView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->p:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->p:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->p:Landroid/view/View;

    :cond_0
    return-void
.end method
