.class Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;

.field final synthetic val$widgetId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager$3;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;

    iput-object p2, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager$3;->val$widgetId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager$3;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;

    #getter for: Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->d:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->access$300(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager$3;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;

    #getter for: Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->e:Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao;
    invoke-static {v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->access$600(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;)Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager$3;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;

    #getter for: Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->d:Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->access$300(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager$3;->val$widgetId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao;->dropWidgetMsg(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager$3;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->doWidgetMsgRefresh(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
