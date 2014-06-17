.class Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$5;->a:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$5;->a:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->e(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$5$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$5$1;-><init>(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$5;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->takePicture(Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$TakePictureCallback;)V

    return-void
.end method
