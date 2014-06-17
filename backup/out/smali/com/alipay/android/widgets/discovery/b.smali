.class final Lcom/alipay/android/widgets/discovery/b;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;


# direct methods
.method constructor <init>(Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widgets/discovery/b;->a:Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/widgets/discovery/b;->a:Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;

    #calls: Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->getTag()Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->access$100(Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;)Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/widgets/discovery/b;->a:Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;

    #calls: Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->getTag()Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->access$100(Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;)Ljava/lang/String;

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.alipay.security.login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "logonId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/alipay/android/widgets/discovery/b;->a:Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;

    #calls: Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->getTag()Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->access$100(Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;)Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{[info=registerLoginMsgService],[msg=\u6d88\u606f\u63a5\u6536\u4e3a\u6210\u529f\u767b\u9646,logonId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {p1}, Lcom/alipay/mobile/discoverywidget/ui/a/d;->a(Landroid/content/Context;)Lcom/alipay/mobile/discoverywidget/ui/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widgets/discovery/b;->a:Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;

    #getter for: Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->microApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;
    invoke-static {v1}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->access$000(Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/discoverywidget/ui/a/d;->a(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    iget-object v1, p0, Lcom/alipay/android/widgets/discovery/b;->a:Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;

    #getter for: Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->tabFlagText:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;
    invoke-static {v1}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->access$200(Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;)Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/discoverywidget/ui/a/d;->a:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    iget-object v1, p0, Lcom/alipay/android/widgets/discovery/b;->a:Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;

    #calls: Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->buildHomeReq()Lcom/alipay/kabaoprod/biz/mwallet/pass/request/HomePageWidgetReq;
    invoke-static {v1}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->access$300(Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;)Lcom/alipay/kabaoprod/biz/mwallet/pass/request/HomePageWidgetReq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/discoverywidget/ui/a/d;->c(Lcom/alipay/kabaoprod/biz/mwallet/pass/request/HomePageWidgetReq;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/widgets/discovery/b;->a:Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;

    #calls: Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->getTag()Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->access$100(Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/android/widgets/discovery/b;->a:Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;

    #calls: Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->getTag()Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->access$100(Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;)Ljava/lang/String;

    goto :goto_0
.end method
