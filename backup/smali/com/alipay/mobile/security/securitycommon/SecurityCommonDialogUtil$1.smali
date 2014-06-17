.class final Lcom/alipay/mobile/security/securitycommon/SecurityCommonDialogUtil$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/Boolean;

.field final synthetic c:Lcom/alipay/mobile/framework/app/ActivityApplication;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/Boolean;Lcom/alipay/mobile/framework/app/ActivityApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/securitycommon/SecurityCommonDialogUtil$1;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/alipay/mobile/security/securitycommon/SecurityCommonDialogUtil$1;->b:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/alipay/mobile/security/securitycommon/SecurityCommonDialogUtil$1;->c:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/alipay/mobile/security/securitycommon/SecurityCommonDialogUtil$1;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->cE:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->cF:I

    new-instance v2, Lcom/alipay/mobile/security/securitycommon/SecurityCommonDialogUtil$1$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/security/securitycommon/SecurityCommonDialogUtil$1$1;-><init>(Lcom/alipay/mobile/security/securitycommon/SecurityCommonDialogUtil$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->aJ:I

    new-instance v2, Lcom/alipay/mobile/security/securitycommon/SecurityCommonDialogUtil$1$2;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/security/securitycommon/SecurityCommonDialogUtil$1$2;-><init>(Lcom/alipay/mobile/security/securitycommon/SecurityCommonDialogUtil$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/alipay/mobile/security/securitycommon/SecurityCommonDialogUtil$1$3;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/securitycommon/SecurityCommonDialogUtil$1$3;-><init>(Lcom/alipay/mobile/security/securitycommon/SecurityCommonDialogUtil$1;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
