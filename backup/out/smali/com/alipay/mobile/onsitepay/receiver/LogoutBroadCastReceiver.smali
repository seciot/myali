.class public Lcom/alipay/mobile/onsitepay/receiver/LogoutBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LogoutBroadCastReceiver.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/alipay/mobile/security/otp/OtpManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 15
    const-string/jumbo v0, "LogoutBroadCastReceiver"

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/receiver/LogoutBroadCastReceiver;->a:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/receiver/LogoutBroadCastReceiver;->b:Lcom/alipay/mobile/security/otp/OtpManager;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u6536\u5230\u4e86\u5e94\u7528\u7684\u5e7f\u64ad\u7c7b\u578b\uff1a "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/receiver/LogoutBroadCastReceiver;->b:Lcom/alipay/mobile/security/otp/OtpManager;

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

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/receiver/LogoutBroadCastReceiver;->b:Lcom/alipay/mobile/security/otp/OtpManager;

    .line 26
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "logoutUserId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/receiver/LogoutBroadCastReceiver;->b:Lcom/alipay/mobile/security/otp/OtpManager;

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 29
    const-string/jumbo v2, "com.alipay.security.logout"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/receiver/LogoutBroadCastReceiver;->b:Lcom/alipay/mobile/security/otp/OtpManager;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/security/otp/OtpManager;->deleteIndex(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :cond_1
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u5b89\u5168\u9000\u51fa\u6a21\u5757\u5e7f\u64ad\u5f02\u5e38:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method
