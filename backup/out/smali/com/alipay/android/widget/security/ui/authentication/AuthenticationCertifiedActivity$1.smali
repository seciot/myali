.class Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity$OnFrozenCancelClickedListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity$1;->a:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity$1;->a:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity$1;->a:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->a(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;)Z

    move-result v0

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->a(Z)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity$1;->a:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->d(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity$1;->a:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->b(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity$1;->a:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;

    invoke-static {v2}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->c(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
