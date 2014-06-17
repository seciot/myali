.class Lcom/alipay/mobile/lib/model/PubBaseFragment$6;
.super Ljava/lang/Object;
.source "PubBaseFragment.java"

# interfaces
.implements Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView$OnRefreshListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/lib/model/PubBaseFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/lib/model/PubBaseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment$6;->this$0:Lcom/alipay/mobile/lib/model/PubBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment$6;->this$0:Lcom/alipay/mobile/lib/model/PubBaseFragment;

    iget v0, v0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->topRequestStatus:I

    if-nez v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment$6;->this$0:Lcom/alipay/mobile/lib/model/PubBaseFragment;

    invoke-virtual {v0}, Lcom/alipay/mobile/lib/model/PubBaseFragment;->requestNewMessage()V

    .line 404
    :cond_0
    return-void
.end method
