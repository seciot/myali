.class Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$2;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$2;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$2$1;->a:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$2$1;->a:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$2;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$2;->a:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->finish()V

    return-void
.end method
