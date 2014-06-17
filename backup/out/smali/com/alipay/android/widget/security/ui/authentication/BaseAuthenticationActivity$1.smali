.class Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity$OnFrozenCancelClickedListener;

.field final synthetic c:Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity;Landroid/content/Context;Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity$OnFrozenCancelClickedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity$1;->c:Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity;

    iput-object p2, p0, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity$1;->b:Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity$OnFrozenCancelClickedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity$1;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->cE:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->cF:I

    new-instance v2, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity$1$1;

    invoke-direct {v2, p0}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity$1$1;-><init>(Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->aJ:I

    new-instance v2, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity$1$2;

    invoke-direct {v2, p0}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity$1$2;-><init>(Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity$1$3;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity$1$3;-><init>(Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
