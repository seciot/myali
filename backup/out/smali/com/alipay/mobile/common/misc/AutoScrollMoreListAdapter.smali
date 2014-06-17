.class public abstract Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Landroid/widget/AbsListView$OnScrollListener;

.field protected mContext:Landroid/content/Context;

.field protected mFootView:Landroid/view/View;

.field protected mFooterViewAdded:Z

.field protected mIsLoading:Z

.field protected mListDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListView;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter$1;-><init>(Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->a:Landroid/widget/AbsListView$OnScrollListener;

    iput-object p1, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->initListAndData(Landroid/widget/ListView;)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/ListView;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter$1;-><init>(Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->a:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->initListAndData(Landroid/widget/ListView;)V

    return-void
.end method


# virtual methods
.method public addAllData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mListDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addData(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mListDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected addFooter()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mFootView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mFooterViewAdded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mFootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mFooterViewAdded:Z

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mListDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public disableLoadMore()V
    .locals 2

    invoke-virtual {p0}, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->removeFooter()V

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public enableLoadMore()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mIsLoading:Z

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->a:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->addFooter()V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->hideFooter()V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mListDatas:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mListDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method protected abstract getFailView()Landroid/view/View;
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mListDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method protected abstract getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getItemViewType(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract getLoadingView()Landroid/view/View;
.end method

.method public getMoreFinish()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mIsLoading:Z

    invoke-virtual {p0}, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->hideFooter()V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected hideFooter()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mFootView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mFootView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected init()V
    .locals 3

    invoke-virtual {p0}, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->getLoadingView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mFootView:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mFootView:Landroid/view/View;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Loading View must be set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mFooterViewAdded:Z

    invoke-virtual {p0}, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->enableLoadMore()V

    return-void
.end method

.method protected initListAndData(Landroid/widget/ListView;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mListView:Landroid/widget/ListView;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mListDatas:Ljava/util/List;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->init()V

    return-void
.end method

.method protected abstract itemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation
.end method

.method protected abstract onAutoLoadMore()V
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    invoke-virtual/range {p0 .. p5}, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->itemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method protected abstract onRetry()V
.end method

.method protected removeFooter()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mFootView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mFooterViewAdded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mFootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mFooterViewAdded:Z

    :cond_0
    return-void
.end method

.method protected showFooter()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mFootView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mFootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
