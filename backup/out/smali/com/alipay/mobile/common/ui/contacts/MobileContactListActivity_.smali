.class public final Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_;
.super Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_;->a:Landroid/os/Handler;

    return-void
.end method

.method private a()V
    .locals 2

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->mobileContactsList:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_;->mContactsListView:Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->emptyResultsContent:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_;->mEmptyResultsContent:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->loadingPanel:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_;->mLoadingPanel:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->filter:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_;->mSearchBar:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->searchCancel:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_;->mSearchCancel:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->emptySearchContactsResults:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_;->mEmptySearchResults:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->loadingText:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_;->mLoadingText:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->searchEditText:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APInputBox;

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_;->mSearchInput:Lcom/alipay/mobile/commonui/widget/APInputBox;

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->contacts_letters_list:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APBladeView;

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_;->mLetters:Lcom/alipay/mobile/commonui/widget/APBladeView;

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->tipsPanel:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_;->mTipsPanelView:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->title_name:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_;->mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->searchCancel:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_$1;-><init>(Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->mobileContactsList:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_$2;-><init>(Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_;->init()V

    return-void
.end method

.method static synthetic access$001(Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_;Ljava/util/List;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->updateSearchedList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$101(Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->showUploadDialog()V

    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_$IntentBuilder_;
    .locals 1

    new-instance v0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$layout;->mobile_contact_list:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_;->setContentView(I)V

    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-static {}, Lcom/googlecode/androidannotations/api/SdkVersionHelper;->getSdkInt()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_;->onBackPressed()V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_;->a()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_;->a()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_;->a()V

    return-void
.end method

.method public final showUploadDialog()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_;->a:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_$4;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_$4;-><init>(Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final updateSearchedList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_;->a:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_$3;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_$3;-><init>(Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
