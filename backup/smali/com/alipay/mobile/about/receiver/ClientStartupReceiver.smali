.class public Lcom/alipay/mobile/about/receiver/ClientStartupReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EReceiver;
.end annotation


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alipay/mobile/base/config/ChannelConfig;

.field private c:Lcom/alipay/mobile/base/config/ConfigService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/about/receiver/ClientStartupReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/about/receiver/ClientStartupReceiver;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a()Z
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/base/config/ChannelConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ChannelConfig;

    iput-object v0, p0, Lcom/alipay/mobile/about/receiver/ClientStartupReceiver;->b:Lcom/alipay/mobile/base/config/ChannelConfig;

    iget-object v0, p0, Lcom/alipay/mobile/about/receiver/ClientStartupReceiver;->b:Lcom/alipay/mobile/base/config/ChannelConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/about/receiver/ClientStartupReceiver;->b:Lcom/alipay/mobile/base/config/ChannelConfig;

    const-string/jumbo v1, "openSdkMonitor"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/base/config/ChannelConfig;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    iget-object v1, p0, Lcom/alipay/mobile/about/receiver/ClientStartupReceiver;->b:Lcom/alipay/mobile/base/config/ChannelConfig;

    const-string/jumbo v2, "openSdkMonitor"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/base/config/ChannelConfig;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string/jumbo v0, "com.alipay.mobile.client.STARTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/alipay/mobile/about/receiver/ClientStartupReceiver;->a:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v3, Lcom/alipay/mobile/base/config/ChannelConfig;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ChannelConfig;

    iput-object v0, p0, Lcom/alipay/mobile/about/receiver/ClientStartupReceiver;->b:Lcom/alipay/mobile/base/config/ChannelConfig;

    iget-object v0, p0, Lcom/alipay/mobile/about/receiver/ClientStartupReceiver;->b:Lcom/alipay/mobile/base/config/ChannelConfig;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/about/receiver/ClientStartupReceiver;->b:Lcom/alipay/mobile/base/config/ChannelConfig;

    const-string/jumbo v3, "hasFeedback"

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/base/config/ChannelConfig;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "true"

    iget-object v3, p0, Lcom/alipay/mobile/about/receiver/ClientStartupReceiver;->b:Lcom/alipay/mobile/base/config/ChannelConfig;

    const-string/jumbo v4, "hasFeedback"

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/base/config/ChannelConfig;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/about/receiver/ClientStartupReceiver;->a:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/alipay/mobile/about/service/FloatWindowService;

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/about/receiver/ClientStartupReceiver;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    sput-boolean v1, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->actionSwitch:Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    sput-boolean v2, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->actionSwitch:Z

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "com.alipay.security.login"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/about/receiver/ClientStartupReceiver;->a:Ljava/lang/String;

    const-string/jumbo v0, "userId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "LOG_SWITCH"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v4, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    iput-object v0, p0, Lcom/alipay/mobile/about/receiver/ClientStartupReceiver;->c:Lcom/alipay/mobile/base/config/ConfigService;

    iget-object v0, p0, Lcom/alipay/mobile/about/receiver/ClientStartupReceiver;->c:Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "key: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string/jumbo v3, "true"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sput-boolean v1, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->actionSwitch:Z

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/alipay/mobile/about/receiver/ClientStartupReceiver;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    sput-boolean v1, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->actionSwitch:Z

    goto :goto_1

    :cond_6
    sput-boolean v2, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->actionSwitch:Z

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/alipay/mobile/about/receiver/ClientStartupReceiver;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    sput-boolean v1, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->actionSwitch:Z

    goto/16 :goto_1

    :cond_8
    sput-boolean v2, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->actionSwitch:Z

    goto/16 :goto_1
.end method
