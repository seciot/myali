.class public Lcom/alipay/mobile/security/securitycommon/service/LocationInfoReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private a:Landroid/app/ActivityManager;

.field private b:Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/securitycommon/service/LocationInfoReceiver;)Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/service/LocationInfoReceiver;->b:Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/service/LocationInfoReceiver;->a:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/alipay/mobile/security/securitycommon/service/LocationInfoReceiver;->a:Landroid/app/ActivityManager;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/service/LocationInfoReceiver;->b:Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;

    iput-object v0, p0, Lcom/alipay/mobile/security/securitycommon/service/LocationInfoReceiver;->b:Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;

    :cond_1
    const-string/jumbo v0, "com.alipay.mobile.framework.ACTIVITY_RESUME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{[info=onReceive], [msg=enventString:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " , \u7528\u6237\u56de\u5230\u5e94\u7528\u91cd\u65b0\u83b7\u53d6\u672c\u5730\u4fe1\u606f]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/security/securitycommon/service/LocationInfoReceiver$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/securitycommon/service/LocationInfoReceiver$1;-><init>(Lcom/alipay/mobile/security/securitycommon/service/LocationInfoReceiver;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    return-void
.end method
