.class final Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/c;->a:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/c;->a:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;

    const-class v2, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityBindPhoneActivity_;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/c;->a:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->f(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/c;->a:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;

    invoke-static {v2}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->e(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    return-void
.end method
