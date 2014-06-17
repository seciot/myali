.class final Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/l;->a:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/l;->a:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;

    const-class v2, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/ShareSavePicThireBtnActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/l;->a:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->c(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/l;->a:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;

    invoke-static {v2}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->b(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v2

    const/16 v3, 0x1112

    invoke-interface {v1, v2, v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivityForResult(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;I)V

    return-void
.end method
