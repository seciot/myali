.class public Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CameraPreviewController"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;

.field private b:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;

.field private c:Z

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;->a:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;->c:Z

    iput-object p2, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;->b:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;

    invoke-virtual {p1}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/authentication/CameraHelper;->d(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;->d:I

    invoke-virtual {p1}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/authentication/CameraHelper;->e(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;->e:I

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "auto"

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;->b:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;

    iget-object v1, v1, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->camera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;->b:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;

    iget-object v1, v1, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;->b:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;->b:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;

    invoke-virtual {v0, p1}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->setCameraFlashMode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;->b:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;

    iget v0, v0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->cameraFacing:I

    return v0
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;->b:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;->b:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->startPreview()V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;->b:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;->b:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->stopPreview()V

    :cond_0
    return-void
.end method

.method public final f()Z
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;->b:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;

    iget v0, v0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->cameraId:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;->b:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->attachCamera(I)Z

    move-result v0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;->b:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;

    iget-boolean v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;->c:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;->d:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;->e:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;->e:I

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;->e:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;->d:I

    goto :goto_0
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;->b:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;->b:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->detachCamera()V

    :cond_0
    return-void
.end method

.method public final h()I
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, -0x1

    iget v3, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;->e:I

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;->d:I

    if-ltz v3, :cond_0

    move v3, v1

    :goto_0
    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;->a:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;

    iget v3, v3, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->cameraId:I

    iget v4, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;->d:I

    if-ne v3, v4, :cond_1

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;->b:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;

    iget v2, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;->e:I

    invoke-virtual {v1, v2}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->switchToCamera(I)Z

    :goto_1
    return v0

    :cond_0
    move v3, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;->a:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;

    iget v0, v0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->cameraId:I

    iget v3, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;->e:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;->b:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;

    iget v2, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;->d:I

    invoke-virtual {v0, v2}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->switchToCamera(I)Z

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_1
.end method
