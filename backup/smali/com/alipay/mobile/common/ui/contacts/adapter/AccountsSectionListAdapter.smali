.class public Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/SectionIndexer;
.implements Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView$PinnedHeaderAdapter;


# instance fields
.field private a:Landroid/widget/SectionIndexer;

.field private b:[Ljava/lang/String;

.field private c:[I

.field private d:I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/ui/contacts/model/HistoryTransferAccount;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/widget/AdapterView$OnItemClickListener;

.field private h:Z

.field protected mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->d:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->e:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->f:Ljava/util/Map;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public configurePinnedHeader(Landroid/view/View;II)V
    .locals 2

    invoke-virtual {p0, p2}, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->getSectionForPosition(I)I

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->a:Landroid/widget/SectionIndexer;

    invoke-interface {v1}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v1

    aget-object v0, v1, v0

    check-cast v0, Ljava/lang/String;

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$id;->contact_list_item_head:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->getLinkedPosition(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method protected getLinkedPosition(I)Ljava/lang/Integer;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getPinnedHeaderState(I)I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->a:Landroid/widget/SectionIndexer;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ltz p1, :cond_0

    iget-boolean v1, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->h:Z

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->getSectionForPosition(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->getPositionForSection(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->a:Landroid/widget/SectionIndexer;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->a:Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v0

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->a:Landroid/widget/SectionIndexer;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->a:Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v0

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->a:Landroid/widget/SectionIndexer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, ""

    aput-object v2, v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->a:Landroid/widget/SectionIndexer;

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$layout;->common_contact_list_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter$ViewHolder;-><init>(Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;)V

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->contact_item_head:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter$ViewHolder;->mHeaderLayout:Landroid/widget/RelativeLayout;

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->contact_item_header_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter$ViewHolder;->mHeaderText:Landroid/widget/TextView;

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->contact_item_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter$ViewHolder;->mContactNameText:Landroid/widget/TextView;

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->contact_item_phone:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter$ViewHolder;->mContactPhoneText:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/ui/contacts/model/HistoryTransferAccount;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/ui/contacts/model/HistoryTransferAccount;->getIsNumberMatch()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/alipay/mobile/common/ui/contacts/model/HistoryTransferAccount;->getMatchedPinYin()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    invoke-virtual {v0}, Lcom/alipay/mobile/common/ui/contacts/model/HistoryTransferAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-static {v7}, Lcom/alipay/mobile/common/ui/contacts/util/PinYinAndHanziUtils;->splitDisplayNameWithHanzi(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v1, 0x0

    move v5, v4

    move v4, v3

    move v3, v1

    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_4

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v1, v1, v9

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-nez v3, :cond_0

    aget-object v4, v8, v1

    invoke-virtual {v7, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    :cond_0
    aget-object v9, v8, v1

    invoke-static {v9}, Lcom/alipay/mobile/common/ui/contacts/util/PinYinAndHanziUtils;->isHanzi(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    if-lez v1, :cond_2

    add-int/lit8 v9, v1, -0x1

    aget-object v9, v8, v9

    invoke-static {v9}, Lcom/alipay/mobile/common/ui/contacts/util/PinYinAndHanziUtils;->isHanzi(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    aget-object v1, v8, v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v1, v4

    add-int/lit8 v5, v1, 0x1

    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter$ViewHolder;

    move-object v2, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v9, 0x1

    aget-object v1, v1, v9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v5, v1

    goto :goto_2

    :cond_4
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const-string/jumbo v6, "#4C91C7"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v3, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/2addr v5, v4

    const/16 v6, 0x21

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v3, v2, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter$ViewHolder;->mContactNameText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->h:Z

    :goto_3
    iget-object v1, v2, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter$ViewHolder;->mContactPhoneText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/ui/contacts/model/HistoryTransferAccount;->getRealAccount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    invoke-virtual {v0}, Lcom/alipay/mobile/common/ui/contacts/model/HistoryTransferAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/ChineseToPy;->getSinglePy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez p1, :cond_8

    iget-boolean v1, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->h:Z

    if-nez v1, :cond_8

    iget-object v0, v2, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter$ViewHolder;->mHeaderLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, v2, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter$ViewHolder;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    return-object p2

    :cond_5
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->h:Z

    iget-object v1, v2, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter$ViewHolder;->mContactNameText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/ui/contacts/model/HistoryTransferAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Lcom/alipay/mobile/common/ui/contacts/model/HistoryTransferAccount;->getMatchedNum()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/ui/contacts/model/HistoryTransferAccount;->getRealAccount()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/ui/contacts/model/HistoryTransferAccount;->getRealAccount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alipay/mobile/common/ui/contacts/model/HistoryTransferAccount;->getMatchedNum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    const-string/jumbo v5, "#4C91C7"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/ui/contacts/model/HistoryTransferAccount;->getMatchedNum()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    const/16 v6, 0x21

    invoke-virtual {v1, v4, v3, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v3, v2, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter$ViewHolder;->mContactPhoneText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->h:Z

    :goto_6
    iget-object v1, v2, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter$ViewHolder;->mContactNameText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/ui/contacts/model/HistoryTransferAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->h:Z

    iget-object v1, v2, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter$ViewHolder;->mContactPhoneText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/ui/contacts/model/HistoryTransferAccount;->getRealAccount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_8
    add-int/lit8 v1, p1, -0x1

    if-ltz v1, :cond_9

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->e:Ljava/util/List;

    add-int/lit8 v4, p1, -0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/common/ui/contacts/model/HistoryTransferAccount;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/ui/contacts/model/HistoryTransferAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/ChineseToPy;->getSinglePy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_7
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->h:Z

    if-nez v1, :cond_a

    iget-object v1, v2, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter$ViewHolder;->mHeaderLayout:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, v2, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter$ViewHolder;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/ui/contacts/model/HistoryTransferAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/ChineseToPy;->getSinglePy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_9
    const-string/jumbo v1, " "

    goto :goto_7

    :cond_a
    iget-object v0, v2, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter$ViewHolder;->mHeaderLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->g:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->g:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p0, p3}, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->getLinkedPosition(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    instance-of v0, p1, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->configureHeaderView(I)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method public refreshUi(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/ui/contacts/model/HistoryTransferAccount;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->e:Ljava/util/List;

    iput v4, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->d:I

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->e:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    move v5, v4

    move-object v1, v3

    :goto_0
    if-ge v5, v6, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->e:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/ui/contacts/model/HistoryTransferAccount;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/ui/contacts/model/HistoryTransferAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/ChineseToPy;->getSinglePy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    iget v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->d:I

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->e:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/ui/contacts/model/HistoryTransferAccount;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/ui/contacts/model/HistoryTransferAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/ChineseToPy;->getSinglePy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->d:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->b:[Ljava/lang/String;

    iget v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->d:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->c:[I

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    move-object v5, v3

    move v0, v4

    move v6, v4

    move v3, v4

    :goto_2
    if-ge v3, v8, :cond_4

    add-int/lit8 v1, v0, 0x1

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->e:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/ui/contacts/model/HistoryTransferAccount;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/ui/contacts/model/HistoryTransferAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/ChineseToPy;->getSinglePy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->b:[Ljava/lang/String;

    aput-object v7, v0, v6

    if-nez v6, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->c:[I

    aput v2, v0, v4

    :cond_1
    :goto_3
    if-lez v3, :cond_7

    move v0, v2

    :goto_4
    add-int/lit8 v6, v6, 0x1

    move-object v1, v7

    move v5, v0

    :goto_5
    add-int/lit8 v0, v8, -0x1

    if-ne v3, v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->c:[I

    add-int/lit8 v7, v6, -0x1

    aput v5, v0, v7

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v5

    move-object v5, v1

    goto :goto_2

    :cond_3
    if-eqz v6, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->c:[I

    add-int/lit8 v5, v6, -0x1

    add-int/lit8 v9, v1, -0x1

    aput v9, v0, v5

    goto :goto_3

    :cond_4
    new-instance v0, Lcom/alipay/mobile/commonui/widget/APContactSectionIndexer;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->b:[Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->c:[I

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APContactSectionIndexer;-><init>([Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->a:Landroid/widget/SectionIndexer;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->notifyDataSetChanged()V

    :cond_5
    return-void

    :cond_6
    move-object v10, v5

    move v5, v1

    move-object v1, v10

    goto :goto_5

    :cond_7
    move v0, v1

    goto :goto_4

    :cond_8
    move-object v0, v1

    goto :goto_1
.end method

.method protected replaceSectionViewsInMaps(Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->f:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->f:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->f:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/AccountsSectionListAdapter;->g:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public setOverlay(Landroid/widget/TextView;)V
    .locals 0

    return-void
.end method
