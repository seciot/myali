.class final Lcom/alipay/mobile/security/accountmanager/ui/au;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/au;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string/jumbo v0, "msp"

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/au;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->x(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/au;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->G(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->exit()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "alipay"

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/au;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->x(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/au;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->I(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v1, ""

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/ui/au;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    invoke-static {v3}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->H(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/au;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/au;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->u(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)Ljava/lang/String;

    move-result-object v1

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->a(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    goto :goto_0
.end method
