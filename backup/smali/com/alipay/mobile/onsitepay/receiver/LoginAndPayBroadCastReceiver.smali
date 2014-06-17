.class public Lcom/alipay/mobile/onsitepay/receiver/LoginAndPayBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LoginAndPayBroadCastReceiver.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/alipay/mobile/security/otp/OtpManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 13
    const-string/jumbo v0, "LoginAndPayBroadCastReceiver"

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/receiver/LoginAndPayBroadCastReceiver;->a:Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/receiver/LoginAndPayBroadCastReceiver;->b:Lcom/alipay/mobile/security/otp/OtpManager;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u6536\u5230\u4e86\u5e94\u7528\u7684\u5e7f\u64ad\u7c7b\u578b\uff1a "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/receiver/LoginAndPayBroadCastReceiver;->b:Lcom/alipay/mobile/security/otp/OtpManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/security/otp/OtpManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/otp/OtpManager;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/receiver/LoginAndPayBroadCastReceiver;->b:Lcom/alipay/mobile/security/otp/OtpManager;

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/receiver/LoginAndPayBroadCastReceiver;->b:Lcom/alipay/mobile/security/otp/OtpManager;

    if-eqz v0, :cond_1

    .line 23
    const-string/jumbo v0, "com.alipay.security.login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 24
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/receiver/LoginAndPayBroadCastReceiver;->b:Lcom/alipay/mobile/security/otp/OtpManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/otp/OtpManager;->sendTodoMessage()V

    .line 42
    :cond_1
    :goto_0
    return-void

    .line 28
    :cond_2
    const-string/jumbo v0, "com.alipay.mobile.basebiz.TRADE_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    const-string/jumbo v0, "phonecashier.pay.success"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "phonecashier.pay.success"

    const-string/jumbo v1, "phonecashier.pay.success"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/receiver/LoginAndPayBroadCastReceiver;->b:Lcom/alipay/mobile/security/otp/OtpManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/otp/OtpManager;->initSeed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "SE\u6a21\u5757\u5e7f\u64ad\u5f02\u5e38:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method
