.class Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity$1$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity$1;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity$1;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity$1$3;->a:Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity$1$3;->a:Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity$1;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity$1;->b:Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity$OnFrozenCancelClickedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity$1$3;->a:Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity$1;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity$1;->b:Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity$OnFrozenCancelClickedListener;

    invoke-interface {v0}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity$OnFrozenCancelClickedListener;->a()V

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
