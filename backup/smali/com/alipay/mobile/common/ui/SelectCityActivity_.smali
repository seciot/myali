.class public final Lcom/alipay/mobile/common/ui/SelectCityActivity_;
.super Lcom/alipay/mobile/common/ui/SelectCityActivity;


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity_;->a:Landroid/os/Handler;

    return-void
.end method

.method private a()V
    .locals 1

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->friends_myletterlistview:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/SelectCityActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity_;->mLetter:Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->clearButton:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/SelectCityActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageButton;

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity_;->mEditeClearButton:Lcom/alipay/mobile/commonui/widget/APImageButton;

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->lifepay_searchNoResult:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/SelectCityActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity_;->mSearchNoResult:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->searchEditText:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/SelectCityActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APEditText;

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity_;->mSearchBox:Lcom/alipay/mobile/commonui/widget/APEditText;

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->friends_display:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/SelectCityActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity_;->mListView:Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->search_bar_inputbox_layout_target:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/SelectCityActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity_;->mSearchBar:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->locationLayout:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/SelectCityActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity_;->mLocationLayout:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->titleBar:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/SelectCityActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity_;->mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity_;->init()V

    return-void
.end method

.method static synthetic access$001(Lcom/alipay/mobile/common/ui/SelectCityActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->initView()V

    return-void
.end method

.method static synthetic access$101(Lcom/alipay/mobile/common/ui/SelectCityActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->loadCitys()V

    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/alipay/mobile/common/ui/SelectCityActivity_$IntentBuilder_;
    .locals 1

    new-instance v0, Lcom/alipay/mobile/common/ui/SelectCityActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final initView()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity_;->a:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/common/ui/SelectCityActivity_$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity_$1;-><init>(Lcom/alipay/mobile/common/ui/SelectCityActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final loadCitys()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/common/ui/SelectCityActivity_$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity_$2;-><init>(Lcom/alipay/mobile/common/ui/SelectCityActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$layout;->lifepay_citylist:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/SelectCityActivity_;->setContentView(I)V

    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity_;->a()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity_;->a()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity_;->a()V

    return-void
.end method
