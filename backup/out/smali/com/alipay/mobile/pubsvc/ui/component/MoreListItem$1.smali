.class Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$1;
.super Landroid/os/Handler;
.source "MoreListItem.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$1;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 111
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$1;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    #getter for: Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->b:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$IMoreDataListener;
    invoke-static {v0}, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->access$000(Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;)Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$IMoreDataListener;

    move-result-object v0

    if-nez v0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 118
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$1;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    iget-object v0, v0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mFooterView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$1;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    iget-object v0, v0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mTvLoading:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$1;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    iget-object v0, v0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mTvLoading:Landroid/widget/TextView;

    const-string/jumbo v1, "\u70b9\u51fb\u52a0\u8f7d\u66f4\u591a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$1;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    iget-object v0, v0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mPbar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$1;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    iget-object v0, v0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$1;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    iget-object v0, v0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mTvLoading:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$1;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    #getter for: Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->e:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->access$100(Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 128
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$1;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    iget-object v0, v0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mFooterView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$1;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    iget-object v0, v0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mPbar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$1;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    iget-object v0, v0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mTvLoading:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$1;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    iget-object v0, v0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mTvLoading:Landroid/widget/TextView;

    const-string/jumbo v1, "\u6682\u65e0\u6570\u636e"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$1;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    iget-object v0, v0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mTvLoading:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem$1;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    iget-object v0, v0, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
