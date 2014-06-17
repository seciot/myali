.class public Lcom/alipay/mobile/security/accountmanager/app/ForgotLoginPwdApp;
.super Lcom/alipay/mobile/framework/app/ActivityApplication;


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public getEntryClassName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getParams()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotLoginPwdApp;->a:Landroid/os/Bundle;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotLoginPwdApp;->a:Landroid/os/Bundle;

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onRestart(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotLoginPwdApp;->a:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/app/ForgotLoginPwdApp;->onStart()V

    return-void
.end method

.method protected onStart()V
    .locals 4

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/app/ForgotLoginPwdApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotLoginPwdApp;->a:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotLoginPwdApp;->a:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    invoke-interface {v0, p0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    return-void
.end method

.method public setParams(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotLoginPwdApp;->a:Landroid/os/Bundle;

    return-void
.end method
