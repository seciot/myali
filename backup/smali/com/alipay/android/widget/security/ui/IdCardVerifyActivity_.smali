.class public final Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity_;
.super Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;


# instance fields
.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity_;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->c()V

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->b()V

    return-void
.end method

.method private d()V
    .locals 1

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->ge:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity_;->b:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->w:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity_;->a:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity_;->a()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    new-instance v0, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity_$3;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity_$3;-><init>(Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity_;->d:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity_$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity_$1;-><init>(Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->N:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity_;->setContentView(I)V

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

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity_;->onBackPressed()V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity_;->d()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity_;->d()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity_;->d()V

    return-void
.end method
