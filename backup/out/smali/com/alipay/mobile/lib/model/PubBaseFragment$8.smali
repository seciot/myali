.class Lcom/alipay/mobile/lib/model/PubBaseFragment$8;
.super Ljava/lang/Object;
.source "PubBaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/lib/model/PubBaseFragment;

.field final synthetic val$needPull:Z


# direct methods
.method constructor <init>(Lcom/alipay/mobile/lib/model/PubBaseFragment;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 538
    iput-object p1, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment$8;->this$0:Lcom/alipay/mobile/lib/model/PubBaseFragment;

    iput-boolean p2, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment$8;->val$needPull:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 541
    iget-boolean v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment$8;->val$needPull:Z

    if-eqz v0, :cond_1

    .line 542
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment$8;->this$0:Lcom/alipay/mobile/lib/model/PubBaseFragment;

    iget-object v0, v0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->listViewOld:Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment$8;->this$0:Lcom/alipay/mobile/lib/model/PubBaseFragment;

    iget-object v0, v0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->listViewOld:Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->redirectToLoad()V

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment$8;->this$0:Lcom/alipay/mobile/lib/model/PubBaseFragment;

    invoke-virtual {v0}, Lcom/alipay/mobile/lib/model/PubBaseFragment;->refreshOnPageResume()V

    goto :goto_0
.end method
