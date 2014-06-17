.class Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;

    invoke-static {v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->access$000(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;

    #getter for: Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->c:Lcom/alipay/mobileapp/biz/rpc/widgetmsg/UserWidgetMsgService;
    invoke-static {v1}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->access$100(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;)Lcom/alipay/mobileapp/biz/rpc/widgetmsg/UserWidgetMsgService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/mobileapp/biz/rpc/widgetmsg/UserWidgetMsgService;->ackAndGetWidgetMsgs(Ljava/util/List;)Lcom/alipay/mobileapp/biz/rpc/widgetmsg/model/UserWidgetResult;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->access$200()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "getWidgetMsgs"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/alipay/mobileapp/biz/rpc/widgetmsg/model/UserWidgetResult;->isSuccess()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobileapp/biz/rpc/widgetmsg/model/UserWidgetResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;

    #getter for: Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->d:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->access$300(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->doWidgetMsgRefresh(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;

    #getter for: Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->i:Landroid/os/Handler;
    invoke-static {v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->access$400(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "fail"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method
