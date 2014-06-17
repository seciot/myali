.class Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity_$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;

.field final synthetic b:Z

.field final synthetic c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity_;Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity_$1;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity_;

    iput-object p2, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity_$1;->a:Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;

    iput-boolean p3, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity_$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity_$1;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity_;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity_$1;->a:Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;

    iget-boolean v2, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity_$1;->b:Z

    invoke-static {v0, v1, v2}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity_;->a(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity_;Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;Z)V

    return-void
.end method
