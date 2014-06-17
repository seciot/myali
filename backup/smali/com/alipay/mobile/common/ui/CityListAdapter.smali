.class public Lcom/alipay/mobile/common/ui/CityListAdapter;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/SectionIndexer;
.implements Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView$PinnedHeaderAdapter;


# instance fields
.field private a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/view/LayoutInflater;

.field private e:Z

.field mCityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/ui/CityListAdapter;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/ui/CityListAdapter;->e:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/CityListAdapter;->d:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/alipay/mobile/common/ui/CityListAdapter;->mCityList:Ljava/util/List;

    iput-object p3, p0, Lcom/alipay/mobile/common/ui/CityListAdapter;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/alipay/mobile/common/ui/CityListAdapter;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public configurePinnedHeader(Landroid/view/View;II)V
    .locals 2

    invoke-virtual {p0, p2}, Lcom/alipay/mobile/common/ui/CityListAdapter;->getSectionForPosition(I)I

    move-result v0

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/CityListAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v1

    aget-object v0, v1, v0

    check-cast v0, Ljava/lang/String;

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$id;->friends_list_header_text:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/CityListAdapter;->mCityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/CityListAdapter;->mCityList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getPinnedHeaderState(I)I
    .locals 2

    const/4 v1, -0x1

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/alipay/mobile/common/ui/CityListAdapter;->a:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/alipay/mobile/common/ui/CityListAdapter;->a:I

    if-eq v0, p1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/common/ui/CityListAdapter;->e:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    iput v1, p0, Lcom/alipay/mobile/common/ui/CityListAdapter;->a:I

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/ui/CityListAdapter;->getSectionForPosition(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/CityListAdapter;->getPositionForSection(I)I

    move-result v0

    if-eq v0, v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/CityListAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/CityListAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/CityListAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_2

    :cond_0
    const/4 v0, -0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/CityListAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x2

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/CityListAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/ui/CityListAdapter;->getSectionForPosition(I)I

    move-result v2

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/CityListAdapter;->d:Landroid/view/LayoutInflater;

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$layout;->lifepay_citylistview_item:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/alipay/mobile/common/ui/CityListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/ui/CityListAdapter$ViewHolder;-><init>(Lcom/alipay/mobile/common/ui/CityListAdapter;)V

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->friends_item_header_parent:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, v1, Lcom/alipay/mobile/common/ui/CityListAdapter$ViewHolder;->mHeaderLayout:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->friends_item_header_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v1, Lcom/alipay/mobile/common/ui/CityListAdapter$ViewHolder;->mHeaderText:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->friends_item:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v1, Lcom/alipay/mobile/common/ui/CityListAdapter$ViewHolder;->mCityText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/common/ui/CityListAdapter;->getPositionForSection(I)I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/ui/CityListAdapter;->e:Z

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/alipay/mobile/common/ui/CityListAdapter$ViewHolder;->mHeaderLayout:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v3, v1, Lcom/alipay/mobile/common/ui/CityListAdapter$ViewHolder;->mHeaderText:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/CityListAdapter;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v1, v1, Lcom/alipay/mobile/common/ui/CityListAdapter$ViewHolder;->mCityText:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/CityListAdapter;->mCityList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;

    iget-object v0, v0, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;->city:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/ui/CityListAdapter$ViewHolder;

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lcom/alipay/mobile/common/ui/CityListAdapter$ViewHolder;->mHeaderLayout:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    instance-of v0, p1, Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;->configureHeaderView(I)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method public refreshUi(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobile/common/ui/CityListAdapter;->mCityList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/CityListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setIsSearchResult(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/common/ui/CityListAdapter;->e:Z

    return-void
.end method
