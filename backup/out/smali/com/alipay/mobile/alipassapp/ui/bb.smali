.class public final Lcom/alipay/mobile/alipassapp/ui/bb;
.super Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;


# static fields
.field private static a:I


# instance fields
.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Landroid/view/View;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Lcom/alipay/mobile/alipassapp/ui/bc;

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1e

    sput v0, Lcom/alipay/mobile/alipassapp/ui/bb;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/commonui/widget/APListView;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;-><init>(Landroid/content/Context;Landroid/widget/ListView;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->c:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->d:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->e:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->f:Z

    iput v1, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->i:I

    iput p3, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->k:I

    return-void
.end method

.method private a(I)V
    .locals 4

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->e:Z

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    if-lez p1, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->b:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem;

    :goto_0
    if-eqz v0, :cond_3

    instance-of v0, v0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$DateInfoItem;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->b:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem;

    :goto_1
    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$DateInfoItem;

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_2
    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget v1, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->i:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->i:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->b:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    :goto_3
    return-void

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget v0, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->i:I

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move-object v0, v2

    goto :goto_1

    :cond_5
    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->i:I

    return v0
.end method

.method public final a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;ZZZZ)V
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->getHasMore()I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->f:Z

    if-eqz p4, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->b:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->i:I

    :cond_1
    if-nez p2, :cond_2

    if-nez p4, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->b:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->i:I

    :cond_2
    invoke-virtual {p1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->getPassTimelineList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/kabaoprod/core/model/model/PassTimelineInfo;

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/core/model/model/PassTimelineInfo;->getPassDate()Ljava/lang/String;

    move-result-object v3

    iget-boolean v5, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->e:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->h:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->h:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    new-instance v3, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$DateInfoItem;

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/core/model/model/PassTimelineInfo;->getPassDate()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$DateInfoItem;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/core/model/model/PassTimelineInfo;->getPassDate()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->h:Ljava/lang/String;

    :cond_5
    invoke-virtual {v0}, Lcom/alipay/kabaoprod/core/model/model/PassTimelineInfo;->getPassList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;

    if-nez p5, :cond_6

    iput v1, v0, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;->isreaded:I

    :cond_6
    new-instance v6, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;

    if-eqz p3, :cond_8

    iget v3, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->i:I

    sget v7, Lcom/alipay/mobile/alipassapp/ui/bb;->a:I

    if-le v3, v7, :cond_8

    move v3, v1

    :goto_4
    iget v7, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->k:I

    invoke-direct {v6, v0, v3, v7}, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;-><init>(Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;ZI)V

    if-eqz p4, :cond_9

    invoke-virtual {v6, v1}, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem;->setItemFrom(I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    iget v0, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->i:I

    goto :goto_3

    :cond_7
    move v0, v2

    goto/16 :goto_1

    :cond_8
    move v3, v2

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    if-eqz p4, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->b:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    goto/16 :goto_2

    :cond_b
    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/bb;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method

.method public final a(Lcom/alipay/mobile/alipassapp/ui/bc;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->j:Lcom/alipay/mobile/alipassapp/ui/bc;

    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem;

    instance-of v2, v0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;->getPassId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/alipassapp/ui/bb;->a(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/bb;->notifyDataSetChanged()V

    return-void

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem;

    instance-of v1, v0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;->getPartnerID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast v0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v2}, Lcom/alipay/mobile/alipassapp/ui/bb;->a(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/bb;->notifyDataSetChanged()V

    return-void

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->d:Z

    return-void
.end method

.method public final b()V
    .locals 0

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/bb;->removeFooterView()V

    return-void
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->e:Z

    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem;

    instance-of v2, v0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem;->getBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->setIsreaded(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->b:Ljava/util/ArrayList;

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

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->b:Ljava/util/ArrayList;

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

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem;->getView(Landroid/content/Context;ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem;->getType()I

    move-result v0

    return v0
.end method

.method protected final getLoadingView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->g:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/alipassapp/R$layout;->sub_footview_more_loading:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->g:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->g:Landroid/view/View;

    return-object v0
.end method

.method public final getMoreFinish(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->getMoreFinish(Z)V

    iget-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->g:Landroid/view/View;

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

    iget-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->f:Z

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

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->j:Lcom/alipay/mobile/alipassapp/ui/bc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/bb;->j:Lcom/alipay/mobile/alipassapp/ui/bc;

    invoke-interface {v0}, Lcom/alipay/mobile/alipassapp/ui/bc;->a()V

    :cond_1
    return-void
.end method

.method protected final onRetry()V
    .locals 0

    return-void
.end method
