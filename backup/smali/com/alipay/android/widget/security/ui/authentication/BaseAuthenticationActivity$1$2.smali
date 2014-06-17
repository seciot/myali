.class Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity$1;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity$1;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity$1$2;->a:Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity$1$2;->a:Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity$1;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity$1;->b:Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity$OnFrozenCancelClickedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity$1$2;->a:Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity$1;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity$1;->b:Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity$OnFrozenCancelClickedListener;

    invoke-interface {v0}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity$OnFrozenCancelClickedListener;->a()V

    :cond_0
    return-void
.end method
