.class Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# instance fields
.field final synthetic a:Landroid/hardware/Camera$PictureCallback;

.field final synthetic b:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;Landroid/hardware/Camera$PictureCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$2;->b:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;

    iput-object p2, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$2;->a:Landroid/hardware/Camera$PictureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$2;->b:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;

    #getter for: Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->e:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->access$000(Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    new-instance v0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$2$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$2$1;-><init>(Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$2;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$2;->a:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {p2, v0, v3, v1}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$2;->b:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;

    #getter for: Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->e:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->access$000(Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$2;->b:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;

    #getter for: Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->e:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->access$000(Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    new-instance v0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$2$2;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$2$2;-><init>(Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$2;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$2;->a:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {p2, v0, v3, v1}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    goto :goto_0
.end method
