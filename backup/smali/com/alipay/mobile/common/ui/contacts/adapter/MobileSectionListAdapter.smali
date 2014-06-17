.class public Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/SectionIndexer;
.implements Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView$PinnedHeaderAdapter;


# static fields
.field public static TAG_TYPE_ALIPAY_ALL:I

.field public static TAG_TYPE_ALIPAY_APP_USER:I

.field public static TAG_TYPE_ALIPAY_USER:I


# instance fields
.field private a:Landroid/widget/SectionIndexer;

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

.field private c:Ljava/util/Map;
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

.field private d:Landroid/widget/AdapterView$OnItemClickListener;

.field private e:Z

.field private f:Z

.field private g:Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter$OnShearBtnClickListener;

.field private h:I

.field protected mInflater:Landroid/view/LayoutInflater;

.field visible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->TAG_TYPE_ALIPAY_USER:I

    const/4 v0, 0x1

    sput v0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->TAG_TYPE_ALIPAY_APP_USER:I

    const/4 v0, 0x2

    sput v0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->TAG_TYPE_ALIPAY_ALL:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->b:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->c:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->f:Z

    sget v0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->TAG_TYPE_ALIPAY_USER:I

    iput v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->h:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string/jumbo v0, "#"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "#"

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "^[a-z,A-Z].*$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "#"

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;)Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter$OnShearBtnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->g:Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter$OnShearBtnClickListener;

    return-object v0
.end method


# virtual methods
.method public configurePinnedHeader(Landroid/view/View;II)V
    .locals 2

    invoke-virtual {p0, p2}, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->getSectionForPosition(I)I

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->a:Landroid/widget/SectionIndexer;

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

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->getLinkedPosition(I)Ljava/lang/Integer;

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

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->a:Landroid/widget/SectionIndexer;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ltz p1, :cond_0

    iget-boolean v1, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->e:Z

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->getSectionForPosition(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->getPositionForSection(I)I

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

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->a:Landroid/widget/SectionIndexer;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->a:Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v0

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->a:Landroid/widget/SectionIndexer;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->a:Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v0

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->a:Landroid/widget/SectionIndexer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, ""

    aput-object v2, v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->a:Landroid/widget/SectionIndexer;

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getShowTagType()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->h:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const/16 v9, 0x21

    const/16 v4, 0x8

    const/4 v8, -0x1

    const/4 v3, 0x0

    if-nez p2, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$layout;->common_contact_list_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter$ViewHolder;-><init>(Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;)V

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->contact_item_head:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter$ViewHolder;->mHeaderLayout:Landroid/widget/RelativeLayout;

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->contact_item_header_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter$ViewHolder;->mHeaderText:Landroid/widget/TextView;

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->contact_item_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter$ViewHolder;->mContactNameText:Landroid/widget/TextView;

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->contact_item_phone:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter$ViewHolder;->mContactPhoneText:Landroid/widget/TextView;

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->contact_accoutn_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter$ViewHolder;->mAccountIcon:Landroid/widget/ImageView;

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->contact_app_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter$ViewHolder;->mAppIcon:Landroid/widget/ImageView;

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->btn_share:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter$ViewHolder;->mShareButton:Landroid/widget/Button;

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->contact_item:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter$ViewHolder;->mContactItemView:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;

    iget v1, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->h:I

    sget v5, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->TAG_TYPE_ALIPAY_APP_USER:I

    if-eq v1, v5, :cond_0

    iget v1, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->h:I

    sget v5, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->TAG_TYPE_ALIPAY_ALL:I

    if-ne v1, v5, :cond_1

    :cond_0
    iget-boolean v1, v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->isAppUser:Z

    if-eqz v1, :cond_5

    iget-object v1, v2, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter$ViewHolder;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_1
    iget v1, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->h:I

    sget v5, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->TAG_TYPE_ALIPAY_USER:I

    if-eq v1, v5, :cond_2

    iget v1, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->h:I

    sget v5, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->TAG_TYPE_ALIPAY_ALL:I

    if-ne v1, v5, :cond_3

    :cond_2
    iget-boolean v1, v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->isBindInfo:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->enabledStatus:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->enabledStatus:Ljava/lang/String;

    const-string/jumbo v5, "T"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v2, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter$ViewHolder;->mAccountIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_2
    iget-object v5, v2, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter$ViewHolder;->mShareButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->f:Z

    if-eqz v1, :cond_7

    move v1, v3

    :goto_3
    invoke-virtual {v5, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v5, v2, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter$ViewHolder;->mContactItemView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->f:Z

    if-nez v1, :cond_8

    const/4 v1, 0x1

    :goto_4
    invoke-virtual {v5, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, v2, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter$ViewHolder;->mShareButton:Landroid/widget/Button;

    new-instance v5, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter$1;

    invoke-direct {v5, p0, v0}, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter$1;-><init>(Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v1, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->e:Z

    if-eqz v1, :cond_b

    iget v1, v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->matchedStartIndex:I

    if-eq v1, v8, :cond_9

    iget v1, v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->matchedEndIndex:I

    if-eq v1, v8, :cond_9

    new-instance v1, Landroid/text/SpannableString;

    iget-object v5, v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->displayName:Ljava/lang/String;

    invoke-direct {v1, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    const-string/jumbo v6, "#4C91C7"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v6, v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->matchedStartIndex:I

    iget v7, v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->matchedEndIndex:I

    invoke-virtual {v1, v5, v6, v7, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v5, v2, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter$ViewHolder;->mContactNameText:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    iget v1, v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->matchedStartIndex4Phone:I

    if-eq v1, v8, :cond_a

    iget v1, v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->matchedEndIndex4Phone:I

    if-eq v1, v8, :cond_a

    new-instance v1, Landroid/text/SpannableString;

    iget-object v5, v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->mobileNumber:Ljava/lang/String;

    invoke-direct {v1, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    const-string/jumbo v6, "#4C91C7"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v6, v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->matchedStartIndex4Phone:I

    iget v7, v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->matchedEndIndex4Phone:I

    invoke-virtual {v1, v5, v6, v7, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v5, v2, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter$ViewHolder;->mContactPhoneText:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    iget-object v1, v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->sortKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez p1, :cond_c

    iget-boolean v1, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->e:Z

    if-nez v1, :cond_c

    iget-object v1, v2, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter$ViewHolder;->mHeaderLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, v2, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter$ViewHolder;->mHeaderText:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->sortKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    return-object p2

    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter$ViewHolder;

    move-object v2, v0

    goto/16 :goto_0

    :cond_5
    iget-object v1, v2, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter$ViewHolder;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_6
    iget-object v1, v2, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter$ViewHolder;->mAccountIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_7
    move v1, v4

    goto/16 :goto_3

    :cond_8
    move v1, v3

    goto/16 :goto_4

    :cond_9
    iget-object v1, v2, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter$ViewHolder;->mContactNameText:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->displayName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_a
    iget-object v1, v2, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter$ViewHolder;->mContactPhoneText:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->mobileNumber:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_b
    iget-object v1, v2, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter$ViewHolder;->mContactNameText:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->displayName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v2, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter$ViewHolder;->mContactPhoneText:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->mobileNumber:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_c
    add-int/lit8 v1, p1, -0x1

    if-ltz v1, :cond_d

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->b:Ljava/util/List;

    add-int/lit8 v6, p1, -0x1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;

    iget-object v1, v1, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->sortKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_8
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-boolean v1, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->e:Z

    if-nez v1, :cond_e

    iget-object v1, v2, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter$ViewHolder;->mHeaderLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, v2, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter$ViewHolder;->mHeaderText:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->sortKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_d
    const-string/jumbo v1, " "

    goto :goto_8

    :cond_e
    iget-object v0, v2, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter$ViewHolder;->mHeaderLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_7
.end method

.method public isShowShareBtn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->f:Z

    return v0
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

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->d:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->d:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p0, p3}, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->getLinkedPosition(I)Ljava/lang/Integer;

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

.method public refreshUi()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->a:Landroid/widget/SectionIndexer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->e:Z

    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->e:Z

    goto :goto_0
.end method

.method public refreshUi(Ljava/util/List;Landroid/widget/SectionIndexer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;",
            ">;",
            "Landroid/widget/SectionIndexer;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->b:Ljava/util/List;

    iput-object p2, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->a:Landroid/widget/SectionIndexer;

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->a:Landroid/widget/SectionIndexer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->e:Z

    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->e:Z

    goto :goto_0
.end method

.method protected replaceSectionViewsInMaps(Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->c:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->c:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->d:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public setOverlay(Landroid/widget/TextView;)V
    .locals 0

    return-void
.end method

.method public setShareClickListener(Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter$OnShearBtnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->g:Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter$OnShearBtnClickListener;

    return-void
.end method

.method public setShowShareBtn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->f:Z

    return-void
.end method

.method public setShowTagType(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->h:I

    return-void
.end method
