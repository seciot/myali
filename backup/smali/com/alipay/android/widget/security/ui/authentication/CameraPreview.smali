.class public Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;,
        Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraCallback;,
        Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$TakePictureCallback;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field protected camera:Landroid/hardware/Camera;

.field protected cameraDisplayRotation:I

.field protected cameraFacing:I

.field protected cameraId:I

.field private d:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraCallback;

.field private e:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected isPreviewRunning:Z

.field protected pictureSize:Landroid/hardware/Camera$Size;

.field protected previewController:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;

.field protected previewSize:Landroid/hardware/Camera$Size;

.field protected supportedPictureSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation
.end field

.field protected supportedPreviewSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation
.end field

.field protected surfaceHolder:Landroid/view/SurfaceHolder;

.field protected surfaceView:Landroid/view/SurfaceView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "CameraPreview"

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->a:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->isPreviewRunning:Z

    iput v2, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->cameraId:I

    iput v2, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->cameraFacing:I

    iput-boolean v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->b:Z

    iput-boolean v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->c:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string/jumbo v0, "CameraPreview"

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->a:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->isPreviewRunning:Z

    iput v2, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->cameraId:I

    iput v2, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->cameraFacing:I

    iput-boolean v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->b:Z

    iput-boolean v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->c:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    new-instance v0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;

    invoke-direct {v0, p0, p0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;-><init>(Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->previewController:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;

    new-instance v0, Landroid/view/SurfaceView;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->surfaceView:Landroid/view/SurfaceView;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->surfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->surfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    return-void
.end method

.method private static a(Landroid/hardware/Camera$Parameters;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "auto"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private b()V
    .locals 2

    iget-boolean v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->preparePreview(Landroid/view/SurfaceHolder;)V

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->determineCameraSize(II)V

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->startPreview()V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->camera:Landroid/hardware/Camera;

    new-instance v1, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$4;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$4;-><init>(Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    return-void
.end method


# virtual methods
.method protected attachCamera(I)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->validateAttachCamera(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->cameraId:I

    if-eq v0, p1, :cond_1

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->detachCamera()V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "attachCamera "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {p1}, Lcom/alipay/android/widget/security/ui/authentication/CameraHelper;->a(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->camera:Landroid/hardware/Camera;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_3

    iput p1, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->cameraId:I

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->cameraId:I

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->camera:Landroid/hardware/Camera;

    invoke-static {v0, v1, v2}, Lcom/alipay/android/widget/security/ui/authentication/CameraHelper;->a(Landroid/content/Context;ILandroid/hardware/Camera;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->cameraDisplayRotation:I

    iget v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->cameraId:I

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/authentication/CameraHelper;->c(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->cameraFacing:I

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->supportedPreviewSizes:Ljava/util/List;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->supportedPictureSizes:Ljava/util/List;

    :cond_2
    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->b()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "open camera "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->cameraId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected detachCamera()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "detachCamera: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->cameraId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->stopPreview()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->camera:Landroid/hardware/Camera;

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->cameraDisplayRotation:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->cameraFacing:I

    return-void
.end method

.method protected determineCameraSize(II)V
    .locals 4

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->isCameraWHSwitched()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->supportedPreviewSizes:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->supportedPreviewSizes:Ljava/util/List;

    invoke-virtual {p0, v0, p2, p1}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->getOptimalSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->previewSize:Landroid/hardware/Camera$Size;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->supportedPictureSizes:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->supportedPictureSizes:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->previewSize:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->previewSize:Landroid/hardware/Camera$Size;

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->getOptimalSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->pictureSize:Landroid/hardware/Camera$Size;

    :cond_0
    return-void

    :cond_1
    move v3, p2

    move p2, p1

    move p1, v3

    goto :goto_0
.end method

.method public getCallback()Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraCallback;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->d:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraCallback;

    return-object v0
.end method

.method protected getOptimalSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;II)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    if-nez p1, :cond_1

    const/4 v4, 0x0

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    move/from16 v0, p2

    int-to-double v1, v0

    move/from16 v0, p3

    int-to-double v3, v0

    div-double v5, v1, v3

    const/4 v4, 0x0

    const-wide v2, 0x7fefffffffffffffL

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    iget v8, v1, Landroid/hardware/Camera$Size;->width:I

    int-to-double v8, v8

    iget v10, v1, Landroid/hardware/Camera$Size;->height:I

    int-to-double v10, v10

    div-double/2addr v8, v10

    sub-double/2addr v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3f50624dd2f1a9fcL

    cmpl-double v8, v8, v10

    if-gtz v8, :cond_2

    iget v8, v1, Landroid/hardware/Camera$Size;->height:I

    sub-int v8, v8, p3

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-double v8, v8

    const-wide v10, 0x4072c00000000000L

    cmpl-double v8, v8, v10

    if-gtz v8, :cond_2

    iget v8, v1, Landroid/hardware/Camera$Size;->height:I

    sub-int v8, v8, p3

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-double v8, v8

    cmpg-double v8, v8, v2

    if-gez v8, :cond_8

    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    sub-int v2, v2, p3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-double v2, v2

    move-wide v12, v2

    move-object v3, v1

    move-wide v1, v12

    :goto_2
    move-object v4, v3

    move-wide v12, v1

    move-wide v2, v12

    goto :goto_1

    :cond_3
    if-nez v4, :cond_5

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    iget v8, v1, Landroid/hardware/Camera$Size;->width:I

    int-to-double v8, v8

    iget v10, v1, Landroid/hardware/Camera$Size;->height:I

    int-to-double v10, v10

    div-double/2addr v8, v10

    sub-double/2addr v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3fc999999999999aL

    cmpl-double v8, v8, v10

    if-gtz v8, :cond_4

    iget v8, v1, Landroid/hardware/Camera$Size;->height:I

    sub-int v8, v8, p3

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-double v8, v8

    const-wide v10, 0x4072c00000000000L

    cmpl-double v8, v8, v10

    if-gtz v8, :cond_4

    iget v8, v1, Landroid/hardware/Camera$Size;->height:I

    sub-int v8, v8, p3

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-double v8, v8

    cmpg-double v8, v8, v2

    if-gez v8, :cond_4

    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    sub-int v2, v2, p3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-double v2, v2

    move-object v4, v1

    goto :goto_3

    :cond_5
    move-object v3, v4

    if-nez v3, :cond_7

    const-wide v1, 0x7fefffffffffffffL

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v4, v3

    move-wide v12, v1

    move-wide v2, v12

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    iget v6, v1, Landroid/hardware/Camera$Size;->height:I

    sub-int v6, v6, p3

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-double v6, v6

    cmpg-double v6, v6, v2

    if-gez v6, :cond_6

    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    sub-int v2, v2, p3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-double v2, v2

    move-wide v12, v2

    move-object v3, v1

    move-wide v1, v12

    :goto_5
    move-object v4, v3

    move-wide v12, v1

    move-wide v2, v12

    goto :goto_4

    :cond_6
    move-wide v12, v2

    move-wide v1, v12

    move-object v3, v4

    goto :goto_5

    :cond_7
    move-object v4, v3

    goto/16 :goto_0

    :cond_8
    move-wide v12, v2

    move-wide v1, v12

    move-object v3, v4

    goto/16 :goto_2
.end method

.method public getPreviewController()Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->previewController:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;

    return-object v0
.end method

.method protected getPreviewViewSize()Landroid/graphics/Point;
    .locals 2

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->isCameraWHSwitched()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->previewSize:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->previewSize:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->previewSize:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->previewSize:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method

.method public handleTouchFocus()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->isPreviewRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->a(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->c()V

    :cond_0
    return-void
.end method

.method protected isCameraRotated()Z
    .locals 2

    iget v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->cameraDisplayRotation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->cameraDisplayRotation:I

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->cameraDisplayRotation:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isCameraWHSwitched()Z
    .locals 2

    iget v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->cameraDisplayRotation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->cameraDisplayRotation:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->c:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    iput-boolean v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->c:Z

    invoke-virtual {p0, v1}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    sub-int v3, p4, p2

    sub-int v1, p5, p3

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->previewSize:Landroid/hardware/Camera$Size;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->getPreviewViewSize()Landroid/graphics/Point;

    move-result-object v0

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    :goto_0
    invoke-static {v2, v0, v3, v1}, Lcom/alipay/mobile/security/securitycommon/Utilz;->a(IIII)Landroid/graphics/RectF;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "box: width,height onLayout(l,t,r,b):"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, v0, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-virtual {v4, v1, v2, v3, v0}, Landroid/view/View;->layout(IIII)V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    move v2, v3

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->resolveSize(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->resolveSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->setMeasuredDimension(II)V

    if-lez v0, :cond_0

    if-lez v1, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->determineCameraSize(II)V

    :cond_0
    return-void
.end method

.method protected preparePreview(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected restartPreview()V
    .locals 0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->stopPreview()V

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->startPreview()V

    return-void
.end method

.method public setCallback(Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->d:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraCallback;

    return-void
.end method

.method protected setCameraFlashMode(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_0
    return-void
.end method

.method public setPreviewController(Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->previewController:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;

    return-void
.end method

.method protected setTouchFocusArea(Landroid/graphics/Rect;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v1

    if-lez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected startPreview()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->isPreviewRunning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->previewSize:Landroid/hardware/Camera$Size;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->pictureSize:Landroid/hardware/Camera$Size;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->c:Z

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->requestLayout()V

    iput-boolean v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->isPreviewRunning:Z

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->a(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "auto"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->previewSize:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->previewSize:Landroid/hardware/Camera$Size;

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->pictureSize:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->pictureSize:Landroid/hardware/Camera$Size;

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startPreview previewSize(width,height): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->previewSize:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->previewSize:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startPreview pictureSize(width,height): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->pictureSize:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->pictureSize:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->d:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->d:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraCallback;

    invoke-interface {v0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraCallback;->a()V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected stopPreview()V
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->isPreviewRunning:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->isPreviewRunning:Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "surfaceChanged:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->b:Z

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->isPreviewRunning:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p3, p4}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->determineCameraSize(II)V

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->startPreview()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->restartPreview()V

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->preparePreview(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->b:Z

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->stopPreview()V

    :cond_0
    return-void
.end method

.method protected switchToCamera(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->attachCamera(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->b()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public takePicture(Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$TakePictureCallback;)V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$1;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$1;-><init>(Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$TakePictureCallback;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->a(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->camera:Landroid/hardware/Camera;

    new-instance v2, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$2;

    invoke-direct {v2, p0, v0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$2;-><init>(Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;Landroid/hardware/Camera$PictureCallback;)V

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->camera:Landroid/hardware/Camera;

    new-instance v2, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$3;

    invoke-direct {v2, p0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$3;-><init>(Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected validateAttachCamera(I)Z
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->camera:Landroid/hardware/Camera;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->cameraId:I

    if-eq v1, p1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
