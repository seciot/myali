.class Lcom/alipay/mobile/lib/model/PubBaseFragment$5;
.super Landroid/os/Handler;
.source "PubBaseFragment.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/lib/model/PubBaseFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/lib/model/PubBaseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment$5;->this$0:Lcom/alipay/mobile/lib/model/PubBaseFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment$5;->this$0:Lcom/alipay/mobile/lib/model/PubBaseFragment;

    iget-object v0, v0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->mContext:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment$5;->this$0:Lcom/alipay/mobile/lib/model/PubBaseFragment;

    iget-object v0, v0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->mContext:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment$5;->this$0:Lcom/alipay/mobile/lib/model/PubBaseFragment;

    iget-boolean v0, v0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->isDestory:Z

    if-eqz v0, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment$5;->this$0:Lcom/alipay/mobile/lib/model/PubBaseFragment;

    iget-object v0, v0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->mContext:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->dismissProgressDialog()V

    .line 146
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 148
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/alipay/mobile/lib/model/RequestType;->getTypeByCode(I)Lcom/alipay/mobile/lib/model/RequestType;

    move-result-object v5

    .line 149
    if-eqz v5, :cond_0

    .line 152
    sget-object v0, Lcom/alipay/mobile/lib/model/PubBaseFragment$9;->$SwitchMap$com$alipay$mobile$lib$model$RequestType:[I

    invoke-virtual {v5}, Lcom/alipay/mobile/lib/model/RequestType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 155
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 156
    sget-object v1, Lcom/alipay/mobile/lib/model/RequestType;->REQUEST_BOTTOM_PUBLIC_EVENT_PROCESS_MESSAGE:Lcom/alipay/mobile/lib/model/RequestType;

    if-ne v5, v1, :cond_3

    move v1, v2

    .line 157
    :goto_1
    if-nez v1, :cond_2

    .line 158
    iget-object v4, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment$5;->this$0:Lcom/alipay/mobile/lib/model/PubBaseFragment;

    iput v3, v4, Lcom/alipay/mobile/lib/model/PubBaseFragment;->topRequestStatus:I

    .line 160
    :cond_2
    if-eqz v0, :cond_0

    .line 161
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 162
    :goto_2
    if-eqz v1, :cond_5

    .line 163
    iget-object v3, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment$5;->this$0:Lcom/alipay/mobile/lib/model/PubBaseFragment;

    invoke-static {v3, v2}, Lcom/alipay/mobile/lib/model/PubBaseFragment;->access$000(Lcom/alipay/mobile/lib/model/PubBaseFragment;Z)V

    .line 168
    :goto_3
    if-eqz v2, :cond_0

    .line 169
    iget-object v2, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment$5;->this$0:Lcom/alipay/mobile/lib/model/PubBaseFragment;

    invoke-virtual {v2, v0, v1}, Lcom/alipay/mobile/lib/model/PubBaseFragment;->processEventResponse(Ljava/util/List;Z)V

    goto :goto_0

    :cond_3
    move v1, v3

    .line 156
    goto :goto_1

    :cond_4
    move v2, v3

    .line 161
    goto :goto_2

    .line 165
    :cond_5
    iget-object v3, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment$5;->this$0:Lcom/alipay/mobile/lib/model/PubBaseFragment;

    iget-object v3, v3, Lcom/alipay/mobile/lib/model/PubBaseFragment;->adapter:Lcom/alipay/mobile/lib/model/BaseHomeAdapter;

    invoke-virtual {v3}, Lcom/alipay/mobile/lib/model/BaseHomeAdapter;->clearData()V

    .line 166
    iget-object v3, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment$5;->this$0:Lcom/alipay/mobile/lib/model/PubBaseFragment;

    invoke-static {v3, v0, v2}, Lcom/alipay/mobile/lib/model/PubBaseFragment;->access$100(Lcom/alipay/mobile/lib/model/PubBaseFragment;Ljava/util/List;Z)V

    goto :goto_3

    .line 194
    :pswitch_1
    sget-object v0, Lcom/alipay/mobile/lib/model/RequestType;->REQUEST_TOP_PULL_MESSAGE:Lcom/alipay/mobile/lib/model/RequestType;

    if-ne v5, v0, :cond_d

    move v1, v2

    .line 195
    :goto_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 197
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_e

    :cond_6
    move v4, v2

    .line 198
    :goto_5
    iget-object v6, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment$5;->this$0:Lcom/alipay/mobile/lib/model/PubBaseFragment;

    iget-object v6, v6, Lcom/alipay/mobile/lib/model/PubBaseFragment;->adapter:Lcom/alipay/mobile/lib/model/BaseHomeAdapter;

    if-eqz v6, :cond_8

    if-eqz v1, :cond_8

    .line 199
    if-nez v4, :cond_7

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget v7, p1, Landroid/os/Message;->arg2:I

    if-le v6, v7, :cond_7

    .line 200
    iget-object v6, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment$5;->this$0:Lcom/alipay/mobile/lib/model/PubBaseFragment;

    invoke-static {v6}, Lcom/alipay/mobile/lib/model/PubBaseFragment;->access$200(Lcom/alipay/mobile/lib/model/PubBaseFragment;)V

    .line 202
    :cond_7
    iget-object v6, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment$5;->this$0:Lcom/alipay/mobile/lib/model/PubBaseFragment;

    #getter for: Lcom/alipay/mobile/lib/model/PubBaseFragment;->b:Z
    invoke-static {v6}, Lcom/alipay/mobile/lib/model/PubBaseFragment;->access$300(Lcom/alipay/mobile/lib/model/PubBaseFragment;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 203
    iget-object v6, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment$5;->this$0:Lcom/alipay/mobile/lib/model/PubBaseFragment;

    #setter for: Lcom/alipay/mobile/lib/model/PubBaseFragment;->b:Z
    invoke-static {v6, v3}, Lcom/alipay/mobile/lib/model/PubBaseFragment;->access$302(Lcom/alipay/mobile/lib/model/PubBaseFragment;Z)Z

    .line 205
    iget-object v6, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment$5;->this$0:Lcom/alipay/mobile/lib/model/PubBaseFragment;

    invoke-static {v6}, Lcom/alipay/mobile/lib/model/PubBaseFragment;->access$400(Lcom/alipay/mobile/lib/model/PubBaseFragment;)V

    .line 208
    :cond_8
    if-eqz v1, :cond_a

    .line 209
    iget-object v6, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment$5;->this$0:Lcom/alipay/mobile/lib/model/PubBaseFragment;

    iput v3, v6, Lcom/alipay/mobile/lib/model/PubBaseFragment;->topRequestStatus:I

    .line 210
    iget-object v6, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment$5;->this$0:Lcom/alipay/mobile/lib/model/PubBaseFragment;

    iget-object v6, v6, Lcom/alipay/mobile/lib/model/PubBaseFragment;->listViewOld:Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment$5;->this$0:Lcom/alipay/mobile/lib/model/PubBaseFragment;

    iget-object v6, v6, Lcom/alipay/mobile/lib/model/PubBaseFragment;->listViewOld:Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;

    invoke-virtual {v6}, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->isRefreshing()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 211
    iget-object v6, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment$5;->this$0:Lcom/alipay/mobile/lib/model/PubBaseFragment;

    iget-object v6, v6, Lcom/alipay/mobile/lib/model/PubBaseFragment;->listViewOld:Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;

    invoke-virtual {v6}, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->onRefreshComplete()V

    .line 213
    :cond_9
    iget-object v6, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment$5;->this$0:Lcom/alipay/mobile/lib/model/PubBaseFragment;

    invoke-virtual {v6, v5}, Lcom/alipay/mobile/lib/model/PubBaseFragment;->hideTitleProgressBar(Lcom/alipay/mobile/lib/model/RequestType;)V

    .line 215
    :cond_a
    if-nez v4, :cond_c

    .line 216
    if-nez v1, :cond_f

    iget-object v5, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment$5;->this$0:Lcom/alipay/mobile/lib/model/PubBaseFragment;

    iget v5, v5, Lcom/alipay/mobile/lib/model/PubBaseFragment;->bottomRequestStatus:I

    iget-object v6, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment$5;->this$0:Lcom/alipay/mobile/lib/model/PubBaseFragment;

    iget v6, v6, Lcom/alipay/mobile/lib/model/PubBaseFragment;->clearStatus:I

    if-eq v5, v6, :cond_f

    .line 217
    :goto_6
    if-eqz v2, :cond_b

    .line 218
    iget-object v3, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment$5;->this$0:Lcom/alipay/mobile/lib/model/PubBaseFragment;

    iget-object v5, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment$5;->this$0:Lcom/alipay/mobile/lib/model/PubBaseFragment;

    iget v5, v5, Lcom/alipay/mobile/lib/model/PubBaseFragment;->clearStatus:I

    iput v5, v3, Lcom/alipay/mobile/lib/model/PubBaseFragment;->bottomRequestStatus:I

    .line 220
    :cond_b
    if-nez v2, :cond_c

    .line 221
    iget-object v2, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment$5;->this$0:Lcom/alipay/mobile/lib/model/PubBaseFragment;

    invoke-virtual {v2, v0, v1}, Lcom/alipay/mobile/lib/model/PubBaseFragment;->updateUI(Ljava/util/List;Z)V

    .line 225
    :cond_c
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment$5;->this$0:Lcom/alipay/mobile/lib/model/PubBaseFragment;

    #getter for: Lcom/alipay/mobile/lib/model/PubBaseFragment;->c:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;
    invoke-static {v0}, Lcom/alipay/mobile/lib/model/PubBaseFragment;->access$500(Lcom/alipay/mobile/lib/model/PubBaseFragment;)Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    .line 226
    if-nez v4, :cond_10

    .line 227
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment$5;->this$0:Lcom/alipay/mobile/lib/model/PubBaseFragment;

    #getter for: Lcom/alipay/mobile/lib/model/PubBaseFragment;->c:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;
    invoke-static {v0}, Lcom/alipay/mobile/lib/model/PubBaseFragment;->access$500(Lcom/alipay/mobile/lib/model/PubBaseFragment;)Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->hasLoadMoreList()V

    goto/16 :goto_0

    :cond_d
    move v1, v3

    .line 194
    goto/16 :goto_4

    :cond_e
    move v4, v3

    .line 197
    goto/16 :goto_5

    :cond_f
    move v2, v3

    .line 216
    goto :goto_6

    .line 229
    :cond_10
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment$5;->this$0:Lcom/alipay/mobile/lib/model/PubBaseFragment;

    #getter for: Lcom/alipay/mobile/lib/model/PubBaseFragment;->c:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;
    invoke-static {v0}, Lcom/alipay/mobile/lib/model/PubBaseFragment;->access$500(Lcom/alipay/mobile/lib/model/PubBaseFragment;)Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->hasEndLoadList()V

    goto/16 :goto_0

    .line 235
    :pswitch_2
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment$5;->this$0:Lcom/alipay/mobile/lib/model/PubBaseFragment;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/lib/model/PubBaseFragment;->processErrorResponse(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 240
    :pswitch_3
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment$5;->this$0:Lcom/alipay/mobile/lib/model/PubBaseFragment;

    #getter for: Lcom/alipay/mobile/lib/model/PubBaseFragment;->c:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;
    invoke-static {v0}, Lcom/alipay/mobile/lib/model/PubBaseFragment;->access$500(Lcom/alipay/mobile/lib/model/PubBaseFragment;)Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment$5;->this$0:Lcom/alipay/mobile/lib/model/PubBaseFragment;

    #getter for: Lcom/alipay/mobile/lib/model/PubBaseFragment;->c:Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;
    invoke-static {v0}, Lcom/alipay/mobile/lib/model/PubBaseFragment;->access$500(Lcom/alipay/mobile/lib/model/PubBaseFragment;)Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/ui/component/MoreListItem;->showTimeOutOrFail()V

    goto/16 :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
