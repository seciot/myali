.class public final Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;
.super Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;->a:Landroid/os/Handler;

    return-void
.end method

.method private a()V
    .locals 2

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->emptyImage:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;->mEmptyAccountImage:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->contacts_letters_list:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APBladeView;

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;->mLetters:Lcom/alipay/mobile/commonui/widget/APBladeView;

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->searchToMobileContacts:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;->mSearchToMobileContacts:Lcom/alipay/mobile/commonui/widget/APTableView;

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->searchEditText:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APInputBox;

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;->mSearchInput:Lcom/alipay/mobile/commonui/widget/APInputBox;

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->searchCancel:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;->mSearchCancel:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->initLoadingView:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;->mLoadingView:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->emptySearchAccountContactsResults:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;->mEmptySearchResults:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->account_contacts_list:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;->mAccountsListView:Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->emptyAccountContent:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;->mEmptyAccountContent:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->historyContactCanvas:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;->mHistoryContactCanvas:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->searchCancel:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_$1;-><init>(Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->searchToMobileContacts:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_$2;-><init>(Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->account_contacts_list:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_$3;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_$3;-><init>(Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;->initListener()V

    return-void
.end method

.method static synthetic access$001(Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->showInitLoading()V

    return-void
.end method

.method static synthetic access$101(Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->dismissInitLoading()V

    return-void
.end method

.method static synthetic access$201(Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->showEmptyContent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$301(Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->pullRefreshFinished(Z)V

    return-void
.end method

.method static synthetic access$401(Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;Ljava/util/List;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->updateHistoryList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$501(Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->hideEmptyContent()V

    return-void
.end method

.method static synthetic access$601(Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->manualUpdateHistory()V

    return-void
.end method

.method static synthetic access$701(Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->loadHistoryData()V

    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_$IntentBuilder_;
    .locals 1

    new-instance v0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final dismissInitLoading()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;->a:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_$5;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_$5;-><init>(Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final hideEmptyContent()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;->a:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_$9;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_$9;-><init>(Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final loadHistoryData()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_$11;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_$11;-><init>(Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final manualUpdateHistory()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_$10;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_$10;-><init>(Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$layout;->account_contact_list:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;->setContentView(I)V

    return-void
.end method

.method public final pullRefreshFinished(Z)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;->a:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_$7;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_$7;-><init>(Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;->a()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;->a()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;->a()V

    return-void
.end method

.method public final showEmptyContent(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;->a:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_$6;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_$6;-><init>(Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final showInitLoading()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;->a:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_$4;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_$4;-><init>(Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final updateHistoryList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/ui/contacts/model/HistoryTransferAccount;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;->a:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_$8;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_$8;-><init>(Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
