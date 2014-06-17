.class Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$7;->a:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$7;->a:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->a(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;

    move-result-object v0

    iget v0, v0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->a:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$7;->a:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$7;->a:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->g(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->a(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;Landroid/graphics/Bitmap;I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$7;->a:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->a(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->a(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$7;->a:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->a(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;

    move-result-object v0

    iget v0, v0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$7;->a:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$7;->a:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->h(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->a(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method
