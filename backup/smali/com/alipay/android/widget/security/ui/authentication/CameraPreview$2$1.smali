.class Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$2;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$2;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$2$1;->a:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$2$1;->a:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$2;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$2;->b:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    return-void
.end method
