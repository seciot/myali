.class final Lcom/alipay/mobile/security/authcenter/ui/regist/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/regist/a;->a:Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/regist/a;->a:Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment;

    invoke-static {v0}, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment;->a(Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment;)Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/regist/a;->a:Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment;

    invoke-static {v0}, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment;->a(Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment;)Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment$a;->a()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "registerSource"

    const-string/jumbo v2, "registerFromLogin"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "registerMobileNum"

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/regist/a;->a:Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment;

    invoke-static {v2}, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment;->b(Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/regist/a;->a:Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment;

    invoke-static {v1}, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment;->c(Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-string/jumbo v2, "20000008"

    const-string/jumbo v3, "20000009"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->printStackTrace()V

    goto :goto_0
.end method
