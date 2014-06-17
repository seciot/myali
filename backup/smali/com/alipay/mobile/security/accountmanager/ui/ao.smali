.class final Lcom/alipay/mobile/security/accountmanager/ui/ao;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/accountmanager/ui/an;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/accountmanager/ui/an;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ao;->a:Lcom/alipay/mobile/security/accountmanager/ui/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string/jumbo v0, "5310"

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ao;->a:Lcom/alipay/mobile/security/accountmanager/ui/an;

    iget-object v1, v1, Lcom/alipay/mobile/security/accountmanager/ui/an;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "msp"

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ao;->a:Lcom/alipay/mobile/security/accountmanager/ui/an;

    iget-object v1, v1, Lcom/alipay/mobile/security/accountmanager/ui/an;->b:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->x(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ao;->a:Lcom/alipay/mobile/security/accountmanager/ui/an;

    iget-object v0, v0, Lcom/alipay/mobile/security/accountmanager/ui/an;->b:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->y(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->exit()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "alipay"

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ao;->a:Lcom/alipay/mobile/security/accountmanager/ui/an;

    iget-object v1, v1, Lcom/alipay/mobile/security/accountmanager/ui/an;->b:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->x(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ao;->a:Lcom/alipay/mobile/security/accountmanager/ui/an;

    iget-object v0, v0, Lcom/alipay/mobile/security/accountmanager/ui/an;->b:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->A(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v1, ""

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/ui/ao;->a:Lcom/alipay/mobile/security/accountmanager/ui/an;

    iget-object v3, v3, Lcom/alipay/mobile/security/accountmanager/ui/an;->b:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    invoke-static {v3}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->z(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ao;->a:Lcom/alipay/mobile/security/accountmanager/ui/an;

    iget-object v0, v0, Lcom/alipay/mobile/security/accountmanager/ui/an;->b:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ao;->a:Lcom/alipay/mobile/security/accountmanager/ui/an;

    iget-object v1, v1, Lcom/alipay/mobile/security/accountmanager/ui/an;->b:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->u(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)Ljava/lang/String;

    move-result-object v1

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->a(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ao;->a:Lcom/alipay/mobile/security/accountmanager/ui/an;

    iget-object v1, v0, Lcom/alipay/mobile/security/accountmanager/ui/an;->b:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ao;->a:Lcom/alipay/mobile/security/accountmanager/ui/an;

    iget-object v0, v0, Lcom/alipay/mobile/security/accountmanager/ui/an;->b:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->u(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ao;->a:Lcom/alipay/mobile/security/accountmanager/ui/an;

    iget-object v0, v0, Lcom/alipay/mobile/security/accountmanager/ui/an;->b:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->B(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)Ljava/lang/String;

    move-result-object v3

    move v5, v4

    move v6, v4

    invoke-static/range {v1 .. v6}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->a(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    goto :goto_0
.end method
