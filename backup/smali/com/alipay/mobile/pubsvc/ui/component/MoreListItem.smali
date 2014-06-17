.class public Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;
.super Ljava/lang/Object;
.source "MoreListItem.java"


# static fields
.field public static final END_LOAD:I = 0x3

.field public static final LOADING:I = 0x1

.field public static final LOAD_FAIL:I = 0x2

.field public static final NOT_LOAD:I


# instance fields
.field private a:Z

.field private b:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$IMoreDataListener;

.field private c:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private d:Landroid/widget/AbsListView$OnScrollListener;

.field private e:Landroid/view/View$OnClickListener;

.field public loadState:I

.field protected mFooterView:Landroid/view/View;

.field protected mListView:Landroid/widget/ListView;

.field public mPagerParam:Ljava/lang/String;

.field protected mPbar:Landroid/widget/ProgressBar;

.field protected mTvLoading:Landroid/widget/TextView;

.field public pageNo:I


# direct methods
.method public constructor <init>(Landroid/widget/ListView;Landroid/view/View;Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$IMoreDataListener;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v2, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->loadState:I

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->pageNo:I

    .line 37
    iput-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mListView:Landroid/widget/ListView;

    .line 39
    iput-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mFooterView:Landroid/view/View;

    .line 41
    iput-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mTvLoading:Landroid/widget/TextView;

    .line 42
    iput-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mPbar:Landroid/widget/ProgressBar;

    .line 48
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mPagerParam:Ljava/lang/String;

    .line 49
    iput-boolean v2, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->a:Z

    .line 106
    new-instance v0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$1;-><init>(Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;)V

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->c:Landroid/os/Handler;

    .line 145
    new-instance v0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$2;-><init>(Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;)V

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->d:Landroid/widget/AbsListView$OnScrollListener;

    .line 182
    new-instance v0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$3;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$3;-><init>(Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;)V

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->e:Landroid/view/View$OnClickListener;

    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->a(Landroid/widget/ListView;Landroid/view/View;Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$IMoreDataListener;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/widget/ListView;Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$IMoreDataListener;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->loadState:I

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->pageNo:I

    .line 37
    iput-object v2, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mListView:Landroid/widget/ListView;

    .line 39
    iput-object v2, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mFooterView:Landroid/view/View;

    .line 41
    iput-object v2, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mTvLoading:Landroid/widget/TextView;

    .line 42
    iput-object v2, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mPbar:Landroid/widget/ProgressBar;

    .line 48
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mPagerParam:Ljava/lang/String;

    .line 49
    iput-boolean v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->a:Z

    .line 106
    new-instance v0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$1;-><init>(Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;)V

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->c:Landroid/os/Handler;

    .line 145
    new-instance v0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$2;-><init>(Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;)V

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->d:Landroid/widget/AbsListView$OnScrollListener;

    .line 182
    new-instance v0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$3;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$3;-><init>(Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;)V

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->e:Landroid/view/View$OnClickListener;

    .line 94
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/publicsvc/common/R$layout;->refresh_loading:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 96
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 98
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/publicsvc/common/R$dimen;->loading_view_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 100
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    invoke-direct {p0, p1, v0, p2}, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->a(Landroid/widget/ListView;Landroid/view/View;Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$IMoreDataListener;)V

    .line 103
    return-void
.end method

.method private a(Landroid/widget/ListView;Landroid/view/View;Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$IMoreDataListener;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 330
    iput-object p3, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->b:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$IMoreDataListener;

    .line 331
    iput-object p2, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mFooterView:Landroid/view/View;

    .line 332
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mListView:Landroid/widget/ListView;

    .line 333
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 334
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->d:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 335
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;)Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$IMoreDataListener;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->b:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$IMoreDataListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->e:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->a:Z

    return v0
.end method

.method static synthetic access$202(Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->a:Z

    return p1
.end method

.method static synthetic access$300(Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->c:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 262
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 264
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mFooterView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :goto_0
    iput-object v2, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mFooterView:Landroid/view/View;

    .line 271
    :cond_0
    iput-object v2, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mListView:Landroid/widget/ListView;

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mPbar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    .line 275
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mPbar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 276
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mPbar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->clearAnimation()V

    .line 277
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mPbar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->destroyDrawingCache()V

    .line 278
    iput-object v2, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mPbar:Landroid/widget/ProgressBar;

    .line 281
    :cond_2
    iput-object v2, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->b:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$IMoreDataListener;

    .line 282
    iput-object v2, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mTvLoading:Landroid/widget/TextView;

    .line 284
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->c:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 285
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 286
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->c:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 289
    :cond_3
    iput-object v2, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->e:Landroid/view/View$OnClickListener;

    .line 290
    iput-object v2, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->d:Landroid/widget/AbsListView$OnScrollListener;

    .line 291
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getFooterView()Landroid/view/View;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mFooterView:Landroid/view/View;

    return-object v0
.end method

.method public hasEndLoadList()V
    .locals 2

    .prologue
    .line 240
    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->loadState:I

    .line 242
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mFooterView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 246
    :cond_0
    return-void
.end method

.method public hasLoadMoreList()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 252
    iput v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->loadState:I

    .line 254
    iget v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->pageNo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->pageNo:I

    .line 255
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mTvLoading:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mPbar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mTvLoading:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    return-void
.end method

.method public resetState()V
    .locals 2

    .prologue
    .line 297
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->loadState:I

    .line 298
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->pageNo:I

    .line 299
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mPagerParam:Ljava/lang/String;

    .line 300
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mFooterView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 305
    :cond_0
    return-void
.end method

.method protected setWaittingFooterView(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 318
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mFooterView:Landroid/view/View;

    .line 319
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mFooterView:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/publicsvc/common/R$id;->framework_pullrefresh_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mTvLoading:Landroid/widget/TextView;

    .line 321
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mFooterView:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/publicsvc/common/R$id;->framework_pullrefresh_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mPbar:Landroid/widget/ProgressBar;

    .line 323
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mTvLoading:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mPbar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 325
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mTvLoading:Landroid/widget/TextView;

    sget v1, Lcom/alipay/mobile/publicsvc/common/R$string;->loading_dot:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 326
    return-void
.end method

.method public showNoData()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 224
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 225
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 226
    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 227
    return-void
.end method

.method public showTimeOutOrFail()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 216
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 217
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 218
    iput v1, v0, Landroid/os/Message;->what:I

    .line 219
    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 220
    return-void
.end method

.method protected startTimeOutChecking()V
    .locals 4

    .prologue
    .line 209
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 210
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 211
    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->c:Landroid/os/Handler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 212
    return-void
.end method

.method public stopTimeOutChecking()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 234
    return-void
.end method
