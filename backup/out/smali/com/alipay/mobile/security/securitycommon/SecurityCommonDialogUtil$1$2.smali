.class Lcom/alipay/mobile/security/securitycommon/SecurityCommonDialogUtil$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/securitycommon/SecurityCommonDialogUtil$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/securitycommon/SecurityCommonDialogUtil$1;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/securitycommon/SecurityCommonDialogUtil$1$2;->a:Lcom/alipay/mobile/security/securitycommon/SecurityCommonDialogUtil$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/SecurityCommonDialogUtil$1$2;->a:Lcom/alipay/mobile/security/securitycommon/SecurityCommonDialogUtil$1;

    iget-object v0, v0, Lcom/alipay/mobile/security/securitycommon/SecurityCommonDialogUtil$1;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/SecurityCommonDialogUtil$1$2;->a:Lcom/alipay/mobile/security/securitycommon/SecurityCommonDialogUtil$1;

    iget-object v0, v0, Lcom/alipay/mobile/security/securitycommon/SecurityCommonDialogUtil$1;->c:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/securitycommon/SecurityCommonDialogUtil$1$2;->a:Lcom/alipay/mobile/security/securitycommon/SecurityCommonDialogUtil$1;

    iget-object v1, v1, Lcom/alipay/mobile/security/securitycommon/SecurityCommonDialogUtil$1;->c:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/securitycommon/SecurityCommonDialogUtil$1$2;->a:Lcom/alipay/mobile/security/securitycommon/SecurityCommonDialogUtil$1;

    iget-object v2, v2, Lcom/alipay/mobile/security/securitycommon/SecurityCommonDialogUtil$1;->c:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
