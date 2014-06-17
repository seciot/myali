.class final Lcom/alipay/mobile/security/accountmanager/ui/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/g;->a:Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "actionType"

    const-string/jumbo v2, "20000005"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/g;->a:Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->b(Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/g;->a:Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;

    invoke-static {v2}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->a(Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "20000001"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
