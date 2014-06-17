.class public final Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt_;
.super Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;


# instance fields
.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt_;->f:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;->c()V

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;->b()V

    return-void
.end method

.method private d()V
    .locals 1

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->cO:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APInputBox;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt_;->a:Lcom/alipay/mobile/commonui/widget/APInputBox;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->cy:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt_;->b:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt_;->a()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    new-instance v0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt_$2;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt_$2;-><init>(Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt_;->f:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt_$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt_$1;-><init>(Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->bh:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt_;->setContentView(I)V

    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;->setContentView(I)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt_;->d()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt_;->d()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt_;->d()V

    return-void
.end method
