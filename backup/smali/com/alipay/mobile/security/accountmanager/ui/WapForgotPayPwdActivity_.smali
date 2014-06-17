.class public final Lcom/alipay/mobile/security/accountmanager/ui/WapForgotPayPwdActivity_;
.super Lcom/alipay/mobile/security/accountmanager/ui/WapForgotPayPwdActivity;


# instance fields
.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/WapForgotPayPwdActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/WapForgotPayPwdActivity_;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/accountmanager/ui/WapForgotPayPwdActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/security/accountmanager/ui/WapForgotPayPwdActivity;->b()V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/security/accountmanager/ui/WapForgotPayPwdActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/security/accountmanager/ui/WapForgotPayPwdActivity;->c()V

    return-void
.end method

.method static synthetic c(Lcom/alipay/mobile/security/accountmanager/ui/WapForgotPayPwdActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/security/accountmanager/ui/WapForgotPayPwdActivity;->d()V

    return-void
.end method

.method private e()V
    .locals 1

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->b:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/WapForgotPayPwdActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APProgressBar;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/WapForgotPayPwdActivity_;->b:Lcom/alipay/mobile/commonui/widget/APProgressBar;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->a:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/WapForgotPayPwdActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APWebView;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/WapForgotPayPwdActivity_;->a:Lcom/alipay/mobile/commonui/widget/APWebView;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/WapForgotPayPwdActivity_;->a()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/WapForgotPayPwdActivity_;->c:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/dt;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/accountmanager/ui/dt;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/WapForgotPayPwdActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/WapForgotPayPwdActivity_;->c:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/du;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/accountmanager/ui/du;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/WapForgotPayPwdActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final d()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/ui/dv;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/accountmanager/ui/dv;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/WapForgotPayPwdActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/WapForgotPayPwdActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->ba:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/WapForgotPayPwdActivity_;->setContentView(I)V

    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/WapForgotPayPwdActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/WapForgotPayPwdActivity_;->e()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/WapForgotPayPwdActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/WapForgotPayPwdActivity_;->e()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/accountmanager/ui/WapForgotPayPwdActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/WapForgotPayPwdActivity_;->e()V

    return-void
.end method
