.class Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$8;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$8;->a:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$8;->a:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->e(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->handleTouchFocus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method
