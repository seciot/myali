.class Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$TakePictureCallback;

.field final synthetic b:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$TakePictureCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$1;->b:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;

    iput-object p2, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$1;->a:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$TakePictureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$1;->b:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->stopPreview()V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$1;->b:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->getWidth()I

    move-result v1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$1;->b:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$1;->b:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;

    invoke-virtual {v2}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->isCameraWHSwitched()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$1;->b:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->getHeight()I

    move-result v1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$1;->b:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->getWidth()I

    move-result v0

    :cond_0
    invoke-static {p1, v1, v0}, Lcom/alipay/mobile/security/securitycommon/Utilz;->a([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$1;->b:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;

    invoke-virtual {v1}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->isCameraRotated()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$1;->b:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;

    iget v1, v1, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->cameraId:I

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/authentication/CameraHelper;->b(I)I

    move-result v1

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$1;->b:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;

    iget v2, v2, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->cameraFacing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_2

    invoke-static {}, Lcom/alipay/android/widget/security/ui/authentication/CameraHelper;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    const/high16 v1, 0x4387

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/securitycommon/Utilz;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$1;->a:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$TakePictureCallback;

    invoke-interface {v1, v0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$TakePictureCallback;->a(Landroid/graphics/Bitmap;)V

    :goto_1
    return-void

    :cond_2
    invoke-static {}, Lcom/alipay/android/widget/security/ui/authentication/CameraHelper;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/securitycommon/Utilz;->b(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_3
    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/securitycommon/Utilz;->c(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_4
    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/securitycommon/Utilz;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$1;->a:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$TakePictureCallback;

    invoke-interface {v0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$TakePictureCallback;->a()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$1;->b:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->startPreview()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$1;->a:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$TakePictureCallback;

    invoke-interface {v0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$TakePictureCallback;->a()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$1;->b:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->startPreview()V

    goto :goto_1
.end method
