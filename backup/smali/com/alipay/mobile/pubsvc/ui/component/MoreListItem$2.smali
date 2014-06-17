.class Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$2;
.super Ljava/lang/Object;
.source "MoreListItem.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$2;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 156
    sub-int v0, p4, p3

    if-eq p2, v0, :cond_0

    if-ne p4, v2, :cond_2

    if-nez p3, :cond_2

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$2;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    #getter for: Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->a:Z
    invoke-static {v0}, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->access$200(Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$2;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$2;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    iget-object v1, v1, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->setWaittingFooterView(Landroid/view/View;)V

    .line 160
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$2;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    #setter for: Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->a:Z
    invoke-static {v0, v2}, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->access$202(Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;Z)Z

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$2;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    iget v0, v0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->loadState:I

    if-nez v0, :cond_2

    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$2;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    iput v2, v0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->loadState:I

    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$2;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->startTimeOutChecking()V

    .line 167
    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$2;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    #getter for: Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->c:Landroid/os/Handler;
    invoke-static {v0}, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->access$300(Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$2$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$2$1;-><init>(Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$2;Landroid/widget/AbsListView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 178
    :cond_2
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$2;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    #getter for: Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->b:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$IMoreDataListener;
    invoke-static {v0}, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->access$000(Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;)Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$IMoreDataListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$IMoreDataListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 150
    return-void
.end method
