.class public abstract Lcom/alipay/mobile/lib/model/PubBaseFragment;
.super Landroid/support/v4/app/ListFragment;
.source "PubBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lcom/alipay/mobile/lib/model/ResponseBaseMessage;",
        "T:",
        "Lcom/alipay/mobile/lib/model/BaseHomeAdapter",
        "<TD;>;>",
        "Landroid/support/v4/app/ListFragment;"
    }
.end annotation


# static fields
.field private static a:I


# instance fields
.field protected actionParam:Ljava/lang/String;

.field protected adapter:Lcom/alipay/mobile/lib/model/BaseHomeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:Z

.field protected bottomRequestStatus:I

.field protected bottomRequestType:Lcom/alipay/mobile/lib/model/RequestType;

.field private c:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

.field protected clearStatus:I

.field private d:Landroid/widget/ProgressBar;

.field private e:Landroid/widget/PopupWindow;

.field private f:Landroid/content/BroadcastReceiver;

.field protected flowTip:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

.field private g:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$IMoreDataListener;

.field private h:Landroid/view/View$OnClickListener;

.field private i:Landroid/view/View$OnClickListener;

.field protected isDestory:Z

.field protected isFirstError:Z

.field protected isShowNoData:Z

.field public isShowOutBizNo:Z

.field protected listViewOld:Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;

.field protected localHasSize:I

.field protected mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

.field protected mContext:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

.field protected mResultHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field protected topRequestStatus:I

.field protected topRequestType:Lcom/alipay/mobile/lib/model/RequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 41
    iput-boolean v1, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->isShowOutBizNo:Z

    .line 46
    iput-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->listViewOld:Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;

    .line 48
    iput-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->adapter:Lcom/alipay/mobile/lib/model/BaseHomeAdapter;

    .line 49
    iput-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->flowTip:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    .line 51
    iput v1, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->localHasSize:I

    .line 52
    sget-object v0, Lcom/alipay/mobile/lib/model/RequestType;->NONE:Lcom/alipay/mobile/lib/model/RequestType;

    iput-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->topRequestType:Lcom/alipay/mobile/lib/model/RequestType;

    .line 53
    sget-object v0, Lcom/alipay/mobile/lib/model/RequestType;->NONE:Lcom/alipay/mobile/lib/model/RequestType;

    iput-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->bottomRequestType:Lcom/alipay/mobile/lib/model/RequestType;

    .line 54
    iput-boolean v1, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->isDestory:Z

    .line 55
    iput v1, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->topRequestStatus:I

    .line 56
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->actionParam:Ljava/lang/String;

    .line 57
    iput-boolean v2, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->isFirstError:Z

    .line 58
    iput-boolean v1, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->isShowNoData:Z

    .line 59
    iput v1, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->clearStatus:I

    .line 60
    iput v1, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->bottomRequestStatus:I

    .line 62
    iput-boolean v2, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->b:Z

    .line 93
    new-instance v0, Lcom/alipay/mobile/lib/model/PubBaseFragment$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/lib/model/PubBaseFragment$1;-><init>(Lcom/alipay/mobile/lib/model/PubBaseFragment;)V

    iput-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->f:Landroid/content/BroadcastReceiver;

    .line 105
    new-instance v0, Lcom/alipay/mobile/lib/model/PubBaseFragment$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/lib/model/PubBaseFragment$2;-><init>(Lcom/alipay/mobile/lib/model/PubBaseFragment;)V

    iput-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->g:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$IMoreDataListener;

    .line 117
    new-instance v0, Lcom/alipay/mobile/lib/model/PubBaseFragment$3;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/lib/model/PubBaseFragment$3;-><init>(Lcom/alipay/mobile/lib/model/PubBaseFragment;)V

    iput-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->h:Landroid/view/View$OnClickListener;

    .line 125
    new-instance v0, Lcom/alipay/mobile/lib/model/PubBaseFragment$4;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/lib/model/PubBaseFragment$4;-><init>(Lcom/alipay/mobile/lib/model/PubBaseFragment;)V

    iput-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->i:Landroid/view/View$OnClickListener;

    .line 136
    new-instance v0, Lcom/alipay/mobile/lib/model/PubBaseFragment$5;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/lib/model/PubBaseFragment$5;-><init>(Lcom/alipay/mobile/lib/model/PubBaseFragment;)V

    iput-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->mResultHandler:Landroid/os/Handler;

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 41
    iput-boolean v1, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->isShowOutBizNo:Z

    .line 46
    iput-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->listViewOld:Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;

    .line 48
    iput-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->adapter:Lcom/alipay/mobile/lib/model/BaseHomeAdapter;

    .line 49
    iput-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->flowTip:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    .line 51
    iput v1, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->localHasSize:I

    .line 52
    sget-object v0, Lcom/alipay/mobile/lib/model/RequestType;->NONE:Lcom/alipay/mobile/lib/model/RequestType;

    iput-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->topRequestType:Lcom/alipay/mobile/lib/model/RequestType;

    .line 53
    sget-object v0, Lcom/alipay/mobile/lib/model/RequestType;->NONE:Lcom/alipay/mobile/lib/model/RequestType;

    iput-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->bottomRequestType:Lcom/alipay/mobile/lib/model/RequestType;

    .line 54
    iput-boolean v1, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->isDestory:Z

    .line 55
    iput v1, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->topRequestStatus:I

    .line 56
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->actionParam:Ljava/lang/String;

    .line 57
    iput-boolean v2, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->isFirstError:Z

    .line 58
    iput-boolean v1, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->isShowNoData:Z

    .line 59
    iput v1, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->clearStatus:I

    .line 60
    iput v1, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->bottomRequestStatus:I

    .line 62
    iput-boolean v2, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->b:Z

    .line 93
    new-instance v0, Lcom/alipay/mobile/lib/model/PubBaseFragment$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/lib/model/PubBaseFragment$1;-><init>(Lcom/alipay/mobile/lib/model/PubBaseFragment;)V

    iput-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->f:Landroid/content/BroadcastReceiver;

    .line 105
    new-instance v0, Lcom/alipay/mobile/lib/model/PubBaseFragment$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/lib/model/PubBaseFragment$2;-><init>(Lcom/alipay/mobile/lib/model/PubBaseFragment;)V

    iput-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->g:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$IMoreDataListener;

    .line 117
    new-instance v0, Lcom/alipay/mobile/lib/model/PubBaseFragment$3;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/lib/model/PubBaseFragment$3;-><init>(Lcom/alipay/mobile/lib/model/PubBaseFragment;)V

    iput-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->h:Landroid/view/View$OnClickListener;

    .line 125
    new-instance v0, Lcom/alipay/mobile/lib/model/PubBaseFragment$4;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/lib/model/PubBaseFragment$4;-><init>(Lcom/alipay/mobile/lib/model/PubBaseFragment;)V

    iput-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->i:Landroid/view/View$OnClickListener;

    .line 136
    new-instance v0, Lcom/alipay/mobile/lib/model/PubBaseFragment$5;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/lib/model/PubBaseFragment$5;-><init>(Lcom/alipay/mobile/lib/model/PubBaseFragment;)V

    iput-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->mResultHandler:Landroid/os/Handler;

    .line 73
    iput-object p1, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->mContext:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/lib/model/PubBaseFragment;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->c:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->c:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->hasLoadMoreList()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->c:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->hasEndLoadList()V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/lib/model/PubBaseFragment;Ljava/util/List;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->listViewOld:Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->listViewOld:Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->listViewOld:Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->onRefreshComplete()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->topRequestType:Lcom/alipay/mobile/lib/model/RequestType;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/lib/model/PubBaseFragment;->hideTitleProgressBar(Lcom/alipay/mobile/lib/model/RequestType;)V

    if-nez p2, :cond_2

    iget-boolean v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->isShowNoData:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->listViewOld:Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->listViewOld:Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->flowTip:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setVisibility(I)V

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/lib/model/PubBaseFragment;->resetFlowTip(I)V

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->c:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    if-nez v0, :cond_4

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/lib/model/PubBaseFragment;->getDefaultPageSize()I

    move-result v1

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->listViewOld:Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    iget-object v1, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->listViewOld:Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;

    iget-object v2, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->g:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$IMoreDataListener;

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;-><init>(Landroid/widget/ListView;Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$IMoreDataListener;)V

    iput-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->c:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/alipay/mobile/lib/model/PubBaseFragment;->onNewDataLoaded()V

    goto :goto_0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/lib/model/PubBaseFragment;)V
    .locals 3
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->adapter:Lcom/alipay/mobile/lib/model/BaseHomeAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/lib/model/BaseHomeAdapter;->clearData()V

    iget v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->clearStatus:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->clearStatus:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->b:Z

    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->c:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->listViewOld:Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    iget-object v1, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->listViewOld:Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;

    iget-object v2, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->g:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$IMoreDataListener;

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;-><init>(Landroid/widget/ListView;Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$IMoreDataListener;)V

    iput-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->c:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->c:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->resetState()V

    goto :goto_0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/lib/model/PubBaseFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->b:Z

    return v0
.end method

.method static synthetic access$302(Lcom/alipay/mobile/lib/model/PubBaseFragment;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->b:Z

    return p1
.end method

.method static synthetic access$400(Lcom/alipay/mobile/lib/model/PubBaseFragment;)V
    .locals 3
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->localHasSize:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->c:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->listViewOld:Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    iget-object v1, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->listViewOld:Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;

    iget-object v2, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->g:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$IMoreDataListener;

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;-><init>(Landroid/widget/ListView;Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$IMoreDataListener;)V

    iput-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->c:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    :cond_0
    return-void
.end method

.method static synthetic access$500(Lcom/alipay/mobile/lib/model/PubBaseFragment;)Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->c:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    return-object v0
.end method


# virtual methods
.method public deleteMemoryMessage(Lcom/alipay/mobile/lib/model/ResponseBaseMessage;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 334
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->adapter:Lcom/alipay/mobile/lib/model/BaseHomeAdapter;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->adapter:Lcom/alipay/mobile/lib/model/BaseHomeAdapter;

    iget-object v1, p1, Lcom/alipay/mobile/lib/model/ResponseBaseMessage;->mMsgType:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/lib/model/ResponseBaseMessage;->mMsgId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/lib/model/BaseHomeAdapter;->deleteItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :cond_0
    return-void
.end method

.method protected abstract findFlowTipView(Landroid/view/View;)Lcom/alipay/mobile/commonui/widget/APFlowTipView;
.end method

.method protected abstract findTitleProgressBar()Landroid/widget/ProgressBar;
.end method

.method protected flowTipRetry()V
    .locals 0

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/alipay/mobile/lib/model/PubBaseFragment;->requestNewMessage()V

    .line 388
    return-void
.end method

.method protected flowTipWarn()V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->mContext:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->finish()V

    .line 392
    return-void
.end method

.method public fragmentSelected(Z)V
    .locals 4
    .parameter

    .prologue
    .line 538
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->mResultHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/lib/model/PubBaseFragment$8;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/lib/model/PubBaseFragment$8;-><init>(Lcom/alipay/mobile/lib/model/PubBaseFragment;Z)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 550
    return-void
.end method

.method public getApp()Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method protected abstract getDefaultPageSize()I
.end method

.method protected abstract getLoadingPopupWindow()Landroid/widget/PopupWindow;
.end method

.method protected handleError(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 359
    .line 361
    sget v0, Lcom/alipay/mobile/publicsvc/common/R$string;->pub_net_error_retry_tip:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/lib/model/PubBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 362
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/alipay/mobile/lib/model/PubResponseError;

    if-eqz v0, :cond_3

    .line 363
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/mobile/lib/model/PubResponseError;

    .line 364
    iget v0, v0, Lcom/alipay/mobile/lib/model/PubResponseError;->mResultCode:I

    .line 365
    const/4 v4, 0x7

    if-eq v0, v4, :cond_0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_6

    .line 369
    :cond_0
    const/16 v0, 0x10

    sget v4, Lcom/alipay/mobile/publicsvc/common/R$string;->pub_network_error:I

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/lib/model/PubBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/alipay/mobile/lib/model/PubBaseFragment;->resetFlowTip(ILjava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->flowTip:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setVisibility(I)V

    .line 372
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->listViewOld:Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->listViewOld:Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->setVisibility(I)V

    :cond_1
    move v0, v2

    :goto_0
    move v2, v0

    move-object v0, v3

    .line 381
    :goto_1
    if-eqz v2, :cond_2

    .line 382
    iget-object v2, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->mContext:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->mContext:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    new-instance v3, Lcom/alipay/mobile/lib/model/PubBaseFragment$7;

    invoke-direct {v3, p0, v1}, Lcom/alipay/mobile/lib/model/PubBaseFragment$7;-><init>(Lcom/alipay/mobile/lib/model/PubBaseFragment;Z)V

    invoke-static {v2, v0, v3}, Lcom/alipay/mobile/common/misc/ExtViewUtil;->simpleAlert(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 384
    :cond_2
    return-void

    .line 376
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 377
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 378
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget v0, Lcom/alipay/mobile/publicsvc/common/R$string;->pub_net_error_retry_tip:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/lib/model/PubBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_4
    move v2, v1

    goto :goto_1

    :cond_5
    move-object v0, v3

    move v2, v1

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public hideTitleProgressBar(Lcom/alipay/mobile/lib/model/RequestType;)V
    .locals 2
    .parameter

    .prologue
    .line 317
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->d:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 318
    sget v0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->a:I

    invoke-virtual {p1}, Lcom/alipay/mobile/lib/model/RequestType;->getCode()I

    move-result v1

    sub-int/2addr v0, v1

    .line 319
    sput v0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->a:I

    if-gtz v0, :cond_0

    .line 320
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->a:I

    .line 321
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->d:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->e:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 327
    :cond_0
    return-void
.end method

.method protected initListView()V
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->listViewOld:Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->listViewOld:Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;

    iget-object v1, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->adapter:Lcom/alipay/mobile/lib/model/BaseHomeAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 397
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->listViewOld:Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;

    new-instance v1, Lcom/alipay/mobile/lib/model/PubBaseFragment$6;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/lib/model/PubBaseFragment$6;-><init>(Lcom/alipay/mobile/lib/model/PubBaseFragment;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->setOnRefreshListener(Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView$OnRefreshListener;)V

    .line 408
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 253
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    .line 254
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 257
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 261
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 262
    invoke-virtual {p0}, Lcom/alipay/mobile/lib/model/PubBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    iput-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->mContext:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    .line 263
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->mContext:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    iget-object v1, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->isDestory:Z

    .line 282
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onDestroy()V

    .line 283
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->adapter:Lcom/alipay/mobile/lib/model/BaseHomeAdapter;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->adapter:Lcom/alipay/mobile/lib/model/BaseHomeAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/lib/model/BaseHomeAdapter;->clearData()V

    .line 285
    iput-object v2, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->adapter:Lcom/alipay/mobile/lib/model/BaseHomeAdapter;

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->listViewOld:Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->listViewOld:Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 289
    iput-object v2, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->listViewOld:Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->c:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    if-eqz v0, :cond_2

    .line 292
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->c:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->destroy()V

    .line 293
    iput-object v2, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->c:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    .line 295
    :cond_2
    iput-object v2, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->mContext:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    .line 296
    iput-object v2, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->g:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$IMoreDataListener;

    .line 297
    iput-object v2, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->mResultHandler:Landroid/os/Handler;

    .line 298
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onNewDataLoaded()V
    .locals 0

    .prologue
    .line 509
    return-void
.end method

.method protected onReceiveDeleteMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 462
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 267
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 268
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/lib/model/PubBaseFragment;->findFlowTipView(Landroid/view/View;)Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->flowTip:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    .line 269
    invoke-virtual {p0}, Lcom/alipay/mobile/lib/model/PubBaseFragment;->findTitleProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->d:Landroid/widget/ProgressBar;

    .line 270
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "Notifycation_BILL_DETAIL_NOT_FOUND"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->mContext:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    iget-object v2, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 273
    return-void
.end method

.method protected processErrorResponse(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 340
    iput v2, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->topRequestStatus:I

    .line 341
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->listViewOld:Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->listViewOld:Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->listViewOld:Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->onRefreshComplete()V

    .line 344
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/alipay/mobile/lib/model/RequestType;->getTypeByCode(I)Lcom/alipay/mobile/lib/model/RequestType;

    move-result-object v0

    .line 345
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/lib/model/PubBaseFragment;->hideTitleProgressBar(Lcom/alipay/mobile/lib/model/RequestType;)V

    .line 346
    sget-object v1, Lcom/alipay/mobile/lib/model/RequestType;->TOP_REQUEST_PUBLIC_EVENT_PROCESS_ERROR:Lcom/alipay/mobile/lib/model/RequestType;

    if-ne v0, v1, :cond_1

    .line 347
    iget-boolean v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->isFirstError:Z

    if-eqz v0, :cond_1

    .line 348
    iput-boolean v2, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->isFirstError:Z

    .line 349
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/lib/model/PubBaseFragment;->handleError(Landroid/os/Message;)V

    .line 352
    :cond_1
    return-void
.end method

.method protected processEventResponse(Ljava/util/List;Z)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TD;>;Z)V"
        }
    .end annotation

    .prologue
    .line 355
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/lib/model/PubBaseFragment;->updateUI(Ljava/util/List;Z)V

    .line 356
    return-void

    .line 355
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract refreshOnPageResume()V
.end method

.method protected abstract requestBottomMessage()V
.end method

.method public abstract requestNewMessage()V
.end method

.method protected resetFlowTip(I)V
    .locals 1
    .parameter

    .prologue
    .line 428
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/lib/model/PubBaseFragment;->resetFlowTip(ILjava/lang/String;)V

    .line 429
    return-void
.end method

.method protected resetFlowTip(ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 432
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->flowTip:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->resetFlowTipType(I)V

    .line 433
    packed-switch p1, :pswitch_data_0

    .line 445
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->flowTip:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setTips(Ljava/lang/String;)V

    .line 452
    :cond_0
    return-void

    .line 435
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->flowTip:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    sget v1, Lcom/alipay/mobile/publicsvc/common/R$string;->pub_net_error_retry_button:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/lib/model/PubBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 439
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->flowTip:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    sget v1, Lcom/alipay/mobile/publicsvc/common/R$string;->pub_page_no_data:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/lib/model/PubBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setTips(Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->flowTip:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->getActionButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    goto :goto_0

    .line 443
    :pswitch_2
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->flowTip:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    sget v1, Lcom/alipay/mobile/publicsvc/common/R$string;->pub_confirm:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/lib/model/PubBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 433
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setApp(Lcom/alipay/mobile/framework/app/ActivityApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    .line 302
    return-void
.end method

.method public showTitleProgressBar(Lcom/alipay/mobile/lib/model/RequestType;)V
    .locals 2
    .parameter

    .prologue
    .line 309
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->d:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->d:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 311
    sget v0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->a:I

    invoke-virtual {p1}, Lcom/alipay/mobile/lib/model/RequestType;->getCode()I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->a:I

    .line 312
    invoke-virtual {p0}, Lcom/alipay/mobile/lib/model/PubBaseFragment;->getLoadingPopupWindow()Landroid/widget/PopupWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->e:Landroid/widget/PopupWindow;

    .line 314
    :cond_0
    return-void
.end method

.method public updateUI(Ljava/util/List;Z)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TD;>;Z)V"
        }
    .end annotation

    .prologue
    .line 330
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/lib/model/PubBaseFragment;->updateUI(Ljava/util/List;ZZ)V

    .line 331
    return-void
.end method

.method protected final updateUI(Ljava/util/List;ZZ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TD;>;ZZ)V"
        }
    .end annotation

    .prologue
    .line 412
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->adapter:Lcom/alipay/mobile/lib/model/BaseHomeAdapter;

    if-nez v0, :cond_1

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    if-eqz p2, :cond_2

    .line 416
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->adapter:Lcom/alipay/mobile/lib/model/BaseHomeAdapter;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/lib/model/BaseHomeAdapter;->addTopSourceData(Ljava/util/List;)V

    .line 417
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p3, :cond_0

    .line 418
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->listViewOld:Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->listViewOld:Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->setSelection(I)V

    goto :goto_0

    .line 423
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->adapter:Lcom/alipay/mobile/lib/model/BaseHomeAdapter;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/lib/model/BaseHomeAdapter;->addBottomSourceData(Ljava/util/List;)V

    goto :goto_0
.end method
