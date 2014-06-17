.class Lcom/alipay/mobile/lib/model/PubBaseFragment$2;
.super Ljava/lang/Object;
.source "PubBaseFragment.java"

# interfaces
.implements Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$IMoreDataListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/lib/model/PubBaseFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/lib/model/PubBaseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment$2;->this$0:Lcom/alipay/mobile/lib/model/PubBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMoreData(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment$2;->this$0:Lcom/alipay/mobile/lib/model/PubBaseFragment;

    invoke-virtual {v0}, Lcom/alipay/mobile/lib/model/PubBaseFragment;->requestBottomMessage()V

    .line 114
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 109
    return-void
.end method
