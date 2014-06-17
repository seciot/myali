.class Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$9;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$9;->a:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$9;->a:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->i(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
