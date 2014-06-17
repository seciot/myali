.class Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$3$1;
.super Ljava/lang/Object;
.source "MoreListItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$3;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$3;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$3$1;->this$1:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$3$1;->this$1:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$3;

    iget-object v0, v0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$3;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    #getter for: Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->b:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$IMoreDataListener;
    invoke-static {v0}, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->access$000(Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;)Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$IMoreDataListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$3$1;->this$1:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$3;

    iget-object v1, v1, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$3;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    iget-object v1, v1, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$3$1;->this$1:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$3;

    iget-object v2, v2, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$3;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    iget v2, v2, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->pageNo:I

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$IMoreDataListener;->getMoreData(Landroid/widget/AbsListView;I)V

    .line 199
    return-void
.end method
