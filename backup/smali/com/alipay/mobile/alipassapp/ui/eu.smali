.class public final Lcom/alipay/mobile/alipassapp/ui/eu;
.super Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z

.field private d:Landroid/view/View;

.field private e:I

.field private f:I

.field private g:Lcom/alipay/mobile/alipassapp/ui/ew;

.field private h:Lcom/alipay/mobile/alipassapp/ui/ev;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/commonui/widget/APListView;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;-><init>(Landroid/content/Context;Landroid/widget/ListView;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/eu;->a:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/alipay/mobile/alipassapp/ui/eu;->b:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/alipassapp/ui/eu;->c:Z

    iput v1, p0, Lcom/alipay/mobile/alipassapp/ui/eu;->e:I

    iput v2, p0, Lcom/alipay/mobile/alipassapp/ui/eu;->f:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/alipassapp/ui/eu;->e:I

    return v0
.end method

.method public final a(Lcom/alipay/kabaoprod/biz/mwallet/card/result/CardListResult;Z)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lcom/alipay/kabaoprod/biz/mwallet/card/result/CardListResult;->hasMore:I

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/eu;->c:Z

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/eu;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput v2, p0, Lcom/alipay/mobile/alipassapp/ui/eu;->e:I

    iput v1, p0, Lcom/alipay/mobile/alipassapp/ui/eu;->f:I

    :cond_1
    iget-object v0, p1, Lcom/alipay/kabaoprod/biz/mwallet/card/result/CardListResult;->cardList:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/kabaoprod/biz/mwallet/card/model/CardModel;

    new-instance v2, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$MemberCardObtainableInfoItem;

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/eu;->h:Lcom/alipay/mobile/alipassapp/ui/ev;

    invoke-direct {v2, v0, v3}, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$MemberCardObtainableInfoItem;-><init>(Lcom/alipay/kabaoprod/biz/mwallet/card/model/CardModel;Lcom/alipay/mobile/alipassapp/ui/ev;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/eu;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/alipay/mobile/alipassapp/ui/eu;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/alipassapp/ui/eu;->e:I

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/alipay/mobile/alipassapp/ui/eu;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/alipassapp/ui/eu;->f:I

    :cond_4
    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/eu;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public final a(Lcom/alipay/mobile/alipassapp/ui/ev;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/eu;->h:Lcom/alipay/mobile/alipassapp/ui/ev;

    return-void
.end method

.method public final a(Lcom/alipay/mobile/alipassapp/ui/ew;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/eu;->g:Lcom/alipay/mobile/alipassapp/ui/ew;

    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/eu;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/eu;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem;

    instance-of v2, v0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$MemberCardObtainableInfoItem;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$MemberCardObtainableInfoItem;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$MemberCardObtainableInfoItem;->getTid()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/eu;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget v0, p0, Lcom/alipay/mobile/alipassapp/ui/eu;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/alipassapp/ui/eu;->e:I

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/eu;->notifyDataSetChanged()V

    return-void

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/alipassapp/ui/eu;->f:I

    return v0
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/eu;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected final getFailView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/eu;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method protected final getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/eu;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/eu;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem;->getView(Landroid/content/Context;ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/eu;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem;->getType()I

    move-result v0

    return v0
.end method

.method protected final getLoadingView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/eu;->d:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/eu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/alipassapp/R$layout;->sub_footview_more_loading:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/eu;->d:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/eu;->d:Landroid/view/View;

    return-object v0
.end method

.method public final getMoreFinish(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->getMoreFinish(Z)V

    iget-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/eu;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/eu;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/eu;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected final hasMore()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/eu;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/eu;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final itemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    return-void
.end method

.method protected final onMore()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/eu;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/eu;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/eu;->g:Lcom/alipay/mobile/alipassapp/ui/ew;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/eu;->g:Lcom/alipay/mobile/alipassapp/ui/ew;

    invoke-interface {v0}, Lcom/alipay/mobile/alipassapp/ui/ew;->a()V

    :cond_1
    return-void
.end method

.method protected final onRetry()V
    .locals 0

    return-void
.end method
