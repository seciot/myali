.class public Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation

.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "mobile_contact_list"
.end annotation


# static fields
.field public static final INFO_MOBILE_CONTACTNAME:Ljava/lang/String; = "mobileContactName"

.field public static final INFO_MOBILE_CONTACTNUMBER:Ljava/lang/String; = "mobileContactNumber"

.field public static final START_TYPE_NORMAL:I = 0x0

.field public static final START_TYPE_SMS_SHARE:I = 0x1

.field public static final TAG_RESULT_DATA:Ljava/lang/String; = "result_data"

.field public static final TAG_START_PARAM:Ljava/lang/String; = "start_param"

.field public static final TAG_START_TYPE:Ljava/lang/String; = "start_type"

.field public static final TAG_TYPE:Ljava/lang/String; = "tag_tape"


# instance fields
.field private a:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/alipay/mobile/commonui/widget/APContactSectionIndexer;

.field private d:Lcom/alipay/mobile/commonui/widget/APContactSectionIndexer;

.field private e:[Ljava/lang/String;

.field private f:Lcom/alipay/mobile/common/share/ShareContent;

.field private g:I

.field private h:I

.field private i:Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;

.field private j:Z

.field private k:Landroid/os/Handler;

.field private l:Z

.field private m:Z

.field protected mContactsListView:Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "mobileContactsList"
    .end annotation
.end field

.field protected mEmptyResultsContent:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "emptyResultsContent"
    .end annotation
.end field

.field protected mEmptySearchResults:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "emptySearchContactsResults"
    .end annotation
.end field

.field protected mLetters:Lcom/alipay/mobile/commonui/widget/APBladeView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "contacts_letters_list"
    .end annotation
.end field

.field protected mLoadingPanel:Lcom/alipay/mobile/commonui/widget/APLinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "loadingPanel"
    .end annotation
.end field

.field protected mLoadingText:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "loadingText"
    .end annotation
.end field

.field protected mSearchBar:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "filter"
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

.field protected mTipsPanelView:Lcom/alipay/mobile/commonui/widget/APLinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "tipsPanel"
    .end annotation
.end field

.field protected mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "title_name"
    .end annotation
.end field

.field private n:Z

.field private o:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->getInstance()Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->a:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->b:Ljava/util/List;

    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "A"

    aput-object v1, v0, v3

    const-string/jumbo v1, "B"

    aput-object v1, v0, v4

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

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->e:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->f:Lcom/alipay/mobile/common/share/ShareContent;

    iput v3, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->g:I

    sget v0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->TAG_TYPE_ALIPAY_USER:I

    iput v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->h:I

    iput-boolean v3, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->j:Z

    iput-boolean v3, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->l:Z

    iput-boolean v3, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->m:Z

    iput-boolean v4, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->n:Z

    new-instance v0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$7;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$7;-><init>(Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->o:Ljava/lang/Runnable;

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->mContactsListView:Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->mEmptySearchResults:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->mContactsListView:Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->mEmptySearchResults:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->mEmptyResultsContent:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;)Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->a:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;)Lcom/alipay/mobile/commonui/widget/APContactSectionIndexer;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->c:Lcom/alipay/mobile/commonui/widget/APContactSectionIndexer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;)Lcom/alipay/mobile/common/share/ShareContent;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->f:Lcom/alipay/mobile/common/share/ShareContent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->k:Landroid/os/Handler;

    return-object v0
.end method

.method private b()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->e:[Ljava/lang/String;

    array-length v0, v0

    new-array v2, v0, [I

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->b:Ljava/util/List;

    iget-object v3, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->a:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->getContactData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;

    iget-object v0, v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->sortKey:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "^[a-z,A-Z].*$"

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v0, "#"

    :cond_0
    const-string/jumbo v4, "ABCDEFGHIJKLMNOPQRSTUVWXYZ#"

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    aget v4, v2, v0

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Lcom/alipay/mobile/commonui/widget/APContactSectionIndexer;

    iget-object v3, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->e:[Ljava/lang/String;

    invoke-direct {v0, v3, v2}, Lcom/alipay/mobile/commonui/widget/APContactSectionIndexer;-><init>([Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->c:Lcom/alipay/mobile/commonui/widget/APContactSectionIndexer;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_1
    iget-object v5, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->e:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_3

    aget v5, v2, v0

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->e:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget v5, v2, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v5, v0, [I

    :goto_2
    array-length v0, v5

    if-ge v1, v0, :cond_4

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/alipay/mobile/commonui/widget/APContactSectionIndexer;

    invoke-direct {v0, v2, v5}, Lcom/alipay/mobile/commonui/widget/APContactSectionIndexer;-><init>([Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->d:Lcom/alipay/mobile/commonui/widget/APContactSectionIndexer;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->a:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->getContactData()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->a:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->resetContactPerson()V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->mContactsListView:Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->mEmptySearchResults:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->mLetters:Lcom/alipay/mobile/commonui/widget/APBladeView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APBladeView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->mSearchCancel:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->k:Landroid/os/Handler;

    iget-object v2, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->i:Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;

    iget-object v2, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->d:Lcom/alipay/mobile/commonui/widget/APContactSectionIndexer;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->refreshUi(Ljava/util/List;Landroid/widget/SectionIndexer;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->mContactsListView:Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->setSelection(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->mSearchCancel:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->mLetters:Lcom/alipay/mobile/commonui/widget/APBladeView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APBladeView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->o:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, ""

    const-string/jumbo v3, "phoneBookView"

    const-string/jumbo v4, "inputSearch"

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/common/ui/contacts/util/LogAgentUtil;->log(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected getContactSerched(Ljava/lang/String;)V
    .locals 11

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITORPERF:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const/4 v2, 0x0

    const-string/jumbo v3, "phoneBookView"

    const-string/jumbo v4, "StartSearch"

    iget-object v5, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static/range {v0 .. v6}, Lcom/alipay/mobile/common/ui/contacts/util/LogAgentUtil;->log(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->a:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->getMatchedContact(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->updateSearchedList(Ljava/util/List;)V

    return-void
.end method

.method protected init()V
    .locals 6
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getGenericButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->mLoadingText:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$string;->loading_text:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->mLoadingPanel:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getGenericButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$2;-><init>(Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->mSearchInput:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->mSearchInput:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setImeOptions(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->mLetters:Lcom/alipay/mobile/commonui/widget/APBladeView;

    new-instance v1, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$3;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$3;-><init>(Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APBladeView;->setOnItemClickListener(Lcom/alipay/mobile/commonui/widget/APBladeView$OnItemClickListener;)V

    new-instance v0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->i:Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->mContactsListView:Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->i:Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->mContactsListView:Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->i:Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->mContactsListView:Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/base/commonbiz/R$layout;->contact_list_head:I

    iget-object v3, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->mContactsListView:Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->setPinnedHeaderView(Landroid/view/View;)V

    iget v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->g:I

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->i:Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->setShowShareBtn(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->i:Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;

    new-instance v1, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$4;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$4;-><init>(Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->setShareClickListener(Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter$OnShearBtnClickListener;)V

    :cond_0
    iget v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->h:I

    sget v1, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->TAG_TYPE_ALIPAY_APP_USER:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->h:I

    sget v1, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->TAG_TYPE_ALIPAY_ALL:I

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->mTipsPanelView:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->i:Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;

    iget v1, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->h:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->setShowTagType(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->a:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->k:Landroid/os/Handler;

    iget-object v2, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0, p0, v1, v2}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->initContext(Landroid/app/Activity;Landroid/os/Handler;Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    return-void
.end method

.method protected mobileContactsList(Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;)V
    .locals 6
    .annotation build Lcom/googlecode/androidannotations/annotations/ItemClick;
    .end annotation

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, ""

    const-string/jumbo v3, "phoneBookView"

    const-string/jumbo v4, "selectPhone"

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/common/ui/contacts/util/LogAgentUtil;->log(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->mSearchInput:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/ui/contacts/util/KeyBoardUtil;->hideKeyBoard(Landroid/content/Context;Landroid/view/View;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "mobileContactName"

    iget-object v2, p1, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "mobileContactNumber"

    iget-object v2, p1, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->mobileNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "result_data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 6

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onBackPressed()V

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, ""

    const-string/jumbo v3, "phoneBookView"

    const-string/jumbo v4, "backIcon"

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/common/ui/contacts/util/LogAgentUtil;->log(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$1;-><init>(Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->k:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "start_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->g:I

    iget v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "start_param"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/alipay/mobile/common/share/ShareContent;

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->f:Lcom/alipay/mobile/common/share/ShareContent;

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "tag_tape"

    sget v2, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->TAG_TYPE_ALIPAY_USER:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->h:I

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->OPENPAGE:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "phoneBookView"

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/common/ui/contacts/util/LogAgentUtil;->log(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->l:Z

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->a:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->resetContactPerson()V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->a:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->clearContext()V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->mContactsListView:Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->destroyDrawingCache()V

    iput-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->mContactsListView:Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;

    iput-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->i:Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;

    iput-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->mEmptySearchResults:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->b:Ljava/util/List;

    iput-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->c:Lcom/alipay/mobile/commonui/widget/APContactSectionIndexer;

    iput-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->d:Lcom/alipay/mobile/commonui/widget/APContactSectionIndexer;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected refreshView()V
    .locals 4

    const/16 v2, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->a:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->getContactData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-direct {p0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->b()V

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->i:Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;

    iget-object v2, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->d:Lcom/alipay/mobile/commonui/widget/APContactSectionIndexer;

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->refreshUi(Ljava/util/List;Landroid/widget/SectionIndexer;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->mLetters:Lcom/alipay/mobile/commonui/widget/APBladeView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APBladeView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->mSearchBar:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->mSearchInput:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APEditText;->setVisibility(I)V

    invoke-direct {p0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->a()V

    :goto_0
    iget-boolean v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->m:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->m:Z

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->a:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->getContactsUploader()Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->a:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->getContactData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->a:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->getContactData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->a:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->getContactsUploader()Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;->isContactsUploadPermitted()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->showUploadDialog()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->mLetters:Lcom/alipay/mobile/commonui/widget/APBladeView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APBladeView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->mSearchBar:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->mSearchInput:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APEditText;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$string;->no_mobile_contacts:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->a:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->tryToUploadMobileContacts()V

    goto :goto_1
.end method

.method protected searchCancel()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/Click;
    .end annotation

    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->mSearchInput:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/ui/contacts/util/KeyBoardUtil;->hideKeyBoard(Landroid/content/Context;Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->mSearchInput:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->mSearchCancel:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    return-void
.end method

.method protected sendSMS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->f:Lcom/alipay/mobile/common/share/ShareContent;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->f:Lcom/alipay/mobile/common/share/ShareContent;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/share/ShareContent;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string/jumbo v2, "SENT_SMS_ACTION"

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v6, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    new-instance v3, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$10;

    invoke-direct {v3, p0, p2}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$10;-><init>(Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;Ljava/lang/String;)V

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v5}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v2, "DELIVERED_SMS_ACTION"

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v6, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    new-instance v3, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$11;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$11;-><init>(Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;)V

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v6}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v2, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected showUploadDialog()V
    .locals 7
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    iget-boolean v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->j:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->j:Z

    const-string/jumbo v1, "\u542f\u7528\u624b\u673a\u901a\u8baf\u5f55\u5339\u914d"

    const-string/jumbo v2, "\u542f\u7528\u540e\uff0c\u53ef\u627e\u5230\u4f60\u624b\u673a\u901a\u8baf\u5f55\u4e2d\u4f7f\u7528\u652f\u4ed8\u5b9d\u7684\u670b\u53cb"

    const-string/jumbo v3, "\u5f00\u542f"

    new-instance v4, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$5;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$5;-><init>(Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;)V

    const-string/jumbo v5, "\u4e0b\u6b21\u518d\u8bf4"

    new-instance v6, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$6;

    invoke-direct {v6, p0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$6;-><init>(Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method protected testSNSService(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$9;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$9;-><init>(Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$9;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected testShorLinkService(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "\u6b63\u5728\u751f\u6210\u77ed\u94fe\u63a5"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->showProgressDialog(Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$8;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$8;-><init>(Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$8;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected updateFromDao(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->l:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-boolean v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->n:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->n:Z

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->mSearchInput:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->refreshView()V

    goto :goto_0

    :pswitch_1
    iput-boolean v2, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->n:Z

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->mSearchInput:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->refreshView()V

    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->mLoadingPanel:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->mLoadingPanel:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->mLoadingText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$string;->refreshing_text:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$string;->refreshdone_text:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v2, v0, v2}, Lcom/alipay/mobile/common/widget/SimpleToast;->makeToast(Landroid/content/Context;ILjava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getGenericButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->b()V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->i:Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->i:Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->refreshUi()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->i:Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->a:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->getContactData()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->d:Lcom/alipay/mobile/commonui/widget/APContactSectionIndexer;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->refreshUi(Ljava/util/List;Landroid/widget/SectionIndexer;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected updateSearchedList(Ljava/util/List;)V
    .locals 11
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v10, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->a()V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->i:Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;

    invoke-virtual {v0, p1, v2}, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->refreshUi(Ljava/util/List;Landroid/widget/SectionIndexer;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->mContactsListView:Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;

    invoke-virtual {v0, v10}, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->setSelection(I)V

    :goto_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITORPERF:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v3, "phoneBookView"

    const-string/jumbo v4, "SearchDone"

    iget-object v5, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static/range {v0 .. v6}, Lcom/alipay/mobile/common/ui/contacts/util/LogAgentUtil;->log(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$string;->search_no_results:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
