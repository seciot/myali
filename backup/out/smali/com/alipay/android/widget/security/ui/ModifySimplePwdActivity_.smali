.class public final Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity_;
.super Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;


# instance fields
.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity_;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->a()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity_;Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$FragId;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->a(Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$FragId;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    new-instance v0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity_$2;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity_$2;-><init>(Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$FragId;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity_;->c:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity_$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity_$1;-><init>(Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity_;Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$FragId;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->aL:I

    invoke-super {p0, v0}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->setContentView(I)V

    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-static {}, Lcom/googlecode/androidannotations/api/SdkVersionHelper;->getSdkInt()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity_;->onBackPressed()V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->setContentView(I)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
