.class public Lcom/alipay/android/launcher/TabLauncherBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_1

    const-string/jumbo v0, "com.alipay.security.login"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->getInstance()Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->setUserId(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->getInstance()Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->requestUpdateWidgetMsg()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    const-string/jumbo v0, "com.alipay.mobile.framework.widgetmsg.ackClick"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "widgetId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->getInstance()Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->ackClick(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_0

    const-string/jumbo v0, "com.alipay.longlink.TRANSFER_redpoint"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "payload"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->getInstance()Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->updateWidgetMsg(Ljava/lang/String;)V

    goto :goto_0
.end method
