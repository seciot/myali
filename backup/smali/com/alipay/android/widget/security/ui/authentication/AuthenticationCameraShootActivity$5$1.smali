.class Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$5$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$TakePictureCallback;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$5;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$5;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$5$1;->a:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$5$1;->a:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$5;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$5;->a:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    const-string/jumbo v1, "\u62cd\u7167\u5931\u8d25"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->toast(Ljava/lang/String;I)V

    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$5$1;->a:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$5;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$5;->a:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->a(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;

    move-result-object v0

    iget v0, v0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->a:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$5$1;->a:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$5;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$5;->a:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-virtual {v0, p1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->a(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$5$1;->a:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$5;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$5;->a:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->a(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->a(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$5$1;->a:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$5;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$5;->a:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->a(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;

    move-result-object v0

    iget v0, v0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$5$1;->a:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$5;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$5;->a:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-virtual {v0, p1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->b(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$5$1;->a:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$5;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$5;->a:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->a(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->a(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0
.end method
