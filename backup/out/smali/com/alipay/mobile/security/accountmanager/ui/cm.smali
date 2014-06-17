.class final Lcom/alipay/mobile/security/accountmanager/ui/cm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/cm;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/cm;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->b(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/cm;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->b(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/cm;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->b(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/cm;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->dismissProgressDialog()V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/cm;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->e(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/cm;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->c(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/cm;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;

    invoke-static {v2}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->d(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/cm;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->f(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/cm;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->f(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/cm;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->f(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/cm;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->dismissProgressDialog()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/cm;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->g(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/cm;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->g(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/cm;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->g(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/cm;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->dismissProgressDialog()V

    goto :goto_0
.end method
