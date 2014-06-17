.class final Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/g;->b:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;

    iput-object p2, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/g;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/g;->b:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;

    const-class v2, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAvatarViewActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "imageUrl"

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/g;->b:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->t(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/g;->b:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;

    invoke-static {v2}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->s(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    return-void
.end method
