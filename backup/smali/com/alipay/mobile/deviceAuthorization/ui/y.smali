.class final Lcom/alipay/mobile/deviceAuthorization/ui/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/y;->b:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;

    iput-object p2, p0, Lcom/alipay/mobile/deviceAuthorization/ui/y;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/y;->b:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;

    iget-object v1, v1, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-static {v1}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->q(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "logonId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/y;->b:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;

    iget-object v1, v1, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-static {v1}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->r(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-string/jumbo v2, "20000055"

    iget-object v3, p0, Lcom/alipay/mobile/deviceAuthorization/ui/y;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->getMessage()Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/y;->b:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;

    iget-object v1, v1, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u542f\u52a8\u5e94\u7528\u5931\u8d25\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->toast(Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method
