.class public Lcom/alipay/mobile/rome/longlinkservice/msg/LongLinkeMsgReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-class v0, Lcom/alipay/mobile/rome/longlinkservice/msg/LongLinkeMsgReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/rome/longlinkservice/msg/LongLinkeMsgReceiver;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    iget-object v0, p0, Lcom/alipay/mobile/rome/longlinkservice/msg/LongLinkeMsgReceiver;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onReceive: actionType = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    const-string/jumbo v0, "com.alipay.security.login"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/rome/longlinkservice/msg/LongLinkeMsgReceiver;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onReceive: login getUserId="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/longlink/LongLinkServiceManager;

    move-result-object v3

    new-instance v0, Lcom/alipay/mobile/rome/longlinkservice/service/a;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/rome/longlinkservice/service/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->registerCommonFunc(Lcom/alipay/mobile/longlink/PacketHanlder;)V

    iget-object v0, p0, Lcom/alipay/mobile/rome/longlinkservice/msg/LongLinkeMsgReceiver;->a:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/rome/longlinkservice/msg/a;->a()Lcom/alipay/mobile/rome/longlinkservice/msg/a;

    invoke-static {p1}, Lcom/alipay/mobile/rome/longlinkservice/msg/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "content://com.alipay.setting/PushServerUrl"

    const-string/jumbo v1, "mobilepmgw.alipay.com"

    invoke-static {p1, v0, v1}, Lcom/alipay/mobile/rome/longlinkservice/msg/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p1}, Lcom/alipay/mobile/rome/longlinkservice/msg/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "content://com.alipay.setting/PushPort"

    const-string/jumbo v4, "443"

    invoke-static {p1, v1, v4}, Lcom/alipay/mobile/rome/longlinkservice/msg/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {p1}, Lcom/alipay/mobile/rome/longlinkservice/msg/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "content://com.alipay.setting/PushUseSsl"

    const-string/jumbo v5, "1"

    invoke-static {p1, v1, v5}, Lcom/alipay/mobile/rome/longlinkservice/msg/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v3, v0, v4, v1}, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->setLinkAddr(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/rome/longlinkservice/msg/LongLinkeMsgReceiver;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "LongLinkServiceManager: setLinkAddr test_host:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, ", test_port:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ", test_ssl:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLoginTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v1, v2}, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->setAppUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_3
    return-void

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/rome/longlinkservice/msg/LongLinkeMsgReceiver;->a:Ljava/lang/String;

    goto :goto_3

    :cond_3
    const-string/jumbo v0, "mobilepmgw.alipay.com"

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "443"

    goto :goto_1

    :cond_5
    const-string/jumbo v1, "1"

    goto :goto_2

    :cond_6
    const-string/jumbo v0, "com.alipay.security.cleanAccount"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "userId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/rome/longlinkservice/msg/LongLinkeMsgReceiver;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onReceive: clear userId="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/longlink/LongLinkServiceManager;

    move-result-object v3

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/alipay/mobile/rome/longlinkservice/msg/LongLinkeMsgReceiver;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onReceive: curUserId="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-virtual {v3, v0, v1, v2}, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->setAppUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/rome/longlinkservice/msg/LongLinkeMsgReceiver;->a:Ljava/lang/String;

    goto/16 :goto_3

    :cond_8
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-virtual {v3, v0, v1, v2}, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->setAppUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_9
    const-string/jumbo v0, "com.alipay.security.logout"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "com.alipay.security.startlogin"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    invoke-static {v1}, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/longlink/LongLinkServiceManager;

    move-result-object v0

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->setAppUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_b
    const-string/jumbo v0, "com.alipay.mobile.framework.ACTIVITY_START"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {v1}, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/longlink/LongLinkServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->startLink()V

    goto/16 :goto_3

    :cond_c
    const-string/jumbo v0, "com.alipay.mobile.framework.USERLEAVEHINT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {v1}, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/longlink/LongLinkServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->stopLink()V

    goto/16 :goto_3

    :cond_d
    const-string/jumbo v0, "com.alipay.longlink.UPLINK"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "appId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "payload"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/rome/longlinkservice/msg/LongLinkeMsgReceiver;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onReceive: uplink appId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", appData="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_e

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x1000

    if-ge v3, v4, :cond_e

    invoke-static {v1}, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/longlink/LongLinkServiceManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->sendPacketUplink(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_e
    iget-object v0, p0, Lcom/alipay/mobile/rome/longlinkservice/msg/LongLinkeMsgReceiver;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onReceive: uplink appdata warning length="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_3
.end method
