.class public final Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity_;
.super Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;


# instance fields
.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity_;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->a()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity_;Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity$FragId;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->a(Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity$FragId;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/security/authcenter/ui/i;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/authcenter/ui/i;-><init>(Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity$FragId;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity_;->b:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/authcenter/ui/h;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/h;-><init>(Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity_;Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity$FragId;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->aB:I

    invoke-super {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->setContentView(I)V

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

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity_;->onBackPressed()V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->setContentView(I)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
