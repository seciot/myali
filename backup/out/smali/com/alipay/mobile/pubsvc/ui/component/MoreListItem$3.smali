.class Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$3;
.super Ljava/lang/Object;
.source "MoreListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$3;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 187
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$3;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    const/4 v1, 0x1

    iput v1, v0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->loadState:I

    .line 188
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$3;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    iget-object v0, v0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mTvLoading:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$3;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    iget-object v0, v0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mPbar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$3;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    iget-object v0, v0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mTvLoading:Landroid/widget/TextView;

    sget v1, Lcom/alipay/mobile/publicsvc/common/R$string;->loading_dot:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 191
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$3;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    iget-object v0, v0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mTvLoading:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$3;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->startTimeOutChecking()V

    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$3;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    #getter for: Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->c:Landroid/os/Handler;
    invoke-static {v0}, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->access$300(Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$3$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$3$1;-><init>(Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 202
    return-void
.end method
