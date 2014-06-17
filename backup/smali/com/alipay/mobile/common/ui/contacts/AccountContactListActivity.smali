.class public Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "account_contact_list"
.end annotation


# static fields
.field public static final HIDE_CONTACT:Ljava/lang/String; = "hidecontact"

.field public static final INFO_ACCOUNT_DISPLAYNAME:Ljava/lang/String; = "accountDisplayName"

.field public static final INFO_ACCOUNT_REALACCOUNT:Ljava/lang/String; = "accountRealAccount"

.field public static final RST_FROM_ACCOUNT_TO_CONTACT:I = 0x5


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/ui/contacts/model/HistoryTransferAccount;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;

.field private c:Lcom/alipay/mobile/common/ui/contacts/model/TransferToAccountDAO;

.field private d:[Ljava/lang/String;

.field private e:[I

.field private f:Lcom/alipay/mobile/commonui/widget/APContactSectionIndexer;

.field private g:Lcom/alipay/mobileprod/biz/transfer/TransferService;

.field private h:Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity$HistroryAccountsRequest;

.field private i:Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity$PullRefreshListener;

.field private j:Z

.field protected mAccountsListView:Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "account_contacts_list"
    .end annotation
.end field

.field protected mEmptyAccountContent:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "emptyAccountContent"
    .end annotation
.end field

.field protected mEmptyAccountImage:Lcom/alipay/mobile/commonui/widget/APImageView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "emptyImage"
    .end annotation
.end field

.field protected mEmptySearchResults:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "emptySearchAccountContactsResults"
    .end annotation
.end field

.field protected mHistoryContactCanvas:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "historyContactCanvas"
    .end annotation
.end field

.field protected mLetters:Lcom/alipay/mobile/commonui/widget/APBladeView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "contacts_letters_list"
    .end annotation
.end field

.field protected mLoadingView:Lcom/alipay/mobile/commonui/widget/APLinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "initLoadingView"
    .end annotation
.end field

.field protected mSearchCancel:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "searchCancel"
    .end annotation
.end field

.field protected mSearchInput:Lcom/alipay/mobile/commonui/widget/APInputBox;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "searchEditText"
    .end annotation
.end field

.field protected mSearchToMobileContacts:Lcom/alipay/mobile/commonui/widget/APTableView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "searchToMobileContacts"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    new-instance v0, Lcom/alipay/mobile/common/ui/contacts/model/TransferToAccountDAO;

    invoke-direct {v0}, Lcom/alipay/mobile/common/ui/contacts/model/TransferToAccountDAO;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->c:Lcom/alipay/mobile/common/ui/contacts/model/TransferToAccountDAO;

    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "A"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string/jumbo v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "#"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->d:[Ljava/lang/String;

    new-instance v0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity$HistroryAccountsRequest;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity$HistroryAccountsRequest;-><init>(Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->h:Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity$HistroryAccountsRequest;

    new-instance v0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity$PullRefreshListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity$PullRefreshListener;-><init>(Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity$1;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->i:Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity$PullRefreshListener;

    iput-boolean v3, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->j:Z

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->h:Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity$HistroryAccountsRequest;

    new-instance v1, Lcom/alipay/mobileprod/biz/transfer/dto/GetContactListReq;

    invoke-direct {v1}, Lcom/alipay/mobileprod/biz/transfer/dto/GetContactListReq;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity$HistroryAccountsRequest;->executeBackground(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Lcom/alipay/mobileprod/biz/transfer/dto/GetContactListResp;)V
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/alipay/mobileprod/biz/transfer/dto/GetContactListResp;->getContactList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileprod/biz/transfer/vo/ContactUserVO;

    invoke-virtual {v0}, Lcom/alipay/mobileprod/biz/transfer/vo/ContactUserVO;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lcom/alipay/mobile/common/ui/contacts/model/HistoryTransferAccount;

    invoke-direct {v3, v0}, Lcom/alipay/mobile/common/ui/contacts/model/HistoryTransferAccount;-><init>(Lcom/alipay/mobileprod/biz/transfer/vo/ContactUserVO;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->updateHistoryList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;)Lcom/alipay/mobile/commonui/widget/APContactSectionIndexer;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->f:Lcom/alipay/mobile/commonui/widget/APContactSectionIndexer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;)Lcom/alipay/mobileprod/biz/transfer/TransferService;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->g:Lcom/alipay/mobileprod/biz/transfer/TransferService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;Lcom/alipay/mobileprod/biz/transfer/dto/GetContactListResp;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->a(Lcom/alipay/mobileprod/biz/transfer/dto/GetContactListResp;)V

    return-void
.end method


# virtual methods
.method protected accountContactsList(Lcom/alipay/mobile/common/ui/contacts/model/HistoryTransferAccount;)V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/ItemClick;
        resName = {
            "account_contacts_list"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->mSearchInput:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/ui/contacts/util/KeyBoardUtil;->hideKeyBoard(Landroid/content/Context;Landroid/view/View;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "accountDisplayName"

    invoke-virtual {p1}, Lcom/alipay/mobile/common/ui/contacts/model/HistoryTransferAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "accountRealAccount"

    invoke-virtual {p1}, Lcom/alipay/mobile/common/ui/contacts/model/HistoryTransferAccount;->getRealAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->finish()V

    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected dismissInitLoading()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->mLoadingView:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    return-void
.end method

.method protected hideEmptyContent()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->mAccountsListView:Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->mEmptySearchResults:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    return-void
.end method

.method protected initListener()V
    .locals 5
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$drawable;->icon_total_contacts:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->mSearchToMobileContacts:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->setIconSize(FF)V

    iget-boolean v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->mSearchToMobileContacts:Lcom/alipay/mobile/commonui/widget/APTableView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->mSearchInput:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->mSearchInput:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setImeOptions(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->mHistoryContactCanvas:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->i:Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity$PullRefreshListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->setRefreshListener(Lcom/alipay/mobile/commonui/widget/APPullRefreshView$RefreshListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->mHistoryContactCanvas:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->setEnablePull(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->mLetters:Lcom/alipay/mobile/commonui/widget/APBladeView;

    new-instance v1, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity$1;-><init>(Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APBladeView;->setOnItemClickListener(Lcom/alipay/mobile/commonui/widget/APBladeView$OnItemClickListener;)V

    new-instance v0, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->b:Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->mAccountsListView:Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->b:Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->mAccountsListView:Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->b:Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->mAccountsListView:Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/base/commonbiz/R$layout;->contact_list_head:I

    iget-object v3, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->mAccountsListView:Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->setPinnedHeaderView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->loadHistoryData()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->mSearchToMobileContacts:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTableView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected loadHistoryData()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->h:Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity$HistroryAccountsRequest;

    new-instance v1, Lcom/alipay/mobileprod/biz/transfer/dto/GetContactListReq;

    invoke-direct {v1}, Lcom/alipay/mobileprod/biz/transfer/dto/GetContactListReq;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity$HistroryAccountsRequest;->loadCache(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileprod/biz/transfer/dto/GetContactListResp;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->a(Lcom/alipay/mobileprod/biz/transfer/dto/GetContactListResp;)V

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->showInitLoading()V

    invoke-direct {p0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->a()V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->dismissInitLoading()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/ui/contacts/util/NetworkUtil;->isGoodNetwork()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->a()V

    goto :goto_1
.end method

.method protected manualUpdateHistory()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->h:Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity$HistroryAccountsRequest;

    new-instance v1, Lcom/alipay/mobileprod/biz/transfer/dto/GetContactListReq;

    invoke-direct {v1}, Lcom/alipay/mobileprod/biz/transfer/dto/GetContactListReq;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity$HistroryAccountsRequest;->executeBackground(Ljava/lang/Object;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v1, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_0

    invoke-virtual {p0, v1, p3}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobileprod/biz/transfer/TransferService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileprod/biz/transfer/TransferService;

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->g:Lcom/alipay/mobileprod/biz/transfer/TransferService;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "hidecontact"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->j:Z

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->c:Lcom/alipay/mobile/common/ui/contacts/model/TransferToAccountDAO;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/ui/contacts/model/TransferToAccountDAO;->resetTransferToAccount(Ljava/util/List;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->mSearchCancel:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->mHistoryContactCanvas:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->setEnablePull(Z)V

    iget-boolean v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->j:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->mSearchToMobileContacts:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTableView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->hideEmptyContent()V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->mLetters:Lcom/alipay/mobile/commonui/widget/APBladeView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APBladeView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->b:Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->refreshUi(Ljava/util/List;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->mAccountsListView:Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->setSelection(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->mAccountsListView:Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->smoothScrollToPosition(I)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$string;->no_account_contacts:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->showEmptyContent(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->mSearchCancel:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->mHistoryContactCanvas:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->setEnablePull(Z)V

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->c:Lcom/alipay/mobile/common/ui/contacts/model/TransferToAccountDAO;

    iget-object v2, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->a:Ljava/util/List;

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/common/ui/contacts/model/TransferToAccountDAO;->getMatchedContact(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->mLetters:Lcom/alipay/mobile/commonui/widget/APBladeView;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/commonui/widget/APBladeView;->setVisibility(I)V

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->hideEmptyContent()V

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->mSearchToMobileContacts:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/commonui/widget/APTableView;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->b:Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->refreshUi(Ljava/util/List;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->mAccountsListView:Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->setSelection(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->mAccountsListView:Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->smoothScrollToPosition(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->mEmptyAccountImage:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$string;->search_no_results:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->showEmptyContent(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->mSearchToMobileContacts:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTableView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected pullRefreshFinished(Z)V
    .locals 1
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->mHistoryContactCanvas:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->refreshFinished()V

    return-void
.end method

.method protected searchCancel()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/Click;
    .end annotation

    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->mSearchInput:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/ui/contacts/util/KeyBoardUtil;->hideKeyBoard(Landroid/content/Context;Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->mSearchInput:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->mSearchCancel:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    return-void
.end method

.method protected searchToMobileContacts()V
    .locals 6
    .annotation build Lcom/googlecode/androidannotations/annotations/Click;
    .end annotation

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "phoneBookView"

    const-string/jumbo v3, "contactListView"

    const-string/jumbo v4, "phoneBookIcon"

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/common/ui/contacts/util/LogAgentUtil;->log(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->mSearchInput:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/ui/contacts/util/KeyBoardUtil;->hideKeyBoard(Landroid/content/Context;Landroid/view/View;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    const/4 v3, 0x5

    invoke-interface {v1, v2, v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivityForResult(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;I)V

    return-void
.end method

.method protected showEmptyContent(Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->mAccountsListView:Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->mLetters:Lcom/alipay/mobile/commonui/widget/APBladeView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APBladeView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->mEmptySearchResults:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->mEmptyAccountContent:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected showInitLoading()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->mLoadingView:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    return-void
.end method

.method protected updateHistoryList(Ljava/util/List;)V
    .locals 6
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/ui/contacts/model/HistoryTransferAccount;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/alipay/mobile/common/ui/contacts/util/AccountContactComparator;

    invoke-direct {v0}, Lcom/alipay/mobile/common/ui/contacts/util/AccountContactComparator;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iput-object p1, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->a:Ljava/util/List;

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->b:Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->refreshUi(Ljava/util/List;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->mLetters:Lcom/alipay/mobile/commonui/widget/APBladeView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APBladeView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->hideEmptyContent()V

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->d:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->e:[I

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/ui/contacts/model/HistoryTransferAccount;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/ui/contacts/model/HistoryTransferAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/ChineseToPy;->getSinglePy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZ#"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->e:[I

    aget v3, v2, v0

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->mHistoryContactCanvas:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->setEnablePull(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->mLetters:Lcom/alipay/mobile/commonui/widget/APBladeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APBladeView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$string;->no_account_contacts:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->showEmptyContent(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/alipay/mobile/commonui/widget/APContactSectionIndexer;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->d:[Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->e:[I

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APContactSectionIndexer;-><init>([Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->f:Lcom/alipay/mobile/commonui/widget/APContactSectionIndexer;

    return-void
.end method
