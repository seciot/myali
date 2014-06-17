.class public Lcom/alipay/mobile/security/authcenter/androidaccountmanager/AlipayAuthenticationService;
.super Landroid/app/Service;


# instance fields
.field private a:Lcom/alipay/mobile/security/authcenter/androidaccountmanager/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    const-string/jumbo v0, "AuthenticationService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AuthenticationService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getBinder()...  returning the AccountAuthenticator binder for intent "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/androidaccountmanager/AlipayAuthenticationService;->a:Lcom/alipay/mobile/security/authcenter/androidaccountmanager/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/authcenter/androidaccountmanager/a;->getIBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    const-string/jumbo v0, "AuthenticationService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AuthenticationService"

    const-string/jumbo v1, "SampleSyncAdapter Authentication Service started."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/alipay/mobile/security/authcenter/androidaccountmanager/a;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/authcenter/androidaccountmanager/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/androidaccountmanager/AlipayAuthenticationService;->a:Lcom/alipay/mobile/security/authcenter/androidaccountmanager/a;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string/jumbo v0, "AuthenticationService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AuthenticationService"

    const-string/jumbo v1, "SampleSyncAdapter Authentication Service stopped."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
