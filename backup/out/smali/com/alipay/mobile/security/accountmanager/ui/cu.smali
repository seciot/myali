.class final Lcom/alipay/mobile/security/accountmanager/ui/cu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/cu;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/cu;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;->p(Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/cu;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;->n(Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/cu;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;

    invoke-static {v2}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;->o(Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
