.class Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager$2;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;

    iput-object p2, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager$2;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager$2;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;

    iget-object v1, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager$2;->val$msg:Ljava/lang/String;

    #calls: Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->a(Ljava/lang/String;)Lcom/alipay/mobile/framework/widgetmsg/model/JsonWidgetMsgs;
    invoke-static {v0, v1}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->access$500(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;Ljava/lang/String;)Lcom/alipay/mobile/framework/widgetmsg/model/JsonWidgetMsgs;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager$2;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;

    #getter for: Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->d:Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->access$300(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager$2;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;

    #getter for: Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->e:Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao;
    invoke-static {v1}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->access$600(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;)Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/widgetmsg/model/JsonWidgetMsgs;->getU()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/widgetmsg/model/JsonWidgetMsgs;->getP()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao;->mergeWidgetMsg(Ljava/lang/String;Ljava/util/List;)V

    invoke-static {}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "muserid = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager$2;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;

    #getter for: Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->d:Ljava/lang/String;
    invoke-static {v3}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->access$300(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  u = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/widgetmsg/model/JsonWidgetMsgs;->getU()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager$2;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;

    #getter for: Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->d:Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->access$300(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/widgetmsg/model/JsonWidgetMsgs;->getU()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager$2;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->doWidgetMsgRefresh(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
